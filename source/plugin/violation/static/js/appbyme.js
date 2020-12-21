
//�������������ܰ�ť������
var TOPBAR_USERINFO = 'userinfo';
var TOPBAR_SEARCH = 'search';
var TOPBAR_SIGN = 'sign';
var TOPBAR_SCAN = 'scan';
var TOPBAR_FASTTEXT = 'fasttext';
var TOPBAR_FASTIMAGE = 'fastimage';
var TOPBAR_FASTCAMERA = 'fastcamera';
var TOPBAR_FASTAUDIO = 'fastaudio';
var TOPBAR_WEBAPP = 'webapp';
var TOPBAR_REFRESH = 'refresh';
var TOPBAR_BROWSER = 'browser';
var TOPBAR_COPY = 'copy';
var TOPBAR_SHARE = 'share';
var TOPBAR_ACTION = 'action';

//����˷��������룩
function connectSQJavascriptBridge(callback) {
    if (window.AppbymeJavascriptBridge) {
        window.sq = AppbymeJavascriptBridge;
        callback(AppbymeJavascriptBridge)
    } else {
        document.addEventListener('connectAppbymeJavascriptBridge', function() {
            window.sq = AppbymeJavascriptBridge;
            callback(AppbymeJavascriptBridge)
        }, false)
    }
}

sq3 = {

    /**
     * ��ӡ
     */
    toast: function(p) {
        window.sq.utils.toBridge("toast", {
            text: p.text,
            isLong: (p.isLong == undefined) ? false : (p.isLong ? true : false),
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },
    /**
     * ����
     */
    share: function(p) {
    	window.sq.utils.toBridge("share2", {
    		type: p.type, // �������ͣ�wechat,qq,weibo,facebook,qqzone,wechattimeline,all
    		title: p.title, // �������
    		content: p.content, // ��������
    		url: p.url, // ����URL
    		picUrl: p.picUrl, // ����ͼƬURL
    		topicId: p.topicId, // �����ȥ����ID
            aid: p.aid, //�����ȥ������ID
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    /**
     * �ɷ������ͣ�["wechat","qq","weibo","facebook","qqzone","wechattimeline"]
     */
    shareTypes: function(p) {
    	window.sq.utils.toBridge("shareTypes", {
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    /**
     * �ظ�����
     * ����ظ����Ͱ�ťbeforeAsyncProcess����ֵ��
     * data = {
     *     content: "�ظ�����",
     *     locationStr: "����λ����Ϣ",
     *     longitude: "����",
     *     latitude: "γ��",
     *     isOpenLocation: boolean, // �Ƿ�����λ
     *     audioPath: "/storage/emulated/0/mobcent/com.goyoo.mobclient/cache/audio/1474188493403.mp3", // ¼����ű���·��
     *     audioLen: 2, // ¼���ļ�����
     *     pictures: [file:///storage/emulated/0/DCIM/Screenshots/Screenshot_2016-07-28-11-46-18_com.pili.pldroid.streaming.camera.demo.png, file:///storage/emulated/0/DCIM/Screenshots/Screenshot_2016-07-28-11-46-18_com.pili.pldroid.streaming.camera.demo.png], // ͼƬ��ű���·��
     *     userIds: [336, 517]
     * };
     */
    reply: function(p) {
    	window.sq.utils.toBridge("reply", {
    	    aid: p.aid,//����ID
    		boardId: p.boardId, // ���ID
    		topicId: p.topicId, // ����ID
    		toReplyId: p.toReplyId, // ���õĻظ�ID
    		isQuote: p.isQuote, // �Ƿ�����
    		isHide: p.isHide, // �Ƿ����ػظ���true: ���ػظ���false: �򿪻ظ���
    		beforeAsyncProcess: p.beforeAsyncProcess, // �첽����ǰ����������
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    /**
     * Ԥ��ͼƬ
     */
    previewImage: function(p) {
    	window.sq.utils.toBridge("previewImage", {
    		urls: p.urls, // ͼƬ��ַ�б��磺["http://1.jpg", "http://2.jpg", "http://3.jpg", "http://4.jpg", "http://5.jpg"]
    		currUrl: p.currUrl, // ��ǰչʾ��ͼƬ���磺"http://3.jpg"
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    /**
     * �򿪻��������б�
     */
    startTalkTopic: function(p) {
    	window.sq.utils.toBridge("startTalkTopic", {
    		topicId: p.topicId,
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    /**
     * ��˽�����촰��
     */
    startChat: function(p) {
        window.sq.utils.toBridge("startChat", {
            userId: p.userId,
            userName:p.userName,
            userAvator:p.userAvator,
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    }, 

    /**
     * ��ͼƬѡ����
     */
    startPhotoUpload: function(p) {
        window.sq.utils.toBridge("startPhotoUpload", {
            moduleType: p.moduleType,
            boardId: p.boardId,
            albumId: p.albumId,
            beforeAsyncProcess: p.beforeAsyncProcess,
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    },

    publish: function(p) {
        window.sq.utils.toBridge("publish", {
            boardId: p.boardId,
            boardName: p.boardName,
            classifyId: p.classifyId,
            hasTitle: p.hasTitle,
            talkId: p.talkId,
            tId: p.tId,
            title: p.title,
            success: p.success,
            error: p.error,
            complete: p.complete
        });
    }

};
