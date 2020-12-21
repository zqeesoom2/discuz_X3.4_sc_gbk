<?php
/**
 *
 * Created by PhpStorm.
 * User: sunbing
 * Date: 2017/8/14
 * Time: 10:19
 */

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}
require_once(DISCUZ_ROOT . './source/plugin/qfmobile/CJSON.php');

class qfmobile
{

    public function checkmobile()
    {
        global $_G;
        if ($_G['uid'] > 0) {
            $res = DB::result_first('SELECT phone from %t where uid=%d', array('phonebind', $_G['uid']));
            if ($res) return $res;
        }
        return false;
    }

    /**
     * @param string $mobile
     * @param $verifycode
     * @return array
     */
    public function sendsms($mobile = '', $verifycode)
    {
        global $_G;
        $data = array(
            "ret" => 1,
            "text" => ''
        );

        if ($mobile && $verifycode) {
            $verifyCode = $verifycode;
            $content = mb_convert_encoding('您正在进行手机注册的操作，你的验证码为：' . $verifyCode . '【验证码】', 'GBK', 'UTF-8');
            $param = array(
                'mobile' => $mobile,
                'content' => $content
            );

            //云服务器接口域名:
            $qianfan_config = DB::result_first("SELECT value FROM %t WHERE name=%s", array('qianfan_plugin', 'config'));
            if( !empty($qianfan_config) ) {
                $qianfan_config = json_decode($qianfan_config, true);
                if( !empty($qianfan_config['cloud_secretkey']) && !empty($qianfan_config['cloud_host']) ) {
                    $url = trim($qianfan_config['cloud_host'], ' /') . '/api1_2/site/send-message';
                    $secret_key = trim($qianfan_config['cloud_secretkey']);
                    $response = $this->_getResponse($secret_key, $url, $param);
                    $response = CJSON::decode($response);

                    if ($response['ret'] === 0) {
                        $data['ret'] = 0;
                        $data['text'] = '发送成功';
                    } else {
                        $data['text'] = $response['text'];

                        // sendsms-error-log
                        if(!empty($data['text'])) {
                            //  异地判断
                            if(preg_match('/当前支持注册区域.*/', $data['text'], $matchs)) {
                                $data['text'] = $matchs[0];
                            }
                            if(!empty($data['text']) && is_int(stripos($data['text'], ':'))) {
                                $data['text'] = str_replace(':', '-', $data['text']);
                            }
                            if( !defined('IN_MOBILE') && strtoupper($_G['charset']) != 'UTF-8' ) {
                                $data['text'] = mb_convert_encoding($data['text'], 'GBK', 'UTF-8');
                            }
                            writelog('qianfan_mobile', var_export($data, true));
                        }

                    }

                }
            }

        }
        return $data;
    }

    /**
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

        curl_setopt($curlHandle, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0); //添加http请求版本
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