<?php

/**
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/23
 * Time: 9:52
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

class BindmobileController extends PluginController
{
    public $scriptPath;

    public $open_image_auth = 0;

    public function init()
    {
        parent::init();
        $pathAry = array(
            '.', 'source', 'plugin', 'qianfan', 'static', 'bindmobile', 'js', ''
        );
        $this->scriptPath = implode(DIRECTORY_SEPARATOR, $pathAry);

        if (CCaptcha::checkRequirements()) {
            $this->open_image_auth = 1;
        }
    }

    public function actions()
    {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
                'minLength' => 4,
                'maxLength' => 4,
                'width' => 120,
                'height' => 40,
            ),
        );
    }

    public function actionIndex()
    {
        global $_G;
        // 图片验证码
        $codeUrl = Yii::app()->request->getUrl();
        $codeUrl = str_replace('bindmobile/index', 'bindmobile/captcha', $codeUrl);
        $hostInfo = Yii::app()->request->getHostInfo();
        $codeUrl = $hostInfo . $codeUrl;
        $this->render('index', array('codeUrl' => $codeUrl));
    }

    public function actionSendSms()
    {
        if (!Yii::app()->request->isPostRequest || !Yii::app()->request->isAjaxRequest) {
            throw new CHttpException('404');
        }

        global $_G;

        $mobile = WebHelper::getPost("mobile", '');
        $imageCode = WebHelper::getPost('image_code', '');

        $data = array(
            "ret" => 1,
            "text" => '发送失败'
        );

        // 手机合法验证
        if (!Tool::getInstance()->VerifyMobileNumber($mobile, 1)) {
            $data['text'] = "请填写正确的手机号";
        }

        if (!$_G['uid']) {
            $data['text'] = "请先登录";
        }

        // 验证图片验证码 todo
        if (!empty($this->open_image_auth)) {
            $imageCode = trim(strtolower($imageCode));
            if (!$this->createAction('captcha')->validate($imageCode, true)) {
                $data['text'] = "图片验证码填写不正确";
                echo $this->ajaxResponse($data);
                Yii::app()->end(0);
            }
        }

        // 手机号是否绑定用户
        if (Mobile::fetchUidByMobile($mobile)) {
            $data['text'] = '该手机号已被绑定';
        } elseif (!DB::fetch_first("SELECT * FROM %t WHERE uid=%d LIMIT 1", array("common_member", $_G['uid']))) {
            $data['text'] = '没有匹配到用户名，请联系管理员';
        } else {
            // 生成验证码
            $verifyCode = random(6, 1);

            $param = array(
                'mobile' => $mobile,
                'content' => mb_convert_encoding('您正在进行绑定手机号的操作，你的验证码为：' . $verifyCode . '【验证码】', 'GBK', 'UTF-8')
            );

            $url = trim(Yii::app()->params['cloud_host'], ' /') . '/api1_2/site/send-message';
            $secret_key = Yii::app()->params['cloud_secretkey'];
            $response = $this->_getResponse($secret_key, $url, $param);
            $response = CJSON::decode($response);
            if (isset($response)) {
                if ($response['ret'] === 0) {
                    $data['ret'] = 0;
                    $data['text'] = '发送成功';

                    // 记录发送验证码
                    $params = array(
                        'phone' => $mobile,
                        'verifycode' => $verifyCode,
                        'ip' => $_G['clientip'],
                        'status' => 2,
                        'dateline' => TIMESTAMP,
                    );
                    DB::insert('qfmobile_verifycode', $params);

                } else {
                    $data['text'] = $response['text'];
                }
            }
        }

        echo $this->ajaxResponse($data);
        Yii::app()->end(0);
    }

    public function actionBind()
    {
        if (!Yii::app()->request->isPostRequest || !Yii::app()->request->isAjaxRequest) {
            throw new CHttpException('404');
        }

        global $_G;
        $mobile = WebHelper::getPost("mobile", "");
        $yzm = WebHelper::getPost("yzm", "");

        if (!$mobile || !$yzm || !$_G['uid']) {
            return false;
        }
        $data = array(
            'ret' => 1,
            'text' => '验证码不正确'
        );

        if ($this->_validateYzm($mobile, $yzm)) {
            Mobile::writeMobile($_G['uid'], $mobile);
//            if (DB::result_first("SELECT uid FROM %t WHERE uid=%d LIMIT 1", array("phonebind", $_G['uid']))) {
//                DB::update("phonebind", array("phone" => $mobile), "uid=" . $_G['uid']);
//            } else {
//                DB::insert("phonebind", array("uid" => $_G['uid'], "phone" => $mobile, "dateline" => TIMESTAMP));
//            }

            // 同步到app
            $this->_updateApp($_G['uid'], $mobile);

            $data['ret'] = 0;
            $data['text'] = '绑定成功!';
        }

        echo $this->ajaxResponse($data);
        Yii::app()->end(0);
    }

    private function _validateYzm($mobile, $code)
    {
        if (!$mobile || !$code) {
            return false;
        }

        $res = DB::fetch_first("SELECT * FROM %t WHERE phone=%s AND status>0 ORDER BY id DESC LIMIT 1", array('qfmobile_verifycode', $mobile));
        if (isset($res) && $code == $res['verifycode'] && (TIMESTAMP - $res['dateline'] < 120)) {
            DB::update("qfmobile_verifycode", array("status" => 0), array('id' => $res['id']));
            return true;
        }
        return false;
    }

    /**
     * 绑定手机后同步到app
     *
     * @param $uid
     * @param $mobile
     */
    private function _updateApp($uid, $mobile)
    {
        if ($uid && $mobile) {
            $url = trim(Yii::app()->params['cloud_host'], ' /') . '/api1_2/site/update-usermobile';
            $secret_key = Yii::app()->params['cloud_secretkey'];
            $param = array(
                'uid' => $uid,
                'mobile' => $mobile
            );

            try {
                $this->_getResponse($secret_key, $url, $param);
            } catch (Exception $e) {
                Yii::log(var_export('UPDATE-USERMOBILE:UID:' . $uid . '-MOBILE:' . $mobile, true));
            }
        }
    }

    /**
     * 请求qianfan-api
     *
     * @param $secret_key
     * @param $url
     * @param $get_params
     * @param array $post_data
     * @return bool|mixed
     */
    private function _getResponse($secret_key, $url, $get_params, $post_data = array())
    {
        $timeout = 5;
        $nonce = rand(10000, 99999);
        $timestamp = time();
        $array = array($nonce, $timestamp, $secret_key);
        sort($array, SORT_STRING);
        $token = md5(implode($array));
        $params['nonce'] = $nonce;
        $params['timestamp'] = $timestamp;
        $params['token'] = $token;
        $params = array_merge($params, $get_params);
        $url .= '?';
        foreach ($params as $k => $v) {
            $url .= $k . '=' . $v . '&';
        }
        $url = rtrim($url, '&');
        $curlHandle = curl_init();
        curl_setopt($curlHandle, CURLOPT_URL, $url);
        curl_setopt($curlHandle, CURLOPT_HEADER, 0);
        curl_setopt($curlHandle, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curlHandle, CURLOPT_USERAGENT, 'iphone, qianfan');

        curl_setopt($curlHandle, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curlHandle, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curlHandle, CURLOPT_POST, count($post_data));
        curl_setopt($curlHandle, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($curlHandle, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($curlHandle, CURLOPT_TIMEOUT, $timeout);

        $data = curl_exec($curlHandle);
        $status = curl_getinfo($curlHandle, CURLINFO_HTTP_CODE);
        if ($status != 200) {
            return false;
        }
        curl_close($curlHandle);
        return $data;
    }


}