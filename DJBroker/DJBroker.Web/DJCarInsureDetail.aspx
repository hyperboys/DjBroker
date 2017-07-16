<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DJCarInsureDetail.aspx.cs" Inherits="DJBroker.Web.DJCarInsureDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="robots" content="index,follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
    <form id="form1" runat="server">

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
                    background: #00aeef;
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

            <div class="ta-small-menu" id="small-menu">

                <form action="/sql/read_cookie_search.php" method="post" id="parse_cooke">

                    <div class="col-sm-12 col-dt-3 col-lg-3">
                        <div class="tab-slide-down dark-blue">
                            <h3 class="color-white">รถยนต์ของคุณ</h3>
                            <span class=""><i class="fa fa-angle-down"></i></span>
                            <span class="active"><i class="fa fa-angle-up"></i></span>
                        </div>
                        <div class="slide-down-content" style="display: block;">
                            <input type="hidden" value="" name="PRODUCTPLAN" id="PRODUCTPLAN">
                            <input type="hidden" value="" name="Dropinfo_status" id="Dropinfo_status">
                            <input type="hidden" value="250000" name="CoverMin" id="CoverMin">
                            <input type="hidden" value="280000" name="CoverMax" id="CoverMax">
                            <input type="hidden" value="" name="search_R2_P2" id="search_R2_P2">
                            <input type="hidden" value="" name="CoverFixed80" id="CoverFixed80">
                            <input type="hidden" value="" name="SORTBY_LOG" id="SORTBY_LOG">
                            <input type="hidden" value="search" name="page" id="page">
                            <input type="hidden" value="" name="list_detail" id="list_detail">
                            <input type="hidden" value="" name="display_product" id="display_product">
                            <input type="hidden" value="2018-04" name="oldexpirydate" id="oldexpirydate">
                            <label class="select type3 white-gray margin-bottom-10">
                                <select id="description_1" name="categories_insurance_year">
                                    <option value="2017">2017 &nbsp;ป้ายแดง                            	</option>
                                    <option value="2016">2016                            	</option>
                                    <option value="2015">2015                            	</option>
                                    <option value="2014">2014                            	</option>
                                    <option value="2013">2013                            	</option>
                                    <option value="2012" selected="">2012                            	</option>
                                    <option value="2011">2011                            	</option>
                                    <option value="2010">2010                            	</option>
                                    <option value="2009">2009                            	</option>
                                    <option value="2008">2008                            	</option>
                                    <option value="2007">2007                            	</option>
                                    <option value="2006">2006                            	</option>
                                    <option value="2005">2005                            	</option>
                                    <option value="2004">2004                            	</option>
                                    <option value="2003">2003                            	</option>
                                    <option value="2002">2002                            	</option>
                                    <option value="2001">2001                            	</option>
                                    <option value="2000">2000                            	</option>
                                    <option value="1999">1999                            	</option>
                                    <option value="1998">1998                            	</option>
                                    <option value="1997">1997                            	</option>
                                    <option value="1996">1996                            	</option>
                                    <option value="1995">1995                            	</option>
                                    <option value="1994">1994                            	</option>
                                    <option value="1993">1993                            	</option>
                                    <option value="1992">1992                            	</option>
                                    <option value="1991">1991                            	</option>
                                    <option value="1990">1990                            	</option>
                                    <option value="1989">1989                            	</option>
                                    <option value="1988">1988                            	</option>
                                    <option value="1987">1987                            	</option>
                                    <option value="1986">1986                            	</option>
                                    <option value="1985">1985                            	</option>
                                    <option value="1984">1984                            	</option>
                                    <option value="1983">1983                            	</option>
                                    <option value="1982">1982                            	</option>
                                    <option value="1981">1981                            	</option>
                                    <option value="1980">1980                            	</option>
                                    <option value="1979">1979                            	</option>
                                    <option value="1978">1978                            	</option>
                                    <option value="1977">1977                            	</option>
                                    <option value="1976">1976                            	</option>
                                    <option value="1975">1975                            	</option>
                                    <option value="1974">1974                            	</option>
                                    <option value="1973">1973                            	</option>
                                    <option value="1972">1972                            	</option>
                                    <option value="1971">1971                            	</option>
                                    <option value="1970">1970                            	</option>
                                    <option value="1969">1969                            	</option>
                                    <option value="1968">1968                            	</option>
                                    <option value="1967">1967                            	</option>
                                </select>
                            </label>
                            <label class="select type3 white-gray margin-bottom-10">
                                <select id="description_2" name="categories_insurance_brand">
                                    <option value="">เลือกยี่ห้อรถยนต์</option>
                                    <!--<option value="CHEV" selected="selected">CHEVROLET</option>-->
                                    <option value="TOYO">TOYOTA</option>
                                    <option value="HOND" selected="">HONDA</option>
                                    <option value="MITS">MITSUBISHI</option>
                                    <option value="NISS">NISSAN</option>
                                    <option value="MAZD">MAZDA</option>
                                    <option value="CHEV">CHEVROLET</option>
                                    <option value="ISUZ">ISUZU</option>
                                    <option value="SUZU">SUZUKI</option>
                                    <option value="MERC">BENZ</option>
                                    <option value="BMW">BMW</option>
                                    <option value="ALFA">ALFA ROMEO</option>
                                    <option value="ASTO">ASTON MARTIN</option>
                                    <option value="AUDI">AUDI</option>
                                    <option value="MERC">BENZ</option>
                                    <option value="BENT">BENTLEY</option>
                                    <option value="BMW">BMW</option>
                                    <option value="CHER">CHERY</option>
                                    <option value="CHEV">CHEVROLET</option>
                                    <option value="CHRY">CHRYSLER</option>
                                    <option value="CITR">CITROEN</option>
                                    <option value="DAEW">DAEWOO</option>
                                    <option value="DAIH">DAIHATSU</option>
                                    <option value="DFM">DFM</option>
                                    <option value="FERR">FERRARI</option>
                                    <option value="FIAT">FIAT</option>
                                    <option value="FORD">FORD</option>
                                    <option value="FOTO">FOTON</option>
                                    <option value="HOLD">HOLDEN</option>
                                    <option value="HOND" selected="">HONDA</option>
                                    <option value="HUMM">HUMMER</option>
                                    <option value="HYUN">HYUNDAI</option>
                                    <option value="ISUZ">ISUZU</option>
                                    <option value="JAGU">JAGUAR</option>
                                    <option value="JEEP">JEEP</option>
                                    <option value="KIA">KIA</option>
                                    <option value="LAMB">LAMBORGHINI</option>
                                    <option value="LAND">LAND ROVER</option>
                                    <option value="LEXU">LEXUS</option>
                                    <option value="LOTU">LOTUS</option>
                                    <option value="MAZD">MAZDA</option>
                                    <option value="MASE">MASERATI</option>
                                    <option value="MAXU">MAXUS</option>
                                    <option value="MCLR">MCLAREN</option>
                                    <option value="MG">MG</option>
                                    <option value="MINI">MINI</option>
                                    <option value="MITS">MITSUBISHI</option>
                                    <option value="NISS">NISSAN</option>
                                    <option value="MIOK">MITSUOKA</option>
                                    <option value="NAZA">NAZA</option>
                                    <option value="OPEL">OPEL</option>
                                    <option value="PEUG">PEUGEOT</option>
                                    <option value="POLA">POLARSUN</option>
                                    <option value="PORS">PORSCHE</option>
                                    <option value="PROT">PROTON</option>
                                    <option value="RENA">RENAULT</option>
                                    <option value="ROLL">ROLLS-ROYCE</option>
                                    <option value="ROVE">ROVER</option>
                                    <option value="SAAB">SAAB</option>
                                    <option value="SEAT">SEAT</option>
                                    <option value="SKOD">SKODA</option>
                                    <option value="SMAR">SMART</option>
                                    <option value="SPYK">SPYKER</option>
                                    <option value="SSAN">SSANGYONG</option>
                                    <option value="STAN">STANDARD</option>
                                    <option value="SUBA">SUBARU</option>
                                    <option value="SUZU">SUZUKI</option>
                                    <option value="TATA">TATA</option>
                                    <option value="TOYO">TOYOTA</option>
                                    <option value="THAI">TR</option>
                                    <option value="VOLK">VOLKSWAGEN</option>
                                    <option value="VOLV">VOLVO</option>
                                </select>
                            </label>
                            <label class="select type3 white-gray margin-bottom-10">
                                <select id="description_3" name="categories_insurance_age">
                                    <option value="-">เลือกรุ่นรถยนต์</option>
                                    <option value="ACCORD">ACCORD</option>
                                    <option value="BRIO">BRIO</option>
                                    <option value="CITY" selected="">CITY</option>
                                    <option value="CIVIC">CIVIC</option>
                                    <option value="CR-V">CR-V</option>
                                    <option value="CRZ">CR-Z</option>
                                    <option value="FREED">FREED</option>
                                    <option value="JAZZ">JAZZ</option>
                                    <option value="ODYSSE">ODYSSEY</option>
                                    <option value="STEPWGNSPADA">STEPWGN SPADA</option>
                                </select>
                            </label>
                            <div class="clear margin-top-20">
                                <a class="button-1 blue submit_search" id="submit_ok" style="cursor: pointer;">ตกลง</a>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div class="col-sm-12 col-dt-9 col-lg-9" id="box-right">
                <form id="sticky-menu" class="overflow-hidden round-image margin-bottom-20 filter-search-price">
                    <div class="padding-10-dt overflow-hidden reset-padding">
                        <div class="col-sm-12 col-dt-7 col-lg-9 reset-dropdown margin-bottom-10-dt-0">
                            <div class="col-sm-12 col-dt-8 col-lg-5 bg-light-gray radius-10 nopadding-tb-0">
                                <p class="col-sm-4 col-mb-2 col-dt-4">เรียงตาม: </p>
                                <div class="col-sm-8 col-mb-10 col-dt-8">
                                    <label class="select type3 white-gray">
                                        <select id="form_control" onchange="MinItem(this.value);$('#SORTBY_LOG').val(this.value);">
                                            <option value="pricemin|min">ราคาน้อย-มาก</option>
                                            <option value="pricemin|max">ราคามาก-น้อย</option>
                                            <option value="company|min">บริษัทยอดนิยม</option>
                                            <option value="promotion|min">โปรโมชั่น</option>
                                            <option value="covermin|min">ทุนน้อย-มาก</option>
                                            <option value="covermin|max">ทุนมาก-น้อย</option>
                                            <option value="garagemin|max">จำนวนอู่มาก-น้อย</option>
                                        </select>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-dt-5 col-lg-3 content-center reset-btn-compare">
                            <!-- <a href="compare.html" class="button-2 darkblue">เปรียบเทียบ <span id="compare-count">0</span> รายการ</a> -->
                            <a title="เปรียบเทียบประกันรถยนต์" href="#" onclick="compare_page()" class="button-2 darkblue">เปรียบเทียบ <span id="list_count">0</span> รายการ</a>
                        </div>
                    </div>
                </form>

                <div id="sort_package">
                    <div id="searh_13806" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13806" data-range="1767.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3 
                <span class="price h1 ">1,899.25                    
                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13806">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13806','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13806" onclick="compare_product('13806')" data-id="MTM4MDY=" data-price="MTg5OS4yNQ==" data-price-n="MTg5OS4yNQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13806','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11076" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11076" data-range="1861.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3 
                <span class="price h1 ">1,999.83                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11076">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11076','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11076" onclick="compare_product('11076')" data-id="MTEwNzY=" data-price="MTk5OS44Mw==" data-price-n="MTk5OS44Mw==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11076','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8646" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8646" data-range="1999.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3 
                <span class="price h1 ">2,147.49                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8646">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8646','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8646" onclick="compare_product('8646')" data-id="ODY0Ng==" data-price="MjE0Ny40OQ==" data-price-n="MjE0Ny40OQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8646','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8649" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8649" data-range="2140.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3 
                <span class="price h1 ">2,299.43                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8649">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8649','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8649" onclick="compare_product('8649')" data-id="ODY0OQ==" data-price="MjI5OS40Mw==" data-price-n="MjI5OS40Mw==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8649','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14635" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14635" data-range="2234.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3 
                <span class="price h1 ">2,400.01                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14635">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14635','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14635" onclick="compare_product('14635')" data-id="MTQ2MzU=" data-price="MjQwMC4wMQ==" data-price-n="MjQwMC4wMQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14635','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12178" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12178" data-range="2326.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 3 
                <span class="price h1 ">2,499.52                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation12178">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12178','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12178" onclick="compare_product('12178')" data-id="MTIxNzg=" data-price="MjQ5OS41Mg==" data-price-n="MjQ5OS41Mg==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12178','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14859" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14859" data-range="2402.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 3 
                <span class="price h1 ">2,580.84                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14859">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14859','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14859" onclick="compare_product('14859')" data-id="MTQ4NTk=" data-price="MjU4MC44NA==" data-price-n="MjU4MC44NA==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14859','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11078" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11078" data-range="2466.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3 
                <span class="price h1 ">2,649.32                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11078">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11078','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11078" onclick="compare_product('11078')" data-id="MTEwNzg=" data-price="MjY0OS4zMg==" data-price-n="MjY0OS4zMg==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11078','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14639" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14639" data-range="2512.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3 
                <span class="price h1 ">2,699.61                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14639">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14639','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14639" onclick="compare_product('14639')" data-id="MTQ2Mzk=" data-price="MjY5OS42MQ==" data-price-n="MjY5OS42MQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14639','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14857" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14857" data-range="2681.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 2 
                <span class="price h1 ">2,880.44                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14857">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14857','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14857" onclick="compare_product('14857')" data-id="MTQ4NTc=" data-price="Mjg4MC40NA==" data-price-n="Mjg4MC40NA==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14857','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8566" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8566" data-range="2792.52" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2 
                <span class="price h1 ">3,000.84                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation8566">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8566','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8566" onclick="compare_product('8566')" data-id="ODU2Ng==" data-price="MzAwMC44NA==" data-price-n="MzAwMC44NA==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8566','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7275" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7275" data-range="2930.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3 
                <span class="price h1 ">3,147.92                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7275">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7275','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7275" onclick="compare_product('7275')" data-id="NzI3NQ==" data-price="MzE0Ny45Mg==" data-price-n="MzE0Ny45Mg==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7275','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11038" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11038" data-range="3165.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2 
                <span class="price h1 ">3,400.46                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11038">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11038','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11038" onclick="compare_product('11038')" data-id="MTEwMzg=" data-price="MzQwMC40Ng==" data-price-n="MzQwMC40Ng==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11038','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8564" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8564" data-range="3257.94" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2 
                <span class="price h1 ">3,500.98                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation8564">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8564','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8564" onclick="compare_product('8564')" data-id="ODU2NA==" data-price="MzUwMC45OA==" data-price-n="MzUwMC45OA==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8564','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11039" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11039" data-range="3351.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2 
                <span class="price h1 ">3,600.55                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11039">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11039','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11039" onclick="compare_product('11039')" data-id="MTEwMzk=" data-price="MzYwMC41NQ==" data-price-n="MzYwMC41NQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11039','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11040" class="searh-sort">
                        <div class="item insure2  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11040" data-range="3537.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2 
                <span class="price h1 ">3,800.64                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11040">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11040','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11040" onclick="compare_product('11040')" data-id="MTEwNDA=" data-price="MzgwMC42NA==" data-price-n="MzgwMC42NA==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11040','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14622" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14622" data-range="3723.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3 
                <span class="price h1 ">3,999.66                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14622">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14622','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14622" onclick="compare_product('14622')" data-id="MTQ2MjI=" data-price="Mzk5OS42Ng==" data-price-n="Mzk5OS42Ng==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14622','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7272" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7272" data-range="3954.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3 
                <span class="price h1 ">4,247.89                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7272">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7272','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7272" onclick="compare_product('7272')" data-id="NzI3Mg==" data-price="NDI0Ny44OQ==" data-price-n="NDI0Ny44OQ==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7272','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14629" class="searh-sort">
                        <div class="item insure3  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14629" data-range="4468.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3 
                <span class="price h1 ">4,800.02                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14629">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 0</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14629','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14629" onclick="compare_product('14629')" data-id="MTQ2Mjk=" data-price="NDgwMC4wMg==" data-price-n="NDgwMC4wMg==" data-age="" data-price-cover="MC4wMA=="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14629','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_6267" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie6267" data-range="4654.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เจ้าพระยาประกันภัย ชั้น 3+ 
                <span class="price h1 ">5,000.11                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เจ้าพระยาประกันภัย" href="/บริษัทประกัน/เจ้าพระยาประกันภัย/36" id="imgLocation6267">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CPY.png" alt="บริษัทประกัน เจ้าพระยาประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 50,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('6267','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">809</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare6267" onclick="compare_product('6267')" data-id="NjI2Nw==" data-price="NTAwMC4xMQ==" data-price-n="NTAwMC4xMQ==" data-age="" data-price-cover="NTAwMDAuMDA="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('6267','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14989" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14989" data-range="4801.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">สินมั่นคงประกันภัย ชั้น 3+ 
                <span class="price h1 ">5,158.47                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน สินมั่นคงประกันภัย" href="/บริษัทประกัน/สินมั่นคงประกันภัย/89" id="imgLocation14989">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/SMK.png" alt="บริษัทประกัน สินมั่นคงประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14989','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">525</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14989" onclick="compare_product('14989')" data-id="MTQ5ODk=" data-price="NTE1OC40Nw==" data-price-n="NTE1OC40Nw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14989','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10163" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10163" data-range="5119.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">5,499.80                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation10163">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 50,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10163','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10163" onclick="compare_product('10163')" data-id="MTAxNjM=" data-price="NTQ5OS44MA==" data-price-n="NTQ5OS44MA==" data-age="" data-price-cover="NTAwMDAuMDA="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10163','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12530" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12530" data-range="5398.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เจนเนอราลี่ประกันภัย ชั้น 2+ 
                <span class="price h1 ">5,799.40                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เจนเนอราลี่ประกันภัย" href="/บริษัทประกัน/เจนเนอราลี่ประกันภัย/623" id="imgLocation12530">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/GIT.png" alt="บริษัทประกัน เจนเนอราลี่ประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 50,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12530','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">148</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12530" onclick="compare_product('12530')" data-id="MTI1MzA=" data-price="NTc5OS40MA==" data-price-n="NTc5OS40MA==" data-age="" data-price-cover="NTAwMDAuMDA="><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12530','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12451" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12451" data-range="5492.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 2+ 
                <span class="price h1 ">5,899.98                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation12451">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12451','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12451" onclick="compare_product('12451')" data-id="MTI0NTE=" data-price="NTg5OS45OA==" data-price-n="NTg5OS45OA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12451','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14715" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14715" data-range="5584.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">5,999.49                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14715">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14715','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14715" onclick="compare_product('14715')" data-id="MTQ3MTU=" data-price="NTk5OS40OQ==" data-price-n="NTk5OS40OQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14715','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11007" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11007" data-range="5770.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,199.58                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11007">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11007','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11007" onclick="compare_product('11007')" data-id="MTEwMDc=" data-price="NjE5OS41OA==" data-price-n="NjE5OS41OA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11007','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14991" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14991" data-range="5780.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">สินมั่นคงประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,210.28                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน สินมั่นคงประกันภัย" href="/บริษัทประกัน/สินมั่นคงประกันภัย/89" id="imgLocation14991">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/SMK.png" alt="บริษัทประกัน สินมั่นคงประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14991','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">525</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14991" onclick="compare_product('14991')" data-id="MTQ5OTE=" data-price="NjIxMC4yOA==" data-price-n="NjIxMC4yOA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14991','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12479" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12479" data-range="5864.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอกซ่าประกันภัย ชั้น 2+ 
                <span class="price h1 ">6,300.16                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอกซ่าประกันภัย" href="/บริษัทประกัน/แอกซ่าประกันภัย/26" id="imgLocation12479">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AXA.png" alt="บริษัทประกัน แอกซ่าประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12479','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">439</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12479" onclick="compare_product('12479')" data-id="MTI0Nzk=" data-price="NjMwMC4xNg==" data-price-n="NjMwMC4xNg==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12479','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14865" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14865" data-range="5864.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 3+ 
                <span class="price h1 ">6,300.16                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14865">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14865','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14865" onclick="compare_product('14865')" data-id="MTQ4NjU=" data-price="NjMwMC4xNg==" data-price-n="NjMwMC4xNg==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14865','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12167" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12167" data-range="6049.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,499.18                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation12167">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12167','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12167" onclick="compare_product('12167')" data-id="MTIxNjc=" data-price="NjQ5OS4xOA==" data-price-n="NjQ5OS4xOA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12167','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14667" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14667" data-range="6050.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">6,500.25                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14667">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14667','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14667" onclick="compare_product('14667')" data-id="MTQ2Njc=" data-price="NjUwMC4yNQ==" data-price-n="NjUwMC4yNQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14667','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14727" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14727" data-range="6050.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">6,500.25                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14727">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14727','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14727" onclick="compare_product('14727')" data-id="MTQ3Mjc=" data-price="NjUwMC4yNQ==" data-price-n="NjUwMC4yNQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14727','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11023" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11023" data-range="6050.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,500.25                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11023">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11023','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11023" onclick="compare_product('11023')" data-id="MTEwMjM=" data-price="NjUwMC4yNQ==" data-price-n="NjUwMC4yNQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11023','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13779" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13779" data-range="6236.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,699.27                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13779">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13779','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13779" onclick="compare_product('13779')" data-id="MTM3Nzk=" data-price="NjY5OS4yNw==" data-price-n="NjY5OS4yNw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13779','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11011" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11011" data-range="6236.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,699.27                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11011">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11011','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11011" onclick="compare_product('11011')" data-id="MTEwMTE=" data-price="NjY5OS4yNw==" data-price-n="NjY5OS4yNw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11011','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14719" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14719" data-range="6329.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">6,799.85                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14719">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14719','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14719" onclick="compare_product('14719')" data-id="MTQ3MTk=" data-price="Njc5OS44NQ==" data-price-n="Njc5OS44NQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14719','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12531" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12531" data-range="6329.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เจนเนอราลี่ประกันภัย ชั้น 2+ 
                <span class="price h1 ">6,799.85                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เจนเนอราลี่ประกันภัย" href="/บริษัทประกัน/เจนเนอราลี่ประกันภัย/623" id="imgLocation12531">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/GIT.png" alt="บริษัทประกัน เจนเนอราลี่ประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12531','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">148</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12531" onclick="compare_product('12531')" data-id="MTI1MzE=" data-price="Njc5OS44NQ==" data-price-n="Njc5OS44NQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12531','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13780" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13780" data-range="6422.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,899.36                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13780">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13780','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13780" onclick="compare_product('13780')" data-id="MTM3ODA=" data-price="Njg5OS4zNg==" data-price-n="Njg5OS4zNg==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13780','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10983" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10983" data-range="6422.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">6,899.36                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10983">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10983','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10983" onclick="compare_product('10983')" data-id="MTA5ODM=" data-price="Njg5OS4zNg==" data-price-n="Njg5OS4zNg==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10983','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11014" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11014" data-range="6422.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">6,899.36                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11014">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11014','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11014" onclick="compare_product('11014')" data-id="MTEwMTQ=" data-price="Njg5OS4zNg==" data-price-n="Njg5OS4zNg==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11014','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12453" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12453" data-range="6423.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 2+ 
                <span class="price h1 ">6,900.43                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation12453">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12453','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12453" onclick="compare_product('12453')" data-id="MTI0NTM=" data-price="NjkwMC40Mw==" data-price-n="NjkwMC40Mw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12453','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13471" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13471" data-range="6423.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 2+ 
                <span class="price h1 ">6,900.43                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation13471">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13471','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13471" onclick="compare_product('13471')" data-id="MTM0NzE=" data-price="NjkwMC40Mw==" data-price-n="NjkwMC40Mw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13471','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14691" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14691" data-range="6423.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">6,900.43                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14691">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14691','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14691" onclick="compare_product('14691')" data-id="MTQ2OTE=" data-price="NjkwMC40Mw==" data-price-n="NjkwMC40Mw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14691','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14643" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14643" data-range="6515.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">6,999.94                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14643">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14643','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14643" onclick="compare_product('14643')" data-id="MTQ2NDM=" data-price="Njk5OS45NA==" data-price-n="Njk5OS45NA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14643','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13781" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13781" data-range="6608.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,099.45                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13781">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13781','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13781" onclick="compare_product('13781')" data-id="MTM3ODE=" data-price="NzA5OS40NQ==" data-price-n="NzA5OS40NQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13781','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8652" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8652" data-range="6702.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,200.03                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8652">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8652','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8652" onclick="compare_product('8652')" data-id="ODY1Mg==" data-price="NzIwMC4wMw==" data-price-n="NzIwMC4wMw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8652','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14703" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14703" data-range="6702.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">7,200.03                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14703">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14703','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14703" onclick="compare_product('14703')" data-id="MTQ3MDM=" data-price="NzIwMC4wMw==" data-price-n="NzIwMC4wMw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14703','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10995" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10995" data-range="6702.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,200.03                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10995">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10995','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10995" onclick="compare_product('10995')" data-id="MTA5OTU=" data-price="NzIwMC4wMw==" data-price-n="NzIwMC4wMw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10995','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13782" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13782" data-range="6794.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,299.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13782">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13782','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13782" onclick="compare_product('13782')" data-id="MTM3ODI=" data-price="NzI5OS41NA==" data-price-n="NzI5OS41NA==" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13782','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14695" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14695" data-range="6794.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">7,299.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14695">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14695','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14695" onclick="compare_product('14695')" data-id="MTQ2OTU=" data-price="NzI5OS41NA==" data-price-n="NzI5OS41NA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14695','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14731" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14731" data-range="6794.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">7,299.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14731">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14731','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14731" onclick="compare_product('14731')" data-id="MTQ3MzE=" data-price="NzI5OS41NA==" data-price-n="NzI5OS41NA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14731','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11027" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11027" data-range="6794.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,299.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11027">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11027','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11027" onclick="compare_product('11027')" data-id="MTEwMjc=" data-price="NzI5OS41NA==" data-price-n="NzI5OS41NA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11027','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12532" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12532" data-range="6794.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เจนเนอราลี่ประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,299.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เจนเนอราลี่ประกันภัย" href="/บริษัทประกัน/เจนเนอราลี่ประกันภัย/623" id="imgLocation12532">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/GIT.png" alt="บริษัทประกัน เจนเนอราลี่ประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12532','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">148</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12532" onclick="compare_product('12532')" data-id="MTI1MzI=" data-price="NzI5OS41NA==" data-price-n="NzI5OS41NA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12532','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14861" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14861" data-range="6795.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 2+ 
                <span class="price h1 ">7,300.61                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14861">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14861','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14861" onclick="compare_product('14861')" data-id="MTQ4NjE=" data-price="NzMwMC42MQ==" data-price-n="NzMwMC42MQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14861','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14919" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14919" data-range="6795.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 3+ 
                <span class="price h1 ">7,300.61                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14919">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14919','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14919" onclick="compare_product('14919')" data-id="MTQ5MTk=" data-price="NzMwMC42MQ==" data-price-n="NzMwMC42MQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14919','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13752" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13752" data-range="6887.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,399.05                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13752">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13752','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13752" onclick="compare_product('13752')" data-id="MTM3NTI=" data-price="NzM5OS4wNQ==" data-price-n="NzM5OS4wNQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13752','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11020" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11020" data-range="6887.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,399.05                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11020">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11020','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11020" onclick="compare_product('11020')" data-id="MTEwMjA=" data-price="NzM5OS4wNQ==" data-price-n="NzM5OS4wNQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11020','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12168" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12168" data-range="6981.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,499.63                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation12168">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12168','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12168" onclick="compare_product('12168')" data-id="MTIxNjg=" data-price="NzQ5OS42Mw==" data-price-n="NzQ5OS42Mw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12168','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14671" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14671" data-range="6981.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">7,499.63                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14671">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14671','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14671" onclick="compare_product('14671')" data-id="MTQ2NzE=" data-price="NzQ5OS42Mw==" data-price-n="NzQ5OS42Mw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14671','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14679" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14679" data-range="6981.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">7,499.63                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14679">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14679','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14679" onclick="compare_product('14679')" data-id="MTQ2Nzk=" data-price="NzQ5OS42Mw==" data-price-n="NzQ5OS42Mw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14679','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_5207" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie5207" data-range="6982.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 3+ 
                <span class="price h1 ">7,500.70                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation5207">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('5207','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare5207" onclick="compare_product('5207')" data-id="NTIwNw==" data-price="NzUwMC43MA==" data-price-n="NzUwMC43MA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('5207','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12480" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12480" data-range="6982.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอกซ่าประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,500.70                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอกซ่าประกันภัย" href="/บริษัทประกัน/แอกซ่าประกันภัย/26" id="imgLocation12480">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AXA.png" alt="บริษัทประกัน แอกซ่าประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12480','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">439</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12480" onclick="compare_product('12480')" data-id="MTI0ODA=" data-price="NzUwMC43MA==" data-price-n="NzUwMC43MA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12480','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_15005" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie15005" data-range="6982.00" style="display: block;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 1 
                <span class="price h1 ">7,500.70                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation15005">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 3,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('15005','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare15005" onclick="compare_product('15005')" data-id="MTUwMDU=" data-price="NzUwMC43MA==" data-price-n="NzUwMC43MA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('15005','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8653" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8653" data-range="7073.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,599.14                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8653">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8653','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8653" onclick="compare_product('8653')" data-id="ODY1Mw==" data-price="NzU5OS4xNA==" data-price-n="NzU5OS4xNA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8653','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13753" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13753" data-range="7073.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,599.14                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13753">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13753','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13753" onclick="compare_product('13753')" data-id="MTM3NTM=" data-price="NzU5OS4xNA==" data-price-n="NzU5OS4xNA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13753','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11031" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11031" data-range="7073.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,599.14                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11031">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11031','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11031" onclick="compare_product('11031')" data-id="MTEwMzE=" data-price="NzU5OS4xNA==" data-price-n="NzU5OS4xNA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11031','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10986" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10986" data-range="7259.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,799.23                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10986">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10986','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10986" onclick="compare_product('10986')" data-id="MTA5ODY=" data-price="Nzc5OS4yMw==" data-price-n="Nzc5OS4yMw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10986','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8619" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8619" data-range="7353.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,899.81                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8619">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8619','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8619" onclick="compare_product('8619')" data-id="ODYxOQ==" data-price="Nzg5OS44MQ==" data-price-n="Nzg5OS44MQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8619','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14655" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14655" data-range="7353.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">7,899.81                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14655">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14655','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14655" onclick="compare_product('14655')" data-id="MTQ2NTU=" data-price="Nzg5OS44MQ==" data-price-n="Nzg5OS44MQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14655','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12144" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12144" data-range="7353.18" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,900.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12144">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12144','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12144" onclick="compare_product('12144')" data-id="MTIxNDQ=" data-price="NzkwMC4wMA==" data-price-n="NzkwMC4wMA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12144','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12102" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12102" data-range="7353.18" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,900.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12102">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12102','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12102" onclick="compare_product('12102')" data-id="MTIxMDI=" data-price="NzkwMC4wMA==" data-price-n="NzkwMC4wMA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12102','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_5211" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie5211" data-range="7354.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 3+ 
                <span class="price h1 ">7,900.88                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation5211">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('5211','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare5211" onclick="compare_product('5211')" data-id="NTIxMQ==" data-price="NzkwMC44OA==" data-price-n="NzkwMC44OA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('5211','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13475" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13475" data-range="7354.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 2+ 
                <span class="price h1 ">7,900.88                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation13475">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13475','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13475" onclick="compare_product('13475')" data-id="MTM0NzU=" data-price="NzkwMC44OA==" data-price-n="NzkwMC44OA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13475','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7158" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7158" data-range="7354.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3+ 
                <span class="price h1 ">7,900.88                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7158">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7158','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7158" onclick="compare_product('7158')" data-id="NzE1OA==" data-price="NzkwMC44OA==" data-price-n="NzkwMC44OA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7158','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13754" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13754" data-range="7446.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,999.32                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13754">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13754','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13754" onclick="compare_product('13754')" data-id="MTM3NTQ=" data-price="Nzk5OS4zMg==" data-price-n="Nzk5OS4zMg==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13754','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10989" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10989" data-range="7446.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">7,999.32                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10989">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10989','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10989" onclick="compare_product('10989')" data-id="MTA5ODk=" data-price="Nzk5OS4zMg==" data-price-n="Nzk5OS4zMg==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10989','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12156" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12156" data-range="7447.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,000.39                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation12156">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12156','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12156" onclick="compare_product('12156')" data-id="MTIxNTY=" data-price="ODAwMC4zOQ==" data-price-n="ODAwMC4zOQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12156','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14647" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14647" data-range="7447.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">8,000.39                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14647">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14647','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14647" onclick="compare_product('14647')" data-id="MTQ2NDc=" data-price="ODAwMC4zOQ==" data-price-n="ODAwMC4zOQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14647','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8620" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8620" data-range="7539.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,099.90                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8620">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8620','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8620" onclick="compare_product('8620')" data-id="ODYyMA==" data-price="ODA5OS45MA==" data-price-n="ODA5OS45MA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8620','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11037" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11037" data-range="7539.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 3+ 
                <span class="price h1 ">8,099.90                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11037">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11037','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11037" onclick="compare_product('11037')" data-id="MTEwMzc=" data-price="ODA5OS45MA==" data-price-n="ODA5OS45MA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11037','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8654" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8654" data-range="7632.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 3+ 
                <span class="price h1 ">8,199.41                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8654">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8654','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8654" onclick="compare_product('8654')" data-id="ODY1NA==" data-price="ODE5OS40MQ==" data-price-n="ODE5OS40MQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8654','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10998" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10998" data-range="7632.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,199.41                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10998">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10998','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10998" onclick="compare_product('10998')" data-id="MTA5OTg=" data-price="ODE5OS40MQ==" data-price-n="ODE5OS40MQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10998','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14707" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14707" data-range="7633.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">8,200.48                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14707">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14707','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14707" onclick="compare_product('14707')" data-id="MTQ3MDc=" data-price="ODIwMC40OA==" data-price-n="ODIwMC40OA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14707','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8621" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8621" data-range="7726.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,299.99                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8621">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8621','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8621" onclick="compare_product('8621')" data-id="ODYyMQ==" data-price="ODI5OS45OQ==" data-price-n="ODI5OS45OQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8621','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14862" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14862" data-range="7726.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 2+ 
                <span class="price h1 ">8,299.99                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14862">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14862','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14862" onclick="compare_product('14862')" data-id="MTQ4NjI=" data-price="ODI5OS45OQ==" data-price-n="ODI5OS45OQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14862','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14915" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14915" data-range="7726.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 2+ 
                <span class="price h1 ">8,299.99                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14915">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14915','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14915" onclick="compare_product('14915')" data-id="MTQ5MTU=" data-price="ODI5OS45OQ==" data-price-n="ODI5OS45OQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14915','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13755" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13755" data-range="7818.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,399.50                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation13755">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13755','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13755" onclick="compare_product('13755')" data-id="MTM3NTU=" data-price="ODM5OS41MA==" data-price-n="ODM5OS41MA==" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13755','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7173" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7173" data-range="7818.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3+ 
                <span class="price h1 ">8,399.50                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7173">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7173','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์"/>
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7173" onclick="compare_product('7173')" data-id="NzE3Mw==" data-price="ODM5OS41MA==" data-price-n="ODM5OS41MA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7173','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8622" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8622" data-range="7911.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,499.01                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8622">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8622','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8622" onclick="compare_product('8622')" data-id="ODYyMg==" data-price="ODQ5OS4wMQ==" data-price-n="ODQ5OS4wMQ==" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8622','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_10992" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie10992" data-range="7911.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,499.01                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation10992">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('10992','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare10992" onclick="compare_product('10992')" data-id="MTA5OTI=" data-price="ODQ5OS4wMQ==" data-price-n="ODQ5OS4wMQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('10992','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_13478" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie13478" data-range="7912.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอเชียประกันภัย 1950 ชั้น 2+ 
                <span class="price h1 ">8,500.08                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอเชียประกันภัย 1950" href="/บริษัทประกัน/เอเชียประกันภัย 1950/24" id="imgLocation13478">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AII.png" alt="บริษัทประกัน เอเชียประกันภัย 1950 ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('13478','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,244</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare13478" onclick="compare_product('13478')" data-id="MTM0Nzg=" data-price="ODUwMC4wOA==" data-price-n="ODUwMC4wOA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('13478','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14683" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14683" data-range="7912.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 3+ 
                <span class="price h1 ">8,500.08                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14683">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14683','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14683" onclick="compare_product('14683')" data-id="MTQ2ODM=" data-price="ODUwMC4wOA==" data-price-n="ODUwMC4wOA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14683','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11001" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11001" data-range="8004.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,599.59                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11001">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11001','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11001" onclick="compare_product('11001')" data-id="MTEwMDE=" data-price="ODU5OS41OQ==" data-price-n="ODU5OS41OQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11001','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12104" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12104" data-range="8191.30" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,800.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12104">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12104','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12104" onclick="compare_product('12104')" data-id="MTIxMDQ=" data-price="ODgwMC4wMA==" data-price-n="ODgwMC4wMA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12104','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8614" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8614" data-range="8238.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,849.97                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8614">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8614','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8614" onclick="compare_product('8614')" data-id="ODYxNA==" data-price="ODg0OS45Nw==" data-price-n="ODg0OS45Nw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8614','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14659" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14659" data-range="8284.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 2+ 
                <span class="price h1 ">8,900.26                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation14659">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14659','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14659" onclick="compare_product('14659')" data-id="MTQ2NTk=" data-price="ODkwMC4yNg==" data-price-n="ODkwMC4yNg==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14659','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7080" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7080" data-range="8285.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,901.33                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7080">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7080','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7080" onclick="compare_product('7080')" data-id="NzA4MA==" data-price="ODkwMS4zMw==" data-price-n="ODkwMS4zMw==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7080','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7161" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7161" data-range="8285.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3+ 
                <span class="price h1 ">8,901.33                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7161">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7161','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7161" onclick="compare_product('7161')" data-id="NzE2MQ==" data-price="ODkwMS4zMw==" data-price-n="ODkwMS4zMw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7161','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12146" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12146" data-range="8367.87" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,990.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12146">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 150,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12146','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12146" onclick="compare_product('12146')" data-id="MTIxNDY=" data-price="ODk5MC4wMA==" data-price-n="ODk5MC4wMA==" data-age="" data-price-cover="MTUwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12146','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_11004" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11004" data-range="8376.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,998.70                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11004">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11004','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11004" onclick="compare_product('11004')" data-id="MTEwMDQ=" data-price="ODk5OC43MA==" data-price-n="ODk5OC43MA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11004','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12116" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12116" data-range="8376.28" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,999.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12116">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12116','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12116" onclick="compare_product('12116')" data-id="MTIxMTY=" data-price="ODk5OS4wMA==" data-price-n="ODk5OS4wMA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12116','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12157" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12157" data-range="8377.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 2+ 
                <span class="price h1 ">8,999.77                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation12157">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12157','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12157" onclick="compare_product('12157')" data-id="MTIxNTc=" data-price="ODk5OS43Nw==" data-price-n="ODk5OS43Nw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12157','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_8615" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie8615" data-range="8750.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 2+ 
                <span class="price h1 ">9,399.95                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation8615">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('8615','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare8615" onclick="compare_product('8615')" data-id="ODYxNQ==" data-price="OTM5OS45NQ==" data-price-n="OTM5OS45NQ==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('8615','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7095" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7095" data-range="8750.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 2+ 
                <span class="price h1 ">9,399.95                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7095">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 100,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7095','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7095" onclick="compare_product('7095')" data-id="NzA5NQ==" data-price="OTM5OS45NQ==" data-price-n="OTM5OS45NQ==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7095','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_12118" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie12118" data-range="8842.50" style="display: none;">
                            <h2 class="h1 margin-top-10 ">กรุงเทพประกันภัย ชั้น 2+ 
                <span class="price h1 ">9,500.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation12118">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/BKI.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('12118','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare12118" onclick="compare_product('12118')" data-id="MTIxMTg=" data-price="OTUwMC4wMA==" data-price-n="OTUwMC4wMA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('12118','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7176" class="searh-sort">
                        <div class="item insure30  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7176" data-range="8843.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 3+ 
                <span class="price h1 ">9,500.53                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7176">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 3+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7176','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7176" onclick="compare_product('7176')" data-id="NzE3Ng==" data-price="OTUwMC41Mw==" data-price-n="OTUwMC41Mw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7176','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14916" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14916" data-range="9122.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 2+ 
                <span class="price h1 ">9,800.13                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14916">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: 2,000</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14916','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14916" onclick="compare_product('14916')" data-id="MTQ5MTY=" data-price="OTgwMC4xMw==" data-price-n="OTgwMC4xMw==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14916','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7083" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7083" data-range="9215.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 2+ 
                <span class="price h1 ">9,899.64                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7083">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7083','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7083" onclick="compare_product('7083')" data-id="NzA4Mw==" data-price="OTg5OS42NA==" data-price-n="OTg5OS42NA==" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7083','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_7098" class="searh-sort">
                        <div class="item insure20  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie7098" data-range="9773.00" style="display: none;">
                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 2+ 
                <span class="price h1 ">10,499.91                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation7098">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย ชั้น 2+"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 200,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('7098','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare7098" onclick="compare_product('7098')" data-id="NzA5OA==" data-price="MTA0OTkuOTE=" data-price-n="MTA0OTkuOTE=" data-age="" data-price-cover="MjAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('7098','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">จองเลย</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14884" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14884" data-range="12565.82" style="display: block;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 1 
                <span class="price h1 ">13,500.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14884">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14884','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">1,293</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14884" onclick="compare_product('14884')" data-id="MTQ4ODQ=" data-price="MTM1MDAuMDA=" data-price-n="MTM1MDAuMDA=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14884','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_3306" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie3306" data-range="13000.00" style="display: block;">

                            <h2 class="h1 margin-top-10 ">เจนเนอราลี่ประกันภัย ชั้น 1 
                <span class="price h1 ">13,965.64                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน เจนเนอราลี่ประกันภัย" href="/บริษัทประกัน/เจนเนอราลี่ประกันภัย/623" id="imgLocation3306">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/GIT.png" alt="บริษัทประกัน เจนเนอราลี่ประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail3306" onclick="detail('3306','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เจนเนอราลี่ประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">148</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare3306" onclick="compare_product('3306')" data-id="MzMwNg==" data-price="MTM5NjUuNjQ=" data-price-n="MTM5NjUuNjQ=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('3306','C')" id="payment3306" data-c="MjUwMDAw" data-p="MTMwMDAuMDA=" data-pv="MTM5NjUuNjQ=" data-vat="NTI=" data-tax="OTEzLjY0" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_1958" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie1958" data-range="13350.00" style="display: block;">

                            <h2 class="h1 margin-top-10 ">สินทรัพย์ประกันภัย ชั้น 1 
                <span class="price h1 ">14,342.28                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน สินทรัพย์ประกันภัย" href="/บริษัทประกัน/สินทรัพย์ประกันภัย/22" id="imgLocation1958">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/AIC.png" alt="บริษัทประกัน สินทรัพย์ประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail1958" onclick="detail('1958','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('สินทรัพย์ประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">179</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare1958" onclick="compare_product('1958')" data-id="MTk1OA==" data-price="MTQzNDIuMjg=" data-price-n="MTQzNDIuMjg=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('1958','C')" id="payment1958" data-c="MjUwMDAw" data-p="MTMzNTAuMDA=" data-pv="MTQzNDIuMjg=" data-vat="NTQ=" data-tax="OTM4LjI4" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_3353" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie3353" data-range="14067" style="display: block;">

                            <h2 class="h1 margin-top-10 ">อาคเนย์ประกันภัย ชั้น 1 
                <span class="price h1 ">15,112.68                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน อาคเนย์ประกันภัย" href="/บริษัทประกัน/อาคเนย์ประกันภัย/84" id="imgLocation3353">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/SEI.png" alt="บริษัทประกัน อาคเนย์ประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail3353" onclick="detail('3353','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('อาคเนย์ประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">506</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare3353" onclick="compare_product('3353')" data-id="MzM1Mw==" data-price="MTUxMTIuNjg=" data-price-n="MTUxMTIuNjg=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('3353','C')" id="payment3353" data-c="MjUwMDAw" data-p="MTQwNjc=" data-pv="MTUxMTIuNjg=" data-vat="NTc=" data-tax="OTg4LjY4" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_4603" class="searh-sort">
                        <div class="item insure1 promo promo-motorforlady salaryman search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie4603" data-range="14480" style="display: block;">
                            <span class="promo-content promo promo-motorforlady salaryman">ประกันรถยนต์มนุษย์เงินเดือน : วันนี้ - 31 ธันวาคม 2560                 </span>

                            <h2 class="h1 margin-top-10 promo promo-motorforlady salaryman">กรุงเทพประกันภัย ชั้น 1 
                <span class="price h1 promo promo-motorforlady salaryman">15,555.66                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation4603">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/logo_salaryman.png" alt="บริษัทประกัน กรุงเทพประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail4603" onclick="detail('4603','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('กรุงเทพประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare4603" onclick="compare_product('4603')" data-id="NDYwMw==" data-price="MTU1NTUuNjY=" data-price-n="MTU1NTUuNjY=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('4603','C')" id="payment4603" data-c="MjUwMDAw" data-p="MTQ0ODA=" data-pv="MTU1NTUuNjY=" data-vat="NTg=" data-tax="MTAxNy42Ng==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_11731" class="searh-sort">
                        <div class="item insure1 promo promo-motorforlady salaryman search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11731" data-range="14893.00" style="display: block;">
                            <span class="promo-content promo promo-motorforlady salaryman">ประกันรถยนต์มนุษย์เงินเดือน : วันนี้ - 31 ธันวาคม 2560                 </span>
                            <h2 class="h1 margin-top-10 promo promo-motorforlady salaryman">กรุงเทพประกันภัย ชั้น 1 
                <span class="price h1 promo promo-motorforlady salaryman">15,999.71                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน กรุงเทพประกันภัย" href="/บริษัทประกัน/กรุงเทพประกันภัย/1" id="imgLocation11731">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/logo_salaryman.png" alt="บริษัทประกัน กรุงเทพประกันภัย ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11731','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">729</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11731" onclick="compare_product('11731')" data-id="MTE3MzE=" data-price="MTU5OTkuNzE=" data-price-n="MTU5OTkuNzE=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11731','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_2377" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie2377" data-range="15281" style="display: block;">

                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 1 
                <span class="price h1 ">16,417.01                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation2377">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail2377" onclick="detail('2377','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เทเวศประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare2377" onclick="compare_product('2377')" data-id="MjM3Nw==" data-price="MTY0MTcuMDE=" data-price-n="MTY0MTcuMDE=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('2377','C')" id="payment2377" data-c="MjUwMDAw" data-p="MTUyODE=" data-pv="MTY0MTcuMDE=" data-vat="NjI=" data-tax="MTA3NC4wMQ==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_11106" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie11106" data-range="15358.00" style="display: block;">
                            <h2 class="h1 margin-top-10 ">เทเวศประกันภัย ชั้น 1 
                <span class="price h1 ">16,499.40                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน เทเวศประกันภัย" href="/บริษัทประกัน/เทเวศประกันภัย/39" id="imgLocation11106">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/DVS.png" alt="บริษัทประกัน เทเวศประกันภัย ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('11106','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(2);$('#new_garage').submit();" href="#" style="margin: 0px;">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare11106" onclick="compare_product('11106')" data-id="MTExMDY=" data-price="MTY0OTkuNDA=" data-price-n="MTY0OTkuNDA=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('11106','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_14900" class="searh-sort">
                        <div class="item insure9  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14900" data-range="15358.56" style="display: block;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 1 
                <span class="price h1 ">16,500.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14900">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมศูนย์</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14900','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(1);$('#new_garage').submit();" href="#" style="margin: 0px;">259</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14900" onclick="compare_product('14900')" data-id="MTQ5MDA=" data-price="MTY1MDAuMDA=" data-price-n="MTY1MDAuMDA=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14900','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_4429" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie4429" data-range="15500.00" style="display: block;">

                            <h2 class="h1 margin-top-10 ">แอลเอ็มจีประกันภัย ชั้น 1 
                <span class="price h1 ">16,651.34                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน แอลเอ็มจีประกันภัย" href="/บริษัทประกัน/แอลเอ็มจีประกันภัย/55" id="imgLocation4429">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/LMG.png" alt="บริษัทประกัน แอลเอ็มจีประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail4429" onclick="detail('4429','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('แอลเอ็มจีประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">451</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare4429" onclick="compare_product('4429')" data-id="NDQyOQ==" data-price="MTY2NTEuMzQ=" data-price-n="MTY2NTEuMzQ=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('4429','C')" id="payment4429" data-c="MjUwMDAw" data-p="MTU1MDAuMDA=" data-pv="MTY2NTEuMzQ=" data-vat="NjI=" data-tax="MTA4OS4zNA==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_16014" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie16014" data-range="15737" style="display: block;">

                            <h2 class="h1 margin-top-10 ">วิริยะประกันภัย ชั้น 1 
                <span class="price h1 ">16,906.00                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน วิริยะประกันภัย" href="/บริษัทประกัน/วิริยะประกันภัย/141" id="imgLocation16014">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/VIS.png" alt="บริษัทประกัน วิริยะประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail16014" onclick="detail('16014','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('วิริยะประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">385</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare16014" onclick="compare_product('16014')" data-id="MTYwMTQ=" data-price="MTY5MDY=" data-price-n="MTY5MDY=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('16014','C')" id="payment16014" data-c="MjUwMDAw" data-p="MTU3Mzc=" data-pv="MTY5MDY=" data-vat="NjM=" data-tax="MTEwNg==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_4897" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie4897" data-range="15990" style="display: block;">

                            <h2 class="h1 margin-top-10 ">เอ็ม เอส ไอ จี ชั้น 1 
                <span class="price h1 ">17,177.78                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน เอ็ม เอส ไอ จี" href="/บริษัทประกัน/เอ็ม เอส ไอ จี/58" id="imgLocation4897">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MSI.png" alt="บริษัทประกัน เอ็ม เอส ไอ จี">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail4897" onclick="detail('4897','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เอ็มเอสไอจีประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">376</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare4897" onclick="compare_product('4897')" data-id="NDg5Nw==" data-price="MTcxNzcuNzg=" data-price-n="MTcxNzcuNzg=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('4897','C')" id="payment4897" data-c="MjUwMDAw" data-p="MTU5OTA=" data-pv="MTcxNzcuNzg=" data-vat="NjQ=" data-tax="MTEyMy43OA==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_4485" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie4485" data-range="16393" style="display: block;">

                            <h2 class="h1 margin-top-10 ">เมืองไทยประกันภัย ชั้น 1 
                <span class="price h1 ">17,611.13                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน เมืองไทยประกันภัย" href="/บริษัทประกัน/เมืองไทยประกันภัย/59" id="imgLocation4485">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/MTI.png" alt="บริษัทประกัน เมืองไทยประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail4485" onclick="detail('4485','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('เมืองไทยประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">588</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare4485" onclick="compare_product('4485')" data-id="NDQ4NQ==" data-price="MTc2MTEuMTM=" data-price-n="MTc2MTEuMTM=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('4485','C')" id="payment4485" data-c="MjUwMDAw" data-p="MTYzOTM=" data-pv="MTc2MTEuMTM=" data-vat="NjY=" data-tax="MTE1Mi4xMw==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_16020" class="searh-sort">
                        <div class="item insure9  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie16020" data-range="17452" style="display: block;">

                            <h2 class="h1 margin-top-10 ">วิริยะประกันภัย ชั้น 1 
                <span class="price h1 ">18,748.54                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน วิริยะประกันภัย" href="/บริษัทประกัน/วิริยะประกันภัย/141" id="imgLocation16020">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/VIS.png" alt="บริษัทประกัน วิริยะประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมศูนย์</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail16020" onclick="detail('16020','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('วิริยะประกันภัย');$('#garage_claim_type').val('1');$('#new_garage').submit();" href="#">435</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare16020" onclick="compare_product('16020')" data-id="MTYwMjA=" data-price="MTg3NDguNTQ=" data-price-n="MTg3NDguNTQ=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('16020','C')" id="payment16020" data-c="MjgwMDAw" data-p="MTc0NTI=" data-pv="MTg3NDguNTQ=" data-vat="NzA=" data-tax="MTIyNi41NA==" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_5031" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie5031" data-range="17888" style="display: block;">

                            <h2 class="h1 margin-top-10 ">ทิพยประกันภัย ชั้น 1 
                <span class="price h1 ">19,217.20                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน ทิพยประกันภัย" href="/บริษัทประกัน/ทิพยประกันภัย/32" id="imgLocation5031">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/CHP.png" alt="บริษัทประกัน ทิพยประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail5031" onclick="detail('5031','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('ทิพยประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">723</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare5031" onclick="compare_product('5031')" data-id="NTAzMQ==" data-price="MTkyMTcuMg==" data-price-n="MTkyMTcuMg==" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('5031','C')" id="payment5031" data-c="MjUwMDAw" data-p="MTc4ODg=" data-pv="MTkyMTcuMg==" data-vat="NzI=" data-tax="MTI1Ny4y" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                    <div id="searh_14868" class="searh-sort">
                        <div class="item insure9  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie14868" data-range="18897.00" style="display: block;">
                            <h2 class="h1 margin-top-10 ">ประกันภัยไทยวิวัฒน์ ชั้น 1 
                <span class="price h1 ">20,301.11                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col-lg-2">
                                <a title="บริษัทประกัน ประกันภัยไทยวิวัฒน์" href="/บริษัทประกัน/ประกันภัยไทยวิวัฒน์/107" id="imgLocation14868">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/TVI.png" alt="บริษัทประกัน ประกันภัยไทยวิวัฒน์ ชั้น 1"></a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมศูนย์</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 280,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" onclick="detail('14868','MT')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('');$('#garage_claim_type').val(1);$('#new_garage').submit();" href="#" style="margin: 0px;">259</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-warning"><i class="fa fa-close"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare14868" onclick="compare_product('14868')" data-id="MTQ4Njg=" data-price="MjAzMDEuMTE=" data-price-n="MjAzMDEuMTE=" data-age="" data-price-cover="MjgwMDAw"><span>เปรียบเทียบ</span></a>

                                <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('14868','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>
                            </div>
                        </div>
                    </div>
                    <div id="searh_3388" class="searh-sort">
                        <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" id="addclasscookie3388" data-range="19153.00" style="display: block;">

                            <h2 class="h1 margin-top-10 ">สามัคคีประกันภัย ชั้น 1 
                <span class="price h1 ">20,576.10                    
                    <small class="padding-left-10">บาท</small>
                </span>
                            </h2>
                            <div class="image col-sm-2 col-mb-2 col -lg-2">
                                <a title="บริษัทประกัน สามัคคีประกันภัย" href="/บริษัทประกัน/สามัคคีประกันภัย/502" id="imgLocation3388">
                                    <img class="discount_age" src="/img/upload/banners/company_ins/SCSMG.png" alt="บริษัทประกัน สามัคคีประกันภัย">
                                </a>
                            </div>
                            <div class="col-sm-10 col-mb-7 col-lg-8 small-font">
                                <ul class="reset-padding col-sm-6 col-lg-4 padding-right-20">
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ประเภท
                                        </div>
                                        <span class="col-sm-6">: เก๋ง</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ซ่อม
                                        </div>
                                        <span class="col-sm-6">: ซ่อมอู่</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ทุนประกัน
                                        </div>
                                        <span class="col-sm-6">: 250,000</span>
                                    </li>
                                    <li class="row">
                                        <div class="col-sm-6 ta-text">
                                            ค่าเสียหายส่วนแรก
                                        </div>
                                        <span class="col-sm-6">: -</span>
                                    </li>
                                    <li class="row">
                                        <a href="#" id="detail3388" onclick="detail('3388','C')" class="ta-link margin-top-10 clear">รายละเอียดเพิ่มเติม &gt;&gt;</a>
                                    </li>
                                </ul>
                                <ul class="special-search-lg col-sm-6 col-lg-8">
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/garage.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            จำนวน<span class="break-line">อู่</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12">
                                            <a title="อู่ซ่อมรถ" class="garage" onclick="$('#garage_company').val('สามัคคีประกันภัย');$('#garage_claim_type').val('2');$('#new_garage').submit();" href="#">254</a>
                                        </span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/boom.png" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ภัย<span class="break-line">ก่อการร้าย</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/water_car.png" class="margin-top-10" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            น้ำ<span class="break-line">ท่วม</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                    <li class="col-lg-3">
                                        <img src="/assets3/images/page_search/car.png" class="margin-top-7" alt="ประกันรถยนต์">
                                        <div class="col-sm-9 col-lg-12 ta-text">
                                            ตรวจ<span class="break-line">สภาพ</span>
                                        </div>
                                        <span class="col-sm-3 col-lg-12 color-blue"><i class="fa fa-check"></i></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="ta-btn col-sm-12 col-mb-3 col-lg-2">
                                <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare3388" onclick="compare_product('3388')" data-id="MzM4OA==" data-price="MjA1NzYuMQ==" data-price-n="MjA1NzYuMQ==" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                                <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('3388','C')" id="payment3388" data-c="MjUwMDAw" data-p="MTkxNTMuMDA=" data-pv="MjA1NzYuMQ==" data-vat="Nzc=" data-tax="MTM0Ni4x" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
                                    <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">สนใจ</a>

                            </div>
                        </div>
                    </div>
                </div>
                <!--div ไม่พบสินค้า-->
                <div class="item none_product search-list ta-blue padding-20 margin-bottom-20 clearfix" style="overflow: auto; display: none;">
                    <p class="name" style="float: left">
                        ไม่พบประกันที่คุณต้องการ<br>
                        กรุณากดปุ่ม "ขอราคา" เพื่อให้เจ้าหน้าที่ติดต่อกลับ
                    </p>
                    <div class="right">
                        <a title="สินค้า ประกันรถยนต์" href="#" onclick="Submit_ssion('','C')" class="reserve button-1 blue paddingbut">
                            <img src="/assets3/images/page_search/bg_button.png" alt="ประกันรถยนต์">ขอราคา</a>
                    </div>
                </div>

                <form action="/carservice/repair/result" method="post" id="new_garage">
                    <input type="hidden" value="" id="garage_province" name="garage_province">
                    <input type="hidden" value="" id="garage_company" name="garage_company">
                    <input type="hidden" value="" id="garage_claim_type" name="garage_claim_type">
                </form>

                <form action="/session.php" method="post" id="parse_value">
                    <!--GET VALUE HIDDEN-->
                    <input type="hidden" value="11" id="hot_id" name="hot_id">
                    <input type="hidden" value="0.00" id="hot_value" name="hot_value">
                    <input type="hidden" value="CITY" id="carmodel_loadsave" name="carmodel">
                    <input type="hidden" value="2012" id="caryear_loadsave" name="caryear">
                    <input type="hidden" value="HOND" id="carbrand_loadsave" name="carbrand">
                    <input type="hidden" value="HOND12BV" id="VEHICLEKEY_LOAD" name="VEHICLEKEY">
                    <input type="hidden" value="" id="CARCHECK" name="CARCHECK">
                    <input type="hidden" value="110" id="CARUSAGE_LOAD" name="CARUSAGE">
                    <input type="hidden" value="1.5" id="CC_LOAD" name="CC">
                    <input type="hidden" value="1.5" id="Fixed_CC" name="Fixed_CC">
                    <input type="hidden" value="" id="Current" name="COVER">
                    <input type="hidden" value="C" id="current_Stage">
                    <input type="hidden" value="" id="PRODUCTID" name="PRODUCTID">
                    <input type="hidden" value="" id="PRODUCTTYPE" name="PRODUCTTYPE">
                    <input type="hidden" value="" id="Hidden1" name="PRODUCTPLAN">
                    <input type="hidden" value="1" name="insurelevel_class" id="insurelevel_class">
                    <input type="hidden" value="1.5" name="condition_cc" id="condition_cc">
                    <input type="hidden" value="" name="click_cc_condition" id="click_cc_condition">
                    <input type="hidden" value="" name="COVER" id="COVER">
                    <!--ทุนประกัน-->
                    <input type="hidden" value="" name="AMOUNT" id="AMOUNT">
                    <input type="hidden" value="" name="AMOUNTNET" id="AMOUNTNET">
                    <input type="hidden" value="" name="TAX" id="TAX">
                    <input type="hidden" value="" name="VAT" id="VAT">
                    <input type="hidden" value="" name="insurelevel_quotation" id="insurelevel_quotation">
                    <input type="hidden" value="" name="CoverMin_quotation" id="CoverMin_quotation">
                    <input type="hidden" value="" name="CoverMax_quotation" id="CoverMax_quotation">
                    <input type="hidden" value="" name="carusage_quotation" id="carusage_quotation">
                    <input type="hidden" value="" name="CoverFixed80_quotation" id="CoverFixed80_quotation">
                    <input type="hidden" value="" name="MX_AGEDISCOUNT" id="MX_AGEDISCOUNT">
                    <input type="hidden" value="" name="check_promotion_matrix" id="check_promotion_matrix">
                    <input type="hidden" value="" name="check_promotion_procode20" id="check_promotion_procode20">
                    <input type="hidden" value="" name="check_promotion_procode30" id="check_promotion_procode30">
                    <input type="hidden" value="" name="check_promotion_procode30" id="Hidden2">

                    <!--GET VALUE HIDDEN-->
                </form>

                <script type="text/javascript">
                    var Age_price_amount = "MTMwMDAuMDA=";
                    var Age_price_vat = "";
                    var Age_vat = "";
                    var Age_tax = "";
                    var Age = "";
                    var Age_compare = "fDEx";
                    var Promotion = "";
                    var jArrayPrice = [{ "id": "4603", "name": 14480 }, { "id": "4485", "name": 16393 }, { "id": "3353", "name": 14067 }, { "id": "5031", "name": 17888 }, { "id": "16014", "name": 15737 }, { "id": "16020", "name": 17452 }, { "id": "3388", "name": "19153.00" }, { "id": "4429", "name": "15500.00" }, { "id": "4897", "name": 15990 }, { "id": "1958", "name": "13350.00" }, { "id": "2377", "name": 15281 }, { "id": "3306", "name": "13000.00" }, { "id": "12451", "name": "5492.00" }, { "id": "12453", "name": "6423.00" }, { "id": "13471", "name": "6423.00" }, { "id": "5207", "name": "6982.00" }, { "id": "5211", "name": "7354.00" }, { "id": "13475", "name": "7354.00" }, { "id": "13478", "name": "7912.00" }, { "id": "12144", "name": "7353.18" }, { "id": "12102", "name": "7353.18" }, { "id": "12104", "name": "8191.30" }, { "id": "12146", "name": "8367.87" }, { "id": "12116", "name": "8376.28" }, { "id": "12118", "name": "8842.50" }, { "id": "11731", "name": "14893.00" }, { "id": "13806", "name": "1767.00" }, { "id": "8646", "name": "1999.00" }, { "id": "8649", "name": "2140.00" }, { "id": "13779", "name": "6236.00" }, { "id": "13780", "name": "6422.00" }, { "id": "13781", "name": "6608.00" }, { "id": "8652", "name": "6702.00" }, { "id": "13782", "name": "6794.00" }, { "id": "13752", "name": "6887.00" }, { "id": "8653", "name": "7073.00" }, { "id": "13753", "name": "7073.00" }, { "id": "8619", "name": "7353.00" }, { "id": "13754", "name": "7446.00" }, { "id": "8620", "name": "7539.00" }, { "id": "8654", "name": "7632.00" }, { "id": "8621", "name": "7726.00" }, { "id": "13755", "name": "7818.00" }, { "id": "8622", "name": "7911.00" }, { "id": "8614", "name": "8238.00" }, { "id": "8615", "name": "8750.00" }, { "id": "12178", "name": "2326.00" }, { "id": "12167", "name": "6049.00" }, { "id": "12168", "name": "6981.00" }, { "id": "12156", "name": "7447.00" }, { "id": "12157", "name": "8377.00" }, { "id": "14989", "name": "4801.00" }, { "id": "14991", "name": "5780.00" }, { "id": "7275", "name": "2930.00" }, { "id": "7272", "name": "3954.00" }, { "id": "7158", "name": "7354.00" }, { "id": "7173", "name": "7818.00" }, { "id": "7080", "name": "8285.00" }, { "id": "7161", "name": "8285.00" }, { "id": "7095", "name": "8750.00" }, { "id": "7176", "name": "8843.00" }, { "id": "7083", "name": "9215.00" }, { "id": "7098", "name": "9773.00" }, { "id": "6267", "name": "4654.00" }, { "id": "14635", "name": "2234.00" }, { "id": "14639", "name": "2512.00" }, { "id": "8566", "name": "2792.52" }, { "id": "8564", "name": "3257.94" }, { "id": "14622", "name": "3723.00" }, { "id": "14629", "name": "4468.00" }, { "id": "10163", "name": "5119.00" }, { "id": "14715", "name": "5584.00" }, { "id": "14667", "name": "6050.00" }, { "id": "14727", "name": "6050.00" }, { "id": "14719", "name": "6329.00" }, { "id": "14691", "name": "6423.00" }, { "id": "14643", "name": "6515.00" }, { "id": "14703", "name": "6702.00" }, { "id": "14695", "name": "6794.00" }, { "id": "14731", "name": "6794.00" }, { "id": "14671", "name": "6981.00" }, { "id": "14679", "name": "6981.00" }, { "id": "14655", "name": "7353.00" }, { "id": "14647", "name": "7447.00" }, { "id": "14707", "name": "7633.00" }, { "id": "14683", "name": "7912.00" }, { "id": "14659", "name": "8284.00" }, { "id": "11076", "name": "1861.00" }, { "id": "11078", "name": "2466.00" }, { "id": "11038", "name": "3165.00" }, { "id": "11039", "name": "3351.00" }, { "id": "11040", "name": "3537.00" }, { "id": "11007", "name": "5770.00" }, { "id": "11023", "name": "6050.00" }, { "id": "11011", "name": "6236.00" }, { "id": "10983", "name": "6422.00" }, { "id": "11014", "name": "6422.00" }, { "id": "10995", "name": "6702.00" }, { "id": "11027", "name": "6794.00" }, { "id": "11020", "name": "6887.00" }, { "id": "11031", "name": "7073.00" }, { "id": "10986", "name": "7259.00" }, { "id": "10989", "name": "7446.00" }, { "id": "11037", "name": "7539.00" }, { "id": "10998", "name": "7632.00" }, { "id": "10992", "name": "7911.00" }, { "id": "11001", "name": "8004.00" }, { "id": "11004", "name": "8376.00" }, { "id": "11106", "name": "15358.00" }, { "id": "12479", "name": "5864.00" }, { "id": "12480", "name": "6982.00" }, { "id": "14859", "name": "2402.00" }, { "id": "14857", "name": "2681.00" }, { "id": "14865", "name": "5864.00" }, { "id": "14861", "name": "6795.00" }, { "id": "14919", "name": "6795.00" }, { "id": "15005", "name": "6982.00" }, { "id": "14862", "name": "7726.00" }, { "id": "14915", "name": "7726.00" }, { "id": "14916", "name": "9122.00" }, { "id": "14884", "name": "12565.82" }, { "id": "14900", "name": "15358.56" }, { "id": "14868", "name": "18897.00" }, { "id": "12530", "name": "5398.00" }, { "id": "12531", "name": "6329.00" }, { "id": "12532", "name": "6794.00" }];
                    var jArrayCover = [{ "id": "4603", "name": "250000" }, { "id": "4485", "name": "250000" }, { "id": "3353", "name": "250000" }, { "id": "5031", "name": "250000" }, { "id": "16014", "name": "250000" }, { "id": "16020", "name": "280000" }, { "id": "3388", "name": "250000" }, { "id": "4429", "name": "250000" }, { "id": "4897", "name": "250000" }, { "id": "1958", "name": "250000" }, { "id": "2377", "name": "250000" }, { "id": "3306", "name": "250000" }, { "id": "12451", "name": "100000.00" }, { "id": "12453", "name": "200000.00" }, { "id": "13471", "name": "100000.00" }, { "id": "5207", "name": "100000.00" }, { "id": "5211", "name": "100000.00" }, { "id": "13475", "name": "150000.00" }, { "id": "13478", "name": "200000.00" }, { "id": "12144", "name": "100000.00" }, { "id": "12102", "name": "100000.00" }, { "id": "12104", "name": "200000.00" }, { "id": "12146", "name": "150000.00" }, { "id": "12116", "name": "100000.00" }, { "id": "12118", "name": "200000.00" }, { "id": "11731", "name": "280000" }, { "id": "13806", "name": "0.00" }, { "id": "8646", "name": "0.00" }, { "id": "8649", "name": "0.00" }, { "id": "13779", "name": "100000.00" }, { "id": "13780", "name": "150000.00" }, { "id": "13781", "name": "200000.00" }, { "id": "8652", "name": "100000.00" }, { "id": "13782", "name": "250000" }, { "id": "13752", "name": "100000.00" }, { "id": "8653", "name": "150000.00" }, { "id": "13753", "name": "150000.00" }, { "id": "8619", "name": "100000.00" }, { "id": "13754", "name": "200000.00" }, { "id": "8620", "name": "150000.00" }, { "id": "8654", "name": "200000.00" }, { "id": "8621", "name": "200000.00" }, { "id": "13755", "name": "250000" }, { "id": "8622", "name": "250000" }, { "id": "8614", "name": "100000.00" }, { "id": "8615", "name": "200000.00" }, { "id": "12178", "name": "0.00" }, { "id": "12167", "name": "100000.00" }, { "id": "12168", "name": "200000.00" }, { "id": "12156", "name": "100000.00" }, { "id": "12157", "name": "200000.00" }, { "id": "14989", "name": "100000.00" }, { "id": "14991", "name": "150000.00" }, { "id": "7275", "name": "0.00" }, { "id": "7272", "name": "0.00" }, { "id": "7158", "name": "100000.00" }, { "id": "7173", "name": "100000.00" }, { "id": "7080", "name": "100000.00" }, { "id": "7161", "name": "200000.00" }, { "id": "7095", "name": "100000.00" }, { "id": "7176", "name": "200000.00" }, { "id": "7083", "name": "200000.00" }, { "id": "7098", "name": "200000.00" }, { "id": "6267", "name": "50000.00" }, { "id": "14635", "name": "0.00" }, { "id": "14639", "name": "0.00" }, { "id": "8566", "name": "0.00" }, { "id": "8564", "name": "0.00" }, { "id": "14622", "name": "0.00" }, { "id": "14629", "name": "0.00" }, { "id": "10163", "name": "50000.00" }, { "id": "14715", "name": "100000.00" }, { "id": "14667", "name": "100000.00" }, { "id": "14727", "name": "100000.00" }, { "id": "14719", "name": "200000.00" }, { "id": "14691", "name": "100000.00" }, { "id": "14643", "name": "100000.00" }, { "id": "14703", "name": "100000.00" }, { "id": "14695", "name": "200000.00" }, { "id": "14731", "name": "200000.00" }, { "id": "14671", "name": "200000.00" }, { "id": "14679", "name": "100000.00" }, { "id": "14655", "name": "100000.00" }, { "id": "14647", "name": "200000.00" }, { "id": "14707", "name": "200000.00" }, { "id": "14683", "name": "200000.00" }, { "id": "14659", "name": "200000.00" }, { "id": "11076", "name": "0.00" }, { "id": "11078", "name": "0.00" }, { "id": "11038", "name": "0.00" }, { "id": "11039", "name": "0.00" }, { "id": "11040", "name": "0.00" }, { "id": "11007", "name": "100000.00" }, { "id": "11023", "name": "100000.00" }, { "id": "11011", "name": "200000.00" }, { "id": "10983", "name": "100000.00" }, { "id": "11014", "name": "100000.00" }, { "id": "10995", "name": "100000.00" }, { "id": "11027", "name": "200000.00" }, { "id": "11020", "name": "200000.00" }, { "id": "11031", "name": "100000.00" }, { "id": "10986", "name": "200000.00" }, { "id": "10989", "name": "100000.00" }, { "id": "11037", "name": "200000.00" }, { "id": "10998", "name": "200000.00" }, { "id": "10992", "name": "200000.00" }, { "id": "11001", "name": "100000.00" }, { "id": "11004", "name": "200000.00" }, { "id": "11106", "name": "280000" }, { "id": "12479", "name": "100000.00" }, { "id": "12480", "name": "200000.00" }, { "id": "14859", "name": "0.00" }, { "id": "14857", "name": "0.00" }, { "id": "14865", "name": "100000.00" }, { "id": "14861", "name": "100000.00" }, { "id": "14919", "name": "100000.00" }, { "id": "15005", "name": "100000.00" }, { "id": "14862", "name": "200000.00" }, { "id": "14915", "name": "100000.00" }, { "id": "14916", "name": "200000.00" }, { "id": "14884", "name": "280000" }, { "id": "14900", "name": "280000" }, { "id": "14868", "name": "280000" }, { "id": "12530", "name": "50000.00" }, { "id": "12531", "name": "100000.00" }, { "id": "12532", "name": "150000.00" }];
                    var jArrayGarage = [{ "id": "4603", "name": "729" }, { "id": "4485", "name": "588" }, { "id": "3353", "name": "506" }, { "id": "5031", "name": "723" }, { "id": "16014", "name": "385" }, { "id": "16020", "name": "435" }, { "id": "3388", "name": "254" }, { "id": "4429", "name": "451" }, { "id": "4897", "name": "376" }, { "id": "1958", "name": "179" }, { "id": "2377", "name": "588" }, { "id": "3306", "name": "148" }, { "id": "12451", "name": "1244" }, { "id": "12453", "name": "1244" }, { "id": "13471", "name": "1244" }, { "id": "5207", "name": "1244" }, { "id": "5211", "name": "1244" }, { "id": "13475", "name": "1244" }, { "id": "13478", "name": "1244" }, { "id": "12144", "name": "729" }, { "id": "12102", "name": "729" }, { "id": "12104", "name": "729" }, { "id": "12146", "name": "729" }, { "id": "12116", "name": "729" }, { "id": "12118", "name": "729" }, { "id": "11731", "name": "729" }, { "id": "13806", "name": "588" }, { "id": "8646", "name": "588" }, { "id": "8649", "name": "588" }, { "id": "13779", "name": "588" }, { "id": "13780", "name": "588" }, { "id": "13781", "name": "588" }, { "id": "8652", "name": "588" }, { "id": "13782", "name": "588" }, { "id": "13752", "name": "588" }, { "id": "8653", "name": "588" }, { "id": "13753", "name": "588" }, { "id": "8619", "name": "588" }, { "id": "13754", "name": "588" }, { "id": "8620", "name": "588" }, { "id": "8654", "name": "588" }, { "id": "8621", "name": "588" }, { "id": "13755", "name": "588" }, { "id": "8622", "name": "588" }, { "id": "8614", "name": "588" }, { "id": "8615", "name": "588" }, { "id": "12178", "name": "723" }, { "id": "12167", "name": "723" }, { "id": "12168", "name": "723" }, { "id": "12156", "name": "723" }, { "id": "12157", "name": "723" }, { "id": "14989", "name": "525" }, { "id": "14991", "name": "525" }, { "id": "7275", "name": "451" }, { "id": "7272", "name": "451" }, { "id": "7158", "name": "451" }, { "id": "7173", "name": "451" }, { "id": "7080", "name": "451" }, { "id": "7161", "name": "451" }, { "id": "7095", "name": "451" }, { "id": "7176", "name": "451" }, { "id": "7083", "name": "451" }, { "id": "7098", "name": "451" }, { "id": "6267", "name": "809" }, { "id": "14635", "name": "376" }, { "id": "14639", "name": "376" }, { "id": "8566", "name": "376" }, { "id": "8564", "name": "376" }, { "id": "14622", "name": "376" }, { "id": "14629", "name": "376" }, { "id": "10163", "name": "376" }, { "id": "14715", "name": "376" }, { "id": "14667", "name": "376" }, { "id": "14727", "name": "376" }, { "id": "14719", "name": "376" }, { "id": "14691", "name": "376" }, { "id": "14643", "name": "376" }, { "id": "14703", "name": "376" }, { "id": "14695", "name": "376" }, { "id": "14731", "name": "376" }, { "id": "14671", "name": "376" }, { "id": "14679", "name": "376" }, { "id": "14655", "name": "376" }, { "id": "14647", "name": "376" }, { "id": "14707", "name": "376" }, { "id": "14683", "name": "376" }, { "id": "14659", "name": "376" }, { "id": "11076", "name": "588" }, { "id": "11078", "name": "588" }, { "id": "11038", "name": "588" }, { "id": "11039", "name": "588" }, { "id": "11040", "name": "588" }, { "id": "11007", "name": "588" }, { "id": "11023", "name": "588" }, { "id": "11011", "name": "588" }, { "id": "10983", "name": "588" }, { "id": "11014", "name": "588" }, { "id": "10995", "name": "588" }, { "id": "11027", "name": "588" }, { "id": "11020", "name": "588" }, { "id": "11031", "name": "588" }, { "id": "10986", "name": "588" }, { "id": "10989", "name": "588" }, { "id": "11037", "name": "588" }, { "id": "10998", "name": "588" }, { "id": "10992", "name": "588" }, { "id": "11001", "name": "588" }, { "id": "11004", "name": "588" }, { "id": "11106", "name": "588" }, { "id": "12479", "name": "439" }, { "id": "12480", "name": "439" }, { "id": "14859", "name": "1293" }, { "id": "14857", "name": "1293" }, { "id": "14865", "name": "1293" }, { "id": "14861", "name": "1293" }, { "id": "14919", "name": "1293" }, { "id": "15005", "name": "1293" }, { "id": "14862", "name": "1293" }, { "id": "14915", "name": "1293" }, { "id": "14916", "name": "1293" }, { "id": "14884", "name": "1293" }, { "id": "14900", "name": "259" }, { "id": "14868", "name": "259" }, { "id": "12530", "name": "148" }, { "id": "12531", "name": "148" }, { "id": "12532", "name": "148" }];
                    var jArraySortby = [{ "id": "4603", "name": "1" }, { "id": "4485", "name": "2" }, { "id": "3353", "name": "3" }, { "id": "5031", "name": "4" }, { "id": "16014", "name": "5" }, { "id": "16020", "name": "5" }, { "id": "3388", "name": "7" }, { "id": "4429", "name": "8" }, { "id": "4897", "name": "10" }, { "id": "1958", "name": "11" }, { "id": "2377", "name": "13" }, { "id": "3306", "name": "17" }, { "id": "12451", "name": null }, { "id": "12453", "name": null }, { "id": "13471", "name": null }, { "id": "5207", "name": null }, { "id": "5211", "name": null }, { "id": "13475", "name": null }, { "id": "13478", "name": null }, { "id": "12144", "name": "1" }, { "id": "12102", "name": "1" }, { "id": "12104", "name": "1" }, { "id": "12146", "name": "1" }, { "id": "12116", "name": "1" }, { "id": "12118", "name": "1" }, { "id": "11731", "name": "1" }, { "id": "13806", "name": "2" }, { "id": "8646", "name": "2" }, { "id": "8649", "name": "2" }, { "id": "13779", "name": "2" }, { "id": "13780", "name": "2" }, { "id": "13781", "name": "2" }, { "id": "8652", "name": "2" }, { "id": "13782", "name": "2" }, { "id": "13752", "name": "2" }, { "id": "8653", "name": "2" }, { "id": "13753", "name": "2" }, { "id": "8619", "name": "2" }, { "id": "13754", "name": "2" }, { "id": "8620", "name": "2" }, { "id": "8654", "name": "2" }, { "id": "8621", "name": "2" }, { "id": "13755", "name": "2" }, { "id": "8622", "name": "2" }, { "id": "8614", "name": "2" }, { "id": "8615", "name": "2" }, { "id": "12178", "name": "4" }, { "id": "12167", "name": "4" }, { "id": "12168", "name": "4" }, { "id": "12156", "name": "4" }, { "id": "12157", "name": "4" }, { "id": "14989", "name": "6" }, { "id": "14991", "name": "6" }, { "id": "7275", "name": "8" }, { "id": "7272", "name": "8" }, { "id": "7158", "name": "8" }, { "id": "7173", "name": "8" }, { "id": "7080", "name": "8" }, { "id": "7161", "name": "8" }, { "id": "7095", "name": "8" }, { "id": "7176", "name": "8" }, { "id": "7083", "name": "8" }, { "id": "7098", "name": "8" }, { "id": "6267", "name": "9" }, { "id": "14635", "name": "10" }, { "id": "14639", "name": "10" }, { "id": "8566", "name": "10" }, { "id": "8564", "name": "10" }, { "id": "14622", "name": "10" }, { "id": "14629", "name": "10" }, { "id": "10163", "name": "10" }, { "id": "14715", "name": "10" }, { "id": "14667", "name": "10" }, { "id": "14727", "name": "10" }, { "id": "14719", "name": "10" }, { "id": "14691", "name": "10" }, { "id": "14643", "name": "10" }, { "id": "14703", "name": "10" }, { "id": "14695", "name": "10" }, { "id": "14731", "name": "10" }, { "id": "14671", "name": "10" }, { "id": "14679", "name": "10" }, { "id": "14655", "name": "10" }, { "id": "14647", "name": "10" }, { "id": "14707", "name": "10" }, { "id": "14683", "name": "10" }, { "id": "14659", "name": "10" }, { "id": "11076", "name": "13" }, { "id": "11078", "name": "13" }, { "id": "11038", "name": "13" }, { "id": "11039", "name": "13" }, { "id": "11040", "name": "13" }, { "id": "11007", "name": "13" }, { "id": "11023", "name": "13" }, { "id": "11011", "name": "13" }, { "id": "10983", "name": "13" }, { "id": "11014", "name": "13" }, { "id": "10995", "name": "13" }, { "id": "11027", "name": "13" }, { "id": "11020", "name": "13" }, { "id": "11031", "name": "13" }, { "id": "10986", "name": "13" }, { "id": "10989", "name": "13" }, { "id": "11037", "name": "13" }, { "id": "10998", "name": "13" }, { "id": "10992", "name": "13" }, { "id": "11001", "name": "13" }, { "id": "11004", "name": "13" }, { "id": "11106", "name": "13" }, { "id": "12479", "name": "14" }, { "id": "12480", "name": "14" }, { "id": "14859", "name": "15" }, { "id": "14857", "name": "15" }, { "id": "14865", "name": "15" }, { "id": "14861", "name": "15" }, { "id": "14919", "name": "15" }, { "id": "15005", "name": "15" }, { "id": "14862", "name": "15" }, { "id": "14915", "name": "15" }, { "id": "14916", "name": "15" }, { "id": "14884", "name": "15" }, { "id": "14900", "name": "15" }, { "id": "14868", "name": "15" }, { "id": "12530", "name": "17" }, { "id": "12531", "name": "17" }, { "id": "12532", "name": "17" }];
                    var jArraySortbyPromotion = [{ "id": "4603", "name": 1 }, { "id": "4485", "name": 16393 }, { "id": "3353", "name": 14067 }, { "id": "5031", "name": 17888 }, { "id": "16014", "name": 15737 }, { "id": "16020", "name": 17452 }, { "id": "3388", "name": "19153.00" }, { "id": "4429", "name": "15500.00" }, { "id": "4897", "name": 15990 }, { "id": "1958", "name": "13350.00" }, { "id": "2377", "name": 15281 }, { "id": "3306", "name": "13000.00" }, { "id": "12451", "name": "5492.00" }, { "id": "12453", "name": "6423.00" }, { "id": "13471", "name": "6423.00" }, { "id": "5207", "name": "6982.00" }, { "id": "5211", "name": "7354.00" }, { "id": "13475", "name": "7354.00" }, { "id": "13478", "name": "7912.00" }, { "id": "12144", "name": "7353.18" }, { "id": "12102", "name": "7353.18" }, { "id": "12104", "name": "8191.30" }, { "id": "12146", "name": "8367.87" }, { "id": "12116", "name": "8376.28" }, { "id": "12118", "name": "8842.50" }, { "id": "11731", "name": 1 }, { "id": "13806", "name": "1767.00" }, { "id": "8646", "name": "1999.00" }, { "id": "8649", "name": "2140.00" }, { "id": "13779", "name": "6236.00" }, { "id": "13780", "name": "6422.00" }, { "id": "13781", "name": "6608.00" }, { "id": "8652", "name": "6702.00" }, { "id": "13782", "name": "6794.00" }, { "id": "13752", "name": "6887.00" }, { "id": "8653", "name": "7073.00" }, { "id": "13753", "name": "7073.00" }, { "id": "8619", "name": "7353.00" }, { "id": "13754", "name": "7446.00" }, { "id": "8620", "name": "7539.00" }, { "id": "8654", "name": "7632.00" }, { "id": "8621", "name": "7726.00" }, { "id": "13755", "name": "7818.00" }, { "id": "8622", "name": "7911.00" }, { "id": "8614", "name": "8238.00" }, { "id": "8615", "name": "8750.00" }, { "id": "12178", "name": "2326.00" }, { "id": "12167", "name": "6049.00" }, { "id": "12168", "name": "6981.00" }, { "id": "12156", "name": "7447.00" }, { "id": "12157", "name": "8377.00" }, { "id": "14989", "name": "4801.00" }, { "id": "14991", "name": "5780.00" }, { "id": "7275", "name": "2930.00" }, { "id": "7272", "name": "3954.00" }, { "id": "7158", "name": "7354.00" }, { "id": "7173", "name": "7818.00" }, { "id": "7080", "name": "8285.00" }, { "id": "7161", "name": "8285.00" }, { "id": "7095", "name": "8750.00" }, { "id": "7176", "name": "8843.00" }, { "id": "7083", "name": "9215.00" }, { "id": "7098", "name": "9773.00" }, { "id": "6267", "name": "4654.00" }, { "id": "14635", "name": "2234.00" }, { "id": "14639", "name": "2512.00" }, { "id": "8566", "name": "2792.52" }, { "id": "8564", "name": "3257.94" }, { "id": "14622", "name": "3723.00" }, { "id": "14629", "name": "4468.00" }, { "id": "10163", "name": "5119.00" }, { "id": "14715", "name": "5584.00" }, { "id": "14667", "name": "6050.00" }, { "id": "14727", "name": "6050.00" }, { "id": "14719", "name": "6329.00" }, { "id": "14691", "name": "6423.00" }, { "id": "14643", "name": "6515.00" }, { "id": "14703", "name": "6702.00" }, { "id": "14695", "name": "6794.00" }, { "id": "14731", "name": "6794.00" }, { "id": "14671", "name": "6981.00" }, { "id": "14679", "name": "6981.00" }, { "id": "14655", "name": "7353.00" }, { "id": "14647", "name": "7447.00" }, { "id": "14707", "name": "7633.00" }, { "id": "14683", "name": "7912.00" }, { "id": "14659", "name": "8284.00" }, { "id": "11076", "name": "1861.00" }, { "id": "11078", "name": "2466.00" }, { "id": "11038", "name": "3165.00" }, { "id": "11039", "name": "3351.00" }, { "id": "11040", "name": "3537.00" }, { "id": "11007", "name": "5770.00" }, { "id": "11023", "name": "6050.00" }, { "id": "11011", "name": "6236.00" }, { "id": "10983", "name": "6422.00" }, { "id": "11014", "name": "6422.00" }, { "id": "10995", "name": "6702.00" }, { "id": "11027", "name": "6794.00" }, { "id": "11020", "name": "6887.00" }, { "id": "11031", "name": "7073.00" }, { "id": "10986", "name": "7259.00" }, { "id": "10989", "name": "7446.00" }, { "id": "11037", "name": "7539.00" }, { "id": "10998", "name": "7632.00" }, { "id": "10992", "name": "7911.00" }, { "id": "11001", "name": "8004.00" }, { "id": "11004", "name": "8376.00" }, { "id": "11106", "name": "15358.00" }, { "id": "12479", "name": "5864.00" }, { "id": "12480", "name": "6982.00" }, { "id": "14859", "name": "2402.00" }, { "id": "14857", "name": "2681.00" }, { "id": "14865", "name": "5864.00" }, { "id": "14861", "name": "6795.00" }, { "id": "14919", "name": "6795.00" }, { "id": "15005", "name": "6982.00" }, { "id": "14862", "name": "7726.00" }, { "id": "14915", "name": "7726.00" }, { "id": "14916", "name": "9122.00" }, { "id": "14884", "name": "12565.82" }, { "id": "14900", "name": "15358.56" }, { "id": "14868", "name": "18897.00" }, { "id": "12530", "name": "5398.00" }, { "id": "12531", "name": "6329.00" }, { "id": "12532", "name": "6794.00" }];
                </script>
            </div>
            <a href="#" class="back-to-top"><span class="pc h4">กลับด้านบน</span></a>
        </div>
    </form>
    <script type="text/javascript" src="/assets3/script/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="/assets3/script/modernizr.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery-ui-slider-pips.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="/assets3/script/datepicker.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/assets3/script/main.min.js?v=1.6"></script>
    <script type="text/javascript" src="/assets3/script/jquery.dd.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.isloading.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.popupoverlay.min.js"></script>

    <!--Turbo Add-->
    <script type="text/javascript" src="/js/underscore-min.js"></script>


    <%--<script type="text/javascript" src="/java/script_search.js?v=1.2"></script>--%>
    <script async="" src="/java/page.js"></script>

    <script>
        var Promotion = "";
        //if (loadpackage_std) {
        //    $(function () {
        //        $('.item').removeClass("item-active");
        //        $('.compare').removeClass("item-active");
        //    })
        //}
    </script>

    <script type="text/javascript" id="">var _mfq = _mfq || []; (function () { var a = document.createElement("script"); a.type = "text/javascript"; a.async = !0; a.src = "//cdn.mouseflow.com/projects/d60cd248-abd8-4c6d-a652-6232b1b6b0fa.js"; document.getElementsByTagName("head")[0].appendChild(a) })();</script>
    <script type="text/javascript" id="Script1">(function (d, a) { window.UserHeatTag = a; window[a] = window[a] || function () { (window[a].q = window[a].q || []).push(arguments) }; window[a].l = 1 * new Date; var b = document.createElement("script"), c = document.getElementsByTagName("script")[0]; b.async = 1; b.src = d; c.parentNode.insertBefore(b, c) })("//uh.nakanohito.jp/uhj2/uh.js", "_uhtracker"); _uhtracker({ id: "uh3cWySn6j" });</script>
    <div id="fb-root" class=" fb_reset">
        <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
            <div>
                <iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/XBwzv5Yrm_1.js?version=42#channel=f3fb47fbaa51c08&amp;origin=https%3A%2F%2Fwww.tqm.co.th" style="border: none;"></iframe>
            </div>
        </div>
        <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
            <div></div>
        </div>
    </div>
</body>
</html>
