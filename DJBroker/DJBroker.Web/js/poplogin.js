//$("#form1")[0].reset();
function enter(evt, server) {
    if (evt.keyCode) {
        var key = evt.keyCode;
    } else if (evt.which) {
        var key = evt.which;
    }
    if (key == 13) {	//13=enter
        sign_in(server);
    }
}
function loading() {
    $.isLoading({ text: "��س����ѡ����..." });
}
function isValidEmailAddress(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
};
function sign_in(server) {

    $("#alert").html("����");
    var email = $("#email").val().replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
    var password = $("#password").val().replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ

    if (!email) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>��س��к������</span>");
        $("#email").focus();
        return false;
    } else {
        var status = isValidEmailAddress(email);
        if (status == false) {
            $("#alert").html("<span style='color:red !important; font-weight:bold;'>�ٻẺ��������١��ͧ</span>");
            $("#email").focus();
            return false;
        }
    }

    if (!password) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>��س��к����ʼ�ҹ</span>");
        $("#password").focus();
        return false;
    }


    $.isLoading({ text: "��س����ѡ����..." });

    var data = $("#formLogin").serialize();
    $.ajax({
        url: "/login_sub.php",
        type: "post",
        data: data,
        success: function (res) {
            res = res.replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
            if (res == "ws_login") {	// ����� leadid ��� login
                $.ajax({
                    url: "/login_ws_login.php",
                    type: "post",
                    data: data,
                    success: function (res) {
                        res = res.replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
                        if (res == "Fail") {
                            $.isLoading("hide");
                            $.magnificPopup.open({
                                items: {
                                    src: '<div class="alert_popup">�������ö��ҹ�к���㹢�й��<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                },
                                type: 'inline',
                                closeOnBgClick: false,
                                showCloseBtn: false
                            });
                            return false;
                        } else if (res == "Pass") {
                            window.location = "/member.php";
                        } else {
                            $.isLoading("hide");
                            $.magnificPopup.open({
                                items: {
                                    src: '<div class="alert_popup">' + res + '<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                },
                                type: 'inline',
                                closeOnBgClick: false,
                                showCloseBtn: false
                            });
                            return false;
                        }
                    }
                });
            } else if (res == "ws_register") {		// ����ѧ����� leadid ���ŧ����¹
                $.ajax({
                    url: "/login_ws_register.php",
                    type: "post",
                    data: data,
                    success: function (res) {
                        res = res.replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
                        if (res == "Fail") {
                            $.isLoading("hide");
                            $.magnificPopup.open({
                                items: {
                                    src: '<div class="alert_popup">�������ö��ҹ�к���㹢�й��<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                },
                                type: 'inline',
                                closeOnBgClick: false,
                                showCloseBtn: false
                            });
                            return false;
                        } else if (res == "Pass") {
                            $.ajax({
                                url: "/login_ws_login.php",
                                type: "post",
                                data: data,
                                success: function (res) {
                                    res = res.replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
                                    if (res == "Fail") {
                                        $.isLoading("hide");
                                        $.magnificPopup.open({
                                            items: {
                                                src: '<div class="alert_popup">�������ö��ҹ�к���㹢�й��<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                            },
                                            type: 'inline',
                                            closeOnBgClick: false,
                                            showCloseBtn: false
                                        });
                                        return false;
                                    } else if (res == "Pass") {
                                        window.location = "/member.php";
                                    } else {
                                        $.isLoading("hide");
                                        $.magnificPopup.open({
                                            items: {
                                                src: '<div class="alert_popup">' + res + '<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                            },
                                            type: 'inline',
                                            closeOnBgClick: false,
                                            showCloseBtn: false
                                        });
                                        return false;
                                    }
                                }
                            });
                        } else {
                            $.isLoading("hide");
                            $.magnificPopup.open({
                                items: {
                                    src: '<div class="alert_popup">' + res + '<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                                },
                                type: 'inline',
                                closeOnBgClick: false,
                                showCloseBtn: false
                            });
                            return false;
                        }
                    }
                });
            } else {
                $.isLoading("hide");
                $.magnificPopup.open({
                    items: {
                        src: '<div class="alert_popup">' + res + '<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                    },
                    type: 'inline',
                    closeOnBgClick: false,
                    showCloseBtn: false
                });
            }
        }
    });
}




function sign_up() {

    $("#alert").html("����");

    var email = $("#email2").val().replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
    var password1 = $("#password1").val().replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
    var password2 = $("#password2").val().replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ

    if (!email) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>��س��к������</span>");
        $("#email2").focus();
        return false;
    } else {
        var status = isValidEmailAddress(email);
        if (status == false) {
            $("#alert").html("<span style='color:red !important; font-weight:bold;'>�ٻẺ��������١��ͧ</span>");
            $("#email2").focus();
            return false;
        }
    }

    if (!password1) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>��س��к����ʼ�ҹ</span>");
        $("#password1").focus();
        return false;
    }

    if (password1.length < 6) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>���ʼ�ҹ���¡��� 6 �ѡ��</span>");
        $("#password1").focus();
        return false;
    }

    if (password1 != password2) {
        $("#alert").html("<span style='color:red !important; font-weight:bold;'>���ʼ�ҹ�������͹�ѹ</span>");
        $("#password2").focus();
        return false;
    }



    $.isLoading({ text: "��س����ѡ����..." });

    var data = $("#formRegister").serialize();
    $.ajax({
        url: "/signup_sub.php",
        type: "post",
        data: data,
        success: function (res) {
            res = res.replace(/(^\s*)|(\s*$)/g, ""); //�Ѵ��ͧ��ҧ
            if (res == "Pass") {
                $.isLoading("hide");
                $.magnificPopup.open({
                    items: {
                        src: '<div class="alert_popup">�к��������׹�ѹ ��ѧ����Ţͧ��ҹ���Ǥ��<br><br><a href="/mail_verify.php?email=' + email + '" class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                    },
                    type: 'inline',
                    closeOnBgClick: false,
                    showCloseBtn: false
                });
            } else {
                $.isLoading("hide");
                $.magnificPopup.open({
                    items: {
                        src: '<div class="alert_popup">' + res + '<br><br><a class="btn_popup" onclick="$.magnificPopup.close();" >�Դ</a></div>'
                    },
                    type: 'inline',
                    closeOnBgClick: false,
                    showCloseBtn: false
                });
            }
        }
    });

}
