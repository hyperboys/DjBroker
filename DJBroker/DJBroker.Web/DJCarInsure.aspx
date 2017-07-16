<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DJCarInsure.aspx.cs" Inherits="DJBroker.Web.Page.DJCarInsure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="robots" content="index,follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DJ Broker | บริษัท ดวงเจริญ โบรคเกอร์</title>
    <meta name="keywords" content="DJBroker, ดวงเจริญ, ประกันภัย, ประกันภัยรถยนต์, ประกันรถยนต์, ประกันชั้น1, พรบออนไลน์, ประกันภัยการเดินทาง, ประกันเดินทาง, โปรโมชั่น">
    <meta name="description" content="ผู้นำด้านที่ปรึกษาประกันภัย ประกันภัยรถยนต์ ประกันภัยเดินทาง ประกันชีวิต ประกันอุบัติเหตุ ที่ปรึกษาด้านประกันภัย โปรโมชั่นผ่อน0% บริการ24ขั่วโมง โทร 1737">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/assets3/style/normalize.css">
    <link rel="stylesheet" href="/assets3/style/jquery-ui.min.css">
    <link rel="stylesheet" href="/assets3/style/jquery-ui.theme.min.css">
    <link rel="stylesheet" href="/assets3/style/testimonial.min.css">
    <link rel="stylesheet" href="/assets3/style/font-awesome.min.css">
    <link rel="stylesheet" href="/assets3/style/jquery.jscrollpane.css">
    <link rel="stylesheet" href="/assets3/style/magnific-popup.min.css">
    <link rel="stylesheet" href="/assets3/style/main.min.css">
    <link rel="stylesheet" href="/assets3/style/css/page/home.css">

    <style>
        #popup_txt {
            font-size: 26px;
        }

        #popup_btn_close {
            margin: auto;
            margin-top: 20px;
            cursor: pointer;
            padding: 3px 20px;
            background-color: #152e82;
            color: #fff;
            display: inline-block;
            border-radius: 10px;
            position: relative;
            right: 50%;
            left: 50%;
            transform: translate(-50%);
        }

        #popup_box {
            padding: 10px 20px 20px 20px;
            font-family: thaisan;
            text-align: left;
            background-color: #fff;
            border-radius: 10px;
            width: 320px;
        }
    </style>
</head>
<body>
    <form id="main" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div class="wraper">
            <div id="header">
                <div class="top-logo">
                    <div class="left">
                        <div class="left divider-line">
                            <a href="/" id="logo" title="logo tqm">
                                <!--<img src="/assets3/images/share/logo.png" alt="TQM">-->
                                <!--<img src="/assets3/images/page_home/logoDJ.png" alt="TQM">-->
                                <img src="/assets3/images/page_home/iconDJ.png" alt="TQM">
                            </a>
                        </div>
                        <!--<a href="tel:1737" class="call">1737</a>-->
                    </div>
                    <div class="menu-top-user right">
                        <ul class="list-item">
                        </ul>
                    </div>
                </div>
                <div class="test">
                    <div class="float-left logo">
                        <a href="/" id="A1" title="logo tqm">
                            <!--<img src="/assets3/images/page_home/logoDJ.png" alt="TQM">-->
                            <img src="/assets3/images/page_home/iconDJ.png" alt="TQM">
                        </a>
                    </div>
                    <div class="float-right">
                        <!--<div class="txt-award-box">
                        <p class="txt-award">รางวัลการันตี</p>
                        <p class="txt-award-sub">การันตีด้วยความเชื่อมั่น 7 รางวัล จาก คปภ</p>
                    </div>
                    <div class="float-left award">
                        <img src="/assets3/images/page_home/award.png" alt="การันตีด้วยความเชื่อมั่น จาก คปภ">
                    </div>
                    <div class="call-box">
                        <a href="tel:1737" title="call tqm">
                            <div class="float-left icon-phone">
                                <img src="/assets3/images/page_home/icon-phone.gif" alt="สายด่วน 1737">
                            </div>
                            <p class="call-text">
                                <span style="color: #f80505;">บริการ 24 ชั่วโมง</span><br>
                                โทร : 1737
                            </p>
                        </a>
                    </div>-->
                    </div>
                </div>

                <div class="menu-top">
                    <!-- main top menu -->
                    <div class="main-menu">
                        <ul class="main container">
                            <li class="main-list"><a href="#" title="สินค้าประกันภัย">สินค้าประกันภัย<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                                <!--<div class="sub">
                                <ul class="container">
                                    <li class="sub-arrow-wrap"><a href="#" title="ประกันภัยรถยนต์">ประกันภัยรถยนต์<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/car_insurance/all" title="ประกันภัยรถยนต์">ประกันภัยรถยนต์</a></li>
                                            <li><a href="/car_insurance/type1" title="ประกันภัยรถยนต์ ชั้น1">ประกันภัยรถยนต์ ชั้น1</a></li>
                                            <li><a href="/car_insurance/type2" title="ประกันภัยรถยนต์ ชั้น2">ประกันภัยรถยนต์ ชั้น2</a></li>
                                            <li><a href="/car_insurance/type2plus" title="ประกันภัยรถยนต์ ชั้น2+">ประกันภัยรถยนต์ ชั้น2+</a></li>
                                            <li><a href="/car_insurance/type3" title="ประกันภัยรถยนต์ ชั้น3">ประกันภัยรถยนต์ ชั้น3</a></li>
                                            <li><a href="/car_insurance/type3plus" title="ประกันภัยรถยนต์ ชั้น3+">ประกันภัยรถยนต์ ชั้น3+</a></li>
                                            <li><a href="/พรบ" title="พรบ.">พรบ.</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-arrow-wrap"><a href="#" title="">ประกันภัยเดินทาง<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/travel_insurance" title="ประกันภัยเดินทาง">ประกันภัยเดินทาง</a></li>
                                            <li><a href="/travel_insurance/msig" title="ประกันภัยเดินทาง MSIG">ประกันภัยเดินทาง MSIG</a></li>
                                            <li><a href="/travel_insurance/axa" title="ประกันภัยเดินทาง AXA">ประกันภัยเดินทาง AXA</a></li>
                                            <li><a href="/travel_insurance/bki" title="ประกันภัยเดินทาง กรุงเทพประกันภัย">ประกันภัยเดินทาง กรุงเทพประกันภัย</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-arrow-wrap"><a href="#" title="ประกันภัยอุบัติเหตุ">ประกันภัยอุบัติเหตุ<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/pa" title="ประกันภัยอุบัติเหตุ">ประกันภัยอุบัติเหตุ</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-arrow-wrap"><a href="#" title="ประกันภัยพิเศษ">ประกันภัยพิเศษ<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/ประกันภัยพิเศษ" title="ประกันภัยพิเศษ">ประกันภัยพิเศษ</a></li>
                                            <li><a href="/promotion/ประกันเสริม MOTOR ADD ON" title="MOTOR ADD ON">MOTOR ADD ON</a></li>
                                            <li><a href="/motorbike" title="ประกันภัยมอเตอร์ไซค์">ประกันภัยมอเตอร์ไซค์</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/insurance/partners" title="บริษัทประกันภัย">บริษัทประกันภัย</a>
                                    </li>
                                </ul>
                            </div>-->
                            </li>
                            <li class="main-list"><a href="#" title="โปรโมชั่น">โปรโมชั่น<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                                <!--<div class="sub">
                                <ul class="container">
                                    <li class="sub-arrow-wrap"><a href="#" title="โปรโมชั่นประกันภัยรถยนต์">โปรโมชั่นประกันภัยรถยนต์<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/promotion/ประกันรถยนต์" title="โปรโมชั่นประกันภัยรถยนต์">โปรโมชั่นประกันภัยรถยนต์</a></li>
                                            <li><a href="/promotion/ประกันภัยมนุษย์เงินเดือน" title="ประกันภัยมนุษย์เงินเดือน">ประกันภัยมนุษย์เงินเดือน</a></li>
                                            <li><a href="/promotion/ประกันรถยนต์มนุษย์เงินเดือน" title="ประกันรถยนต์มนุษย์เงินเดือน">ประกันรถยนต์มนุษย์เงินเดือน</a></li>
                                            <li><a href="/promotion/ประกันรถยนต์" title="ประกันรถยนต์ราคาถูก">ประกันรถยนต์ราคาถูก</a></li>
                                            <li><a href="/promotion/ประกันภัยรถยนต์สำหรับผู้หญิง" title="ประกันรถยนต์สำหรับสุภาพสตรี">ประกันรถยนต์สำหรับสุภาพสตรี</a></li>
                                        </ul>
                                    </li>
                                    <li class="sub-arrow-wrap"><a href="#" title="โปรโมชั่นประกันภัยเดินทาง">โปรโมชั่นประกันภัยเดินทาง<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/promotion/travel" title="โปรโมชั่นประกันภัยเดินทาง">โปรโมชั่นประกันภัยเดินทาง</a></li>
                                            <li><a href="/promotion/ประกันเดินทาง MSIG" title="ประกันภัยเดินทาง MSIG">ประกันภัยเดินทาง MSIG</a></li>
                                            <li><a href="/promotion/TA_Dhipaya" title="ประกันภัยเดินทางทิพยประกันภัย">ประกันภัยเดินทางทิพยประกันภัย</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/promotion/ประกันผ่อนสบาย" title="โปรโมชั่นบัตรเครดิต">โปรโมชั่นบัตรเครดิต</a>
                                    </li>
                                    <li><a href="/promotion" title="โปรโมชั่นทั้งหมด">โปรโมชั่นทั้งหมด</a>
                                    </li>
                                </ul>
                            </div>-->
                            </li>
                            <li class="main-list"><a href="#" title="บริการลูกค้า">บริการลูกค้า<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                                <!--<div class="sub">
                                <ul class="container">
                                    <li class="sub-arrow-wrap"><a href="#" title="บริการลูกค้า">บริการลูกค้า<i class="sub-arrow fa fa-plus"></i></a>
                                        <ul class="subsub">
                                            <li><a href="/tqmservice/tqm24" title="บริการช่วยเหลือ 24 ชั่วโมง 1737">บริการช่วยเหลือ 24 ชั่วโมง 1737</a></li>
                                            <li><a href="/tqmservice/form_discount_camera" title="แบบฟอร์มขอส่วนลดกล้อง">แบบฟอร์มขอส่วนลดกล้อง</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/tqmservice/hospital" title="โรงพยาบาลที่ให้บริการ">โรงพยาบาลที่ให้บริการ</a>
                                    </li>
                                    <li><a href="/tqmservice/payment" title="ช่องทางการชำระเงิน">ช่องทางการชำระเงิน</a>
                                    </li>
                                    <li><a href="/tqmservice/tqmwecareapp" title="TQM We Care Application">TQM We Care Application</a>
                                    </li>
                                    <li><a href="/tqmservice/faq" title="FAQ">FAQ</a>
                                    </li>
                                </ul>
                            </div>-->
                            </li>
                            <!-- <li class="main-list"><a href="#" title="อู่ซ่อมรถ">อู่ซ่อมรถ<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                            <div class="sub">
                                <ul class="container">
                                    <li><a href="/carservice/repair" title="ค้นหาอู่ซ่อมรถ">ค้นหาอู่ซ่อมรถ</a>
                                    </li>
                                    <li><a href="/carservice/inspection" title="ตรวจสภาพรถยนต์ (ตรอ.)">ตรวจสภาพรถยนต์ (ตรอ.)</a>
                                    </li>
                                </ul>
                            </div>
                        </li>-->
                            <!-- <li class="main-list"><a href="#" title="แฟมิลี่คลับ">แฟมิลี่คลับ<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                            <div class="sub">
                                <ul class="container">
                                    <li><a href="/news/familyclubnews" title="ข่าวสารและกิจกรรมแฟมิลี่คลับ">กิจกรรมแฟมิลี่คลับ</a>
                                    </li>
                                    <li><a href="/familyclub/privilege" title="สิทธิประโยชน์ของสมาชิก">สิทธิประโยชน์ของสมาชิก</a>
                                    </li>
                                    <li><a href="/familyclub/prizeannounce" title="ประกาศผลรางวัล">ประกาศผลรางวัล</a>
                                    </li>
                                    <li><a href="/tqmactivity/gallery" title="ภาพกิจกรรม">ภาพกิจกรรม</a>
                                    </li>
                                    <li><a href="/familyclub/freepa" title="ฟรีประกันอุบัติเหตุ">ฟรีประกันอุบัติเหตุ</a>
                                    </li>
                                </ul>
                            </div>
                        </li>-->
                            <li class="main-list"><a href="#" title="ข่าวสารและบทความ">ข่าวสารและบทความ<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                                <!--<div class="sub">
                                <ul class="container">
                                    <li><a href="/news/tqmnews" title="ข่าวจาก TQM">ข่าวจาก TQM</a>
                                    </li>
                                    <li><a href="/blog" title="บทความ">บทความ</a>
                                    </li>
                                </ul>
                            </div>-->
                            </li>
                            <li class="main-list"><a href="#" title="ติดต่อเรา">ติดต่อเรา<span></span><i class="main-sub-arrow fa fa-plus"></i></a>
                                <!--<div class="sub">
                                <ul class="container">
                                    <li><a href="/tqm/contactus" title="ติดต่อเรา">ติดต่อเรา</a>
                                    </li>
                                    <li><a href="/tqm/aboutus" title="เกี่ยวกับเรา">เกี่ยวกับเรา</a>
                                    </li>
                                    <li><a href="/tqm/job" title="สมัครงาน">สมัครงาน</a>
                                    </li>
                                    <li><a href="/tqm/user_report" title="แจ้งปัญหาการใช้งาน">แจ้งปัญหาการใช้งาน</a>
                                    </li>
                                    <li><a href="/tqm/privacy" title="ข้อกำหนดและเงื่อนไขของบริษัท">ข้อกำหนดและเงื่อนไขของบริษัท</a>
                                    </li>
                                </ul>
                            </div>-->
                            </li>
                        </ul>
                    </div>
                    <script>
                        window.fbAsyncInit = function () {
                            FB.init({
                                appId: '440417459475953',
                                xfbml: true,
                                version: 'v2.8'
                            });
                        };

                        (function (d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) return;
                            js = d.createElement(s); js.id = id;
                            js.src = "//connect.facebook.net/th_TH/sdk.js#xfbml=1&version=v2.8";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));

                        function myFacebookLogin() {
                            $.isLoading({ text: 'กรุณารอสักครู่....' });
                            FB.login(function (response) {
                                if (response.authResponse) {
                                    FB.api('/me', { fields: 'id,name,email,picture.type(large),link' }, function (response) {
                                        $.ajax({
                                            url: "/signup_fb_new.php",
                                            type: "post",
                                            data: { id: response.id, name: response.name, email: response.email, picture: response.picture.data.url, link: response.link },
                                            success: function (result) {
                                                $.isLoading("hide");
                                                if (result == "Pass") {
                                                    window.location = "/member.php";
                                                } else {
                                                    $.magnificPopup.open({
                                                        items: {
                                                            src: '<div class="alert_popup">' + result + '<br><br><a href="/signout.php" class="btn_popup" onclick="$.magnificPopup.close(); " >ปิด</a></div>'
                                                        },
                                                        type: 'inline',
                                                        closeOnBgClick: false,
                                                        showCloseBtn: false
                                                    });
                                                }
                                            }
                                        });
                                    });
                                }
                            }, { scope: 'email,public_profile' });
                        }
                    </script>

                </div>

            </div>

            <style>
                .member_menu {
                    display: none !important;
                }

                @media screen and (max-width: 987px) {
                    .member_menu {
                        display: block !important;
                    }
                }

                @media screen and (max-width: 400px) {
                    .alert_popup {
                        width: 280px !important;
                    }
                }

                .alert_popup {
                    font: 25px/25px 'ThaiSan';
                    background: #FFF;
                    border-radius: 10px;
                    padding: 20px;
                    text-align: center;
                    width: 350px;
                    margin: auto;
                }

                .btn_popup {
                    cursor: pointer;
                    background: #152e82;
                    padding: 5px 10px;
                    border-radius: 6px;
                    color: white;
                    width: 50px;
                    margin: auto;
                }

                .close_button {
                    float: right;
                    position: relative;
                    right: -30px;
                    top: -30px;
                }
            </style>
            <script type="text/javascript" src="/js/poplogin.js"></script>
            <script>
                function key_email(evt) {
                    if (evt.keyCode) {
                        var key = evt.keyCode;
                    } else if (evt.which) {
                        var key = evt.which;
                    }

                    //alert(key);
                    // 8= backspace
                    // 45= -
                    // 95= _
                    // 46= .
                    // 64= @

                    if ((key >= 48 && key <= 57) || (key >= 65 && key <= 90) || (key >= 97 && key <= 122) || key == 8 || key == 45 || key == 95 || key == 46 || key == 64) {
                        return true;
                    } else {
                        return false;
                    }
                }

                function key_num(evt) { //number
                    if (evt.keyCode) {
                        var key = evt.keyCode;
                    } else if (evt.which) {
                        var key = evt.which;
                    }
                    //alert(key);
                    if ((key >= 48 && key <= 57) || key == 8) {	//ตัวเลข 48-57 , 8=backspace , 116=f5 , 37="<-" , 39="->" 
                        return true;
                    } else {
                        return false;
                    }
                }

                function key_eng(evt) { //eng
                    if (evt.keyCode) {
                        var key = evt.keyCode;
                    } else if (evt.which) {
                        var key = evt.which;
                    }
                    //alert(key);
                    if ((key >= 65 && key <= 90) || (key >= 97 && key <= 122) || key == 8 || (key >= 48 && key <= 57)) {
                        return true;
                    } else {
                        return false;
                    }
                }
                function alert_msg(txt_alert, close_focus, invoice, citizen) {
                    $.magnificPopup.open({
                        items: {
                            src: "<div class='alert_popup' >" + txt_alert + "<br/><br/><a class='btn_popup' onclick=\"confirm_val('" + invoice + "','" + citizen + "')\" >ปิด</a></div>",
                        },
                        type: 'inline',
                        showCloseBtn: false,
                        focus: 'empty string',
                        closeOnBgClick: false,
                        callbacks: {
                            close: function () {
                                if (close_focus) {
                                    setTimeout(function () {
                                        if (elem_visible) {
                                            $("#" + close_focus).show().focus().hide();
                                        } else {
                                            $("#" + close_focus).focus();
                                        }
                                    }, 100);
                                }
                            }
                        }
                    });
                }

                function confirm_val(invoice, citizen) {
                    $.magnificPopup.close();
                    $.magnificPopup.open({
                        items: {
                            src: '<div class="alert_popup" style="text-align:center;">หมายเลขคำสั่งซื้อ&nbsp;<input type="text" name="invoiceno" id="invoiceno"  value="' + invoice + '" style="border-radius:5px;width:150px;height:30px;" onKeyPress="return key_eng(event);" /><br/><br/>เลขบัตรประชาชน&nbsp;&nbsp;<input type="text" name="citizen" id="citizen" value="' + citizen + '" style="border-radius:5px;width:150px;height:30px;" maxlength="13" onKeyPress="return key_num(event);" /><br><br><a class="btn_popup" onclick="Order_TSR();" >ตกลง</a>&nbsp;&nbsp;<a class="btn_popup" onclick="$.magnificPopup.close();" >ปิด</a></div>'
                        },
                        type: 'inline',
                        closeOnBgClick: false,
                        showCloseBtn: false
                    });

                }

                function Chk_Regis(member) {//เชิญชวนสมัครสมาชิก
                    if (member) {
                        Chk_Order_TSR();
                    } else {
                        $.magnificPopup.open({
                            items: {
                                src: '<div class="alert_popup" style="text-align:center;"><img class="close_button" src="/img/close_button.png" alt="ปิด" style="width:30px; cursor:pointer;" onclick="Chk_Order_TSR();">สมัครสมาชิกเพื่อรับสิทธิพิเศษอื่น ๆ<br/>อีกมากมาย<br/><br/><a class="btn_popup" onclick="Regis_member()" >สมัครสมาชิก</a></div>'
                            },
                            type: 'inline',
                            closeOnBgClick: false,
                            showCloseBtn: false
                        });
                    }

                }

                function Regis_member() {//สมัครสมาชิก
                    $.magnificPopup.close();
                    $(".show_popup").click();
                }

                function Chk_Order_TSR() {//กรอกข้อมูล
                    $.magnificPopup.open({
                        items: {
                            src: '<div class="alert_popup" style="text-align:center;">หมายเลขคำสั่งซื้อ&nbsp;<input type="text" name="invoiceno" id="invoiceno"  value="" style="border-radius:5px;width:150px;height:30px;" onKeyPress="return key_eng(event);" /><br/><br/>เลขบัตรประชาชน&nbsp;&nbsp;<input type="text" name="citizen" id="citizen" value="" style="border-radius:5px;width:150px;height:30px;" maxlength="13" onKeyPress="return key_num(event);" /><br/><br/><a class="btn_popup" onclick="Order_TSR();" >ตกลง</a>&nbsp;&nbsp;<a class="btn_popup" onclick="$.magnificPopup.close();" >ปิด</a></div>'
                        },
                        type: 'inline',
                        closeOnBgClick: false,
                        showCloseBtn: false
                    });
                }

                function Order_TSR() {//แสดงข้อมูล Order Tracking TSR
                    var invoiceno = $("#invoiceno").val().replace(/[\W]/g, ""); //ตัดช่องว่าง.replace(/[\W]/g,"")

                    var citizen = $("#citizen").val().replace(/(^\s*)|(\s*$)/g, ""); //ตัดช่องว่าง
                    if (invoiceno == "") {
                        alert_msg("กรุณากรอกหมายเลขคำสั่งซื้อ", 'invoiceno', invoiceno, citizen);
                        return false;
                    }
                    if (citizen == "") {
                        alert_msg("กรุณากรอกเลขบัตรประชาชน", 'citizen', invoiceno, citizen);
                        return false;
                    }
                    if (citizen.length != 13) {
                        alert_msg("บัตรประชาชนลูกค้าไม่ครบ 13 หลัก", 'citizen', invoiceno, citizen);
                        return false;
                    }
                    if (citizen != "" && citizen.length == 13) {
                        for (var i = 0, sum = 0; i < 12; i++) {
                            sum += parseFloat(citizen.charAt(i)) * (13 - i);
                        }
                        if ((11 - sum % 11) % 10 != parseFloat(citizen.charAt(12))) {
                            alert_msg("เลขบัตรประชาชนไม่ถูกต้อง", 'citizen', invoiceno, citizen);
                            return false;
                        } else {
                            $.magnificPopup.close();
                            window.location = "/order_status2.php?flg=INVOICENO&OrderId=" + invoiceno + "&id=" + citizen;
                        }
                    }
                }
            </script>
            <!-- banner -->

            <div id="content">
                <!-- banner -->
                <!--<div style="display: none;">

                <a href="" class="slide-img">
                    <img id="slide-img-160" class="img-slide" src="/assets/images/page_promotion/upload/index_slide_160.png" alt="ประกันรถยนต์ชั้น 1 วิริยะ" title="ประกันรถยนต์ชั้น 1 วิริยะ" onclick="window.location='https://www.tqm.co.th/promotion/viriyah_type1';"></a>

                <a href="" class="slide-img">
                    <img id="slide-img-151" class="img-slide" src="/assets/images/page_promotion/upload/index_slide_151.png" alt="ประกันภัยรถยนต์ชั้น1 ราคา 6500 บาท" title="ประกันภัยรถยนต์ชั้น1 ราคา 6500 บาท" onclick="window.location='/promotion/Type1_BigSurprise';"></a>

                <a href="" class="slide-img">
                    <img id="slide-img-159" class="img-slide" src="/assets/images/page_promotion/upload/index_slide_159.png" alt="ประกันรถยนต์ชั้น3+" title="ประกันรถยนต์ชั้น3+" onclick="window.location='https://www.tqm.co.th/promotion/MTI552';"></a>

                <a href="" class="slide-img">
                    <img id="slide-img-146" class="img-slide" src="/assets/images/page_promotion/upload/index_slide_146.png" alt="เปรียบเทียบรถ 40 บริษัท" title="เปรียบเทียบรถ 40 บริษัท" onclick="window.location='/promotion/%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B8%A3%E0%B8%96%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C';"></a>

                <a href="" class="slide-img">
                    <img id="slide-img-144" class="img-slide" src="/assets/images/page_promotion/upload/index_slide_144.jpg" alt="ประกันรถยนต์มนุษย์เงินเดือน" title="ประกันรถยนต์มนุษย์เงินเดือน" onclick="window.location='/promotion/%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B8%A3%E0%B8%96%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C%E0%B8%A1%E0%B8%99%E0%B8%B8%E0%B8%A9%E0%B8%A2%E0%B9%8C%E0%B9%80%E0%B8%87%E0%B8%B4%E0%B8%99%E0%B9%80%E0%B8%94%E0%B8%B7%E0%B8%AD%E0%B8%99';"></a>

                <style>
                    .img-slide {
                        width: 100%;
                    }

                    @media screen and (max-width: 768px) {
                        #slide-img-160 {
                            content: url("/assets/images/page_promotion/upload/index_slide_160_mobile.png");
                        }

                        #slide-img-151 {
                            content: url("/assets/images/page_promotion/upload/index_slide_151_mobile.png");
                        }

                        #slide-img-159 {
                            content: url("/assets/images/page_promotion/upload/index_slide_159_mobile.png");
                        }

                        #slide-img-146 {
                            content: url("/assets/images/page_promotion/upload/index_slide_146_mobile.png");
                        }

                        #slide-img-144 {
                            content: url("/assets/images/page_promotion/upload/index_slide_144_mobile.jpg");
                        }
                    }
                </style>
            </div>
            <div class="slide">
                <div class="cycle-slideshow"
                    data-cycle-fx="fade"
                    data-cycle-swipe="true"
                    data-cycle-swipe-fx="fade"
                    data-cycle-center-horz="true"
                    data-cycle-center-vert="true"
                    data-cycle-timeout="9000"
                    data-cycle-pager=".pager"
                    data-cycle-pager-template="<a href=#><i class='fa fa-circle'></i></a>"
                    data-cycle-auto-height="container"
                    data-cycle-slides=">a">
                </div>
                <div class="pager"></div>
            </div>-->
            </div>

            <!-- Home tab -->
            <div id="tab-container" class="tab-container_r3 container">
                <!-- <ul class="home-tab">
                <li><a href="/" class="car homeActive" data-tabs="tab1"><span>ประกันภัยรถยนต์</span></a></li>
                <li><a href="/พรบ" class="act" data-tabs="tab2"><span>พรบ.</span></a></li>
                <li><a href="/travel_insurance" class="travel" data-tabs="tab3"><span>ประกันภัยเดินทาง </span></a></li>
                <li><a href="/pa" class="acident" data-tabs="tab4"><span>ประกันอุบัติเหตุ </span></a></li>
                <li><a href="/ประกันภัยพิเศษ" class="special" data-tabs="tab5"><span>ประกันภัยพิเศษ </span></a></li>
            </ul>-->
            </div>

            <!--  form select insurance -->
            <div id="insurance-content" class="insurance-content_r3 pc tab1 bg-white">
                <!-- Car plan = tab-1 -->

                <div class="tab-1 overflow-hidden container">
                    <div class="col-tb-8 col-tb-offset-2 col-sm-10 col-sm-offset-1 ">
                        <div class="text-center margin-top-20">
                            <h1 class="color-blue">ประกันภัยรถยนต์</h1>
                            <p class="txt-plan padding-bottom-20">กรุณาเลือกประเภทประกันภัยรถยนต์</p>
                        </div>
                        <div id="main-search-form" class="margin-bottom-20">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                <ContentTemplate>
                                    <div class="row clear">
                                        <div class="col-dt-6 sm-no-padding">
                                            <label class="col-sm-6 col-mb-6 col-dt-4">
                                            ปีรถยนต์</label>
                                            <div class="col-sm-6 col-mb-6 col-dt-8">
                                                <label class="select type2">
                                                <asp:DropDownList ID="ddlCarYear" runat="server" AutoPostBack="True" class="select-default-dropdown" name="ddlCarYear" OnSelectedIndexChanged="ddlCarYear_SelectedIndexChanged">
                                                    <asp:ListItem Text="ปีรถยนต์" Value="0"></asp:ListItem>
                                                </asp:DropDownList>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-dt-6 sm-no-padding">
                                            <label class="col-sm-6 col-mb-6 col-dt-4">
                                            รถยนต์</label>
                                            <div class="col-sm-6 col-mb-6 col-dt-8">
                                                <label class="select type2">
                                                <asp:DropDownList ID="ddlCarName" runat="server" AutoPostBack="True" class="select-default-dropdown" name="ddlCarName" OnSelectedIndexChanged="ddlCarName_SelectedIndexChanged">
                                                    <asp:ListItem Text="รถยนต์" Value="0"></asp:ListItem>
                                                </asp:DropDownList>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-dt-6 sm-no-padding">
                                            <label class="col-sm-6 col-dt-4 col-mb-6">
                                            รุ่น</label>
                                            <div class="col-sm-6 col-dt-8 col-mb-6">
                                                <label class="select type2">
                                                <asp:DropDownList ID="ddlCarModel" runat="server" AutoPostBack="True" class="select-default-dropdown" OnSelectedIndexChanged="ddlCarModel_SelectedIndexChanged">
                                                    <asp:ListItem Text="รุ่น" Value="0"></asp:ListItem>
                                                </asp:DropDownList>
                                                </label>
                                            </div>
                                        </div>
                                        <%-- <div class="col-dt-6 sm-no-padding">
                                        <label class="col-sm-6 col-dt-4 col-mb-6">รุ่นย่อย</label>
                                        <div class="col-sm-6 col-dt-8 col-mb-6">
                                            <label class="select type2">
                                                <asp:DropDownList ID="Select1_CC" runat="server" class="select-default-dropdown">
                                                    <asp:ListItem Value="0" Text="รุ่นย่อย"></asp:ListItem>
                                                </asp:DropDownList>
                                            </label>
                                        </div>
                                    </div>--%>
                                    </div>
                                    <div class="text-center margin-top-20">
                                        <h2 class="color-blue">ข้อมูลติดต่อ</h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-dt-6 col-sm-12">
                                            <label class="col-sm-5 col-mb-3">
                                            ชื่อ</label>
                                            <input type="text" value="" name="LEADNAME2" id="LEADNAME2" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
                                            <input type="hidden" name="PRODUCTTYPE" id="PRODUCTTYPE" value="Ex" />
                                        </div>
                                        <div class="col-dt-6 col-sm-12">
                                            <label class="col-sm-5 col-mb-3 padding-lr-0-dt">
                                            นามสกุล</label>
                                            <input type="text" value="" name="LEADSURNAME2" id="LEADSURNAME2" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-mb-12">
                                            <label class="col-sm-5 col-mb-3">
                                            เบอร์โทรศัพท์</label>
                                            <input type="text" value="" name="PHONEMOBILE2" id="PHONEMOBILE2" class="underlineonly col-sm-7 col-mb-9" maxlength="10" onkeypress='if (event.keyCode<48||event.keyCode>59) event.returnValue=false' />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-mb-12">
                                            <label class="col-sm-5 col-mb-3">
                                            อีเมล</label>
                                            <input type="text" value="" name="EMAIL2" id="EMAIL2" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
                                        </div>
                                    </div>
                                    <div class="row">
                                    </div>
                                    <div class="btn-select-plan content-center">
                                        <div class="col-dt-6 btn-home-search ">
                                            <%--<a style="cursor: pointer;" class="button-1 blue" onclick="validate_car();">ค้นหาเลย</a>--%><%--<asp:Button ID="btnSearch" OnClientClick="javascript:return ValidateDropDown();" class="button-1 blue" runat="server" Text="ค้นหาเลย" />--%>
                                            <asp:Button ID="btnSearch" runat="server" AutoPostBack="True" class="button-1 blue" OnClientClick="javascript:return ValidateDropDown();" Text="ค้นหาเลย" />
                                        </div>
                                    </div>
                                     </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>

            <a href="#" class="back-to-top"><span class="pc h4">กลับด้านบน</span></a>
        </div>

        <div id="my_popup" class="well" style="display: none;">
            <div id="popup_box">
                <div id="popup_txt"></div>
                <div id="popup_btn_close" onclick="$('#my_popup').popup('hide');">ปิด</div>
            </div>
        </div>
    </form>
    <!--[if lt IE 9]>
		<script type="text/javascript" src="/assets3/script/jquery-1.9.1.min.js"></script>
	<![endif]-->
    <script type="text/javascript" src="/assets3/script/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="/assets3/script/testimonial.min.js"></script>
    <script type="text/javascript" src="/assets3/script/modernizr.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.center.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.swipe.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/assets3/script/main.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.isloading.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.popupoverlay.min.js"></script>
    <script type="text/javascript" src="/java/script_box_search2.js"></script>
    <script src="//control.mockingfish.com/js/011723.js"></script>
    <script type="text/javascript">
        window._pt_lt = new Date().getTime();
        window._pt_sp_2 = [];
        _pt_sp_2.push('setAccount,7075bf4a');
        var _protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        (function () {
            var atag = document.createElement('script'); atag.type = 'text/javascript'; atag.async = true;
            atag.src = _protocol + 'cjs.ptengine.com/pta_en.js';
            var stag = document.createElement('script'); stag.type = 'text/javascript'; stag.async = true;
            stag.src = _protocol + 'cjs.ptengine.com/pts.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(atag, s); s.parentNode.insertBefore(stag, s);
        })();
    </script>
    <script type="text/javascript">
        var animate;
        var total = $(".testimonial-text").length;
        function nav_move(nav) {
            animate = setTimeout(function () {
                $(".link-nav").removeClass("active");
                $(".tab-pane").removeClass("active in");
                if (nav == total) {
                    nav = 0;
                }
                nav = nav + 1;
                $(".nav" + nav).addClass("active");
                $("#tab" + nav).addClass("active in");
                nav_move(nav);
            }, 8000);
        }

        function select_nav(nav) {
            $(".link-nav").removeClass("active");
            $(".tab-pane").removeClass("active in");
            $(".nav" + nav).addClass("active");
            $("#tab" + nav).addClass("active in");
            clearTimeout(animate);
            nav_move(nav);
        }

        $('.slide-img').each(function (e) {
            $('.cycle-slideshow').append('<a href="#">' + $(this).html() + '</a>');
        });

        $(document).ready(function (e) {
            $("#trigger-pop").click();
            nav_move(1);
        });

        function validateEmail(email) {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }

        function ValidateDropDown() {
            var year = "<%=ddlCarYear.ClientID %>";
            if (document.getElementById(year).selectedIndex == 0) {
                alert("กรุณาเลือกปีรถยนต์");
                return false;
            }
            var band = "<%=ddlCarName.ClientID %>";
            if (document.getElementById(band).selectedIndex == 0) {
                alert("กรุณาเลือกรถยนต์");
                return false;
            }
            var age = "<%=ddlCarModel.ClientID %>";
            if (document.getElementById(age).selectedIndex == 0) {
                alert("กรุณาเลือกรุ่นรถยนต์");
                return false;
            }

            var name = $("#LEADNAME2").val();
            if (name == "") {
                alert("กรุณากรอกชื่อ");
                return false;
            }

            var email = $("#EMAIL2").val();
            if (email == "") {
                alert("กรุณากรอกอีเมล");
                return false;
            }
            else if (!validateEmail(email)) {
                alert("กรุณากรอกอีเมลให้ถูกต้อง");
                return false;
            }

            PageMethods.Process();

            return true;
        }
    </script>
</body>
</html>
