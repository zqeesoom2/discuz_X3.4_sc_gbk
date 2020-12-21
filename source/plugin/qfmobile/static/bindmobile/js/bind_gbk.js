/**
 * Created by sunbing on 2017/8/29.
 */

$(document).ready(function () {
    //发送验证码
    // SEND YZM BTN CLICK
    var enableSend = true;
    // 90SECOND SEND AGAIN
    var counting = 90;
    var csrf_token = $("#_csrf").val();
    $("#send_sms").bind("click", function(){
        var self = this;
        var mobile = $("#mobile").val();
        var imageCode = $("#input_code").val();
        if( !enableSend ){
            return;
        }

        if( !mobile.trim() ){
            alert("请输入手机号码");
            return;
        }

        var reg = /^1[3456789]{1}\d{9}$/;
        if( !reg.test(mobile) ){
            alert("请输入正确的手机号码");
            return;
        }

        if( imageCode=="" && open_image_auth == 1 ){
            alert("请输入图片验证码");
            return;
        }

        // START SEND YZM AJAX REQUEST
        $.ajax({
            "url" : "plugin.php?id=qfmobile:bindmobile&r=bindmobile/sendSms",
            "type" : "POST",
            'dataType' : "json",
            "data" : {
                "mobile" : mobile,
                "image_code" : imageCode,
                "YII_CSRF_TOKEN" : csrf_token
            },
            "success" : function(data){
                if( data["ret"] != 0 ){
                    alert(data["text"]);
                    var time = Date.parse(new Date());
                    var url = code_url+"&random="+time;
                    $('.imgcode').attr('src',url);
                    return;
                }

                enableSend = false;
                $(self).addClass("grey_code");
                $(self).html("重新发送("+ counting +")");
                window.setTimeout(countdown, 1000);
            }
        });
    });

    // NEXT STEP BTN CLICK
    $("#validate_mobile").bind("click", function(){
        var mobile = $("#mobile").val();
        var yzm = $("#yzm").val();
        if( !mobile.trim() ){
            alert("请输入手机号码");
            return;
        }
        var reg = /^1[3456789]{1}\d{9}$/;
        if( !reg.test(mobile) ){
            alert("请输入正确的手机号码");
            return;
        }
        if( !yzm.trim() ){
            alert("请输入验证码");
            return;
        }

        if(mobile && yzm) {
            $.ajax({
                "url" : "plugin.php?id=qfmobile:bindmobile&r=bindmobile/bind",
                "type" : "POST",
                'dataType' : "json",
                "data" : {
                    "mobile" : $("#mobile").val(),
                    "yzm" : $("#yzm").val(),
                    csrf_name : csrf_token

                },
                "success" : function(data) {
                    if( data["ret"] != 0 ) {
                        alert( data["text"] );
                        return;
                    }else {
                        alert( data["text"] );
                        setTimeout(function (){
                            window.close();
                        }, 1000)
                    }
                    $(".index_form").submit();
                }
            });
        }
        return;
    });

    $(".black").bind("click", function(){
        window.close();
    });

    function countdown() {
        if( counting == 0 ) {
            $("#send_sms").html("重新发送");
            $("#send_sms").removeClass("grey_code");
            enableSend = true;
            counting = 90;
            return;
        }
        counting--;
        $("#send_sms").html("重新发送("+ counting +")");
        window.setTimeout(countdown, 1000);
    }

});