<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DJCarInsure.aspx.cs" Inherits="DJBroker.Web.Page.DJCarInsure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <link rel="manifest" href="/static_file/index/manifest.json">
    <meta name="robots" content="index,follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>DJ Broker | บริษัท ดวงเจริญ โบรคเกอร์</title>
    <meta name="keywords" content="DJBroker, ดวงเจริญ, ประกันภัย, ประกันภัยรถยนต์, ประกันรถยนต์, ประกันชั้น1, พรบออนไลน์, ประกันภัยการเดินทาง, ประกันเดินทาง, โปรโมชั่น">
    <meta name="description" content="ผู้นำด้านที่ปรึกษาประกันภัย ประกันภัยรถยนต์ ประกันภัยเดินทาง ประกันชีวิต ประกันอุบัติเหตุ ที่ปรึกษาด้านประกันภัย โปรโมชั่นผ่อน0% บริการ24ขั่วโมง โทร 1737">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/assets3/style/normalize.css">
    <link rel="stylesheet" href="/assets3/style/jquery-ui.min.css">
    <link rel="stylesheet" href="/assets3/style/jquery-ui.theme.min.css">
    <link rel="stylesheet" href="/assets3/style/testimonial.min.css?v=1.0">
    <link rel="stylesheet" href="/assets3/style/font-awesome.min.css?v=1.0">
    <link rel="stylesheet" href="/assets3/style/jquery.jscrollpane.css">
    <link rel="stylesheet" href="/assets3/style/magnific-popup.min.css">
    <link rel="stylesheet" href="/assets3/style/main.min.css?v=1.7">
    <link rel="stylesheet" href="/assets3/style/css/page/home.css?v=1.3">

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
    <script type="text/javascript" async="" src="//cdn.mouseflow.com/projects/d60cd248-abd8-4c6d-a652-6232b1b6b0fa.js"></script>
    <style media="print" class="jx_ui_StyleSheet" __jx__id="___$_2" type="text/css">
        .zopim {
            display: none !important;
        }
    </style>
    <style type="text/css">
        .fb_hidden {
            position: absolute;
            top: -10000px;
            z-index: 10001;
        }

        .fb_reposition {
            overflow: hidden;
            position: relative;
        }

        .fb_invisible {
            display: none;
        }

        .fb_reset {
            background: none;
            border: 0;
            border-spacing: 0;
            color: #000;
            cursor: auto;
            direction: ltr;
            font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
            font-size: 13px;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            letter-spacing: normal;
            line-height: 1;
            margin: 0;
            overflow: visible;
            padding: 0;
            text-align: left;
            text-decoration: none;
            text-indent: 0;
            text-shadow: none;
            text-transform: none;
            visibility: visible;
            white-space: normal;
            word-spacing: normal;
        }

            .fb_reset > div {
                overflow: hidden;
            }

        .fb_link img {
            border: none;
        }

        @keyframes fb_transform {
            from {
                opacity: 0;
                transform: scale(.95);
            }

            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .fb_animate {
            animation: fb_transform .3s forwards;
        }

        .fb_dialog {
            background: rgba(82, 82, 82, .7);
            position: absolute;
            top: -10000px;
            z-index: 10001;
        }

        .fb_reset .fb_dialog_legacy {
            overflow: visible;
        }

        .fb_dialog_advanced {
            padding: 10px;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            border-radius: 8px;
        }

        .fb_dialog_content {
            background: #fff;
            color: #333;
        }

        .fb_dialog_close_icon {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
            cursor: pointer;
            display: block;
            height: 15px;
            position: absolute;
            right: 18px;
            top: 17px;
            width: 15px;
        }

        .fb_dialog_mobile .fb_dialog_close_icon {
            top: 5px;
            left: 5px;
            right: auto;
        }

        .fb_dialog_padding {
            background-color: transparent;
            position: absolute;
            width: 1px;
            z-index: -1;
        }

        .fb_dialog_close_icon:hover {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;
        }

        .fb_dialog_close_icon:active {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;
        }

        .fb_dialog_loader {
            background-color: #f6f7f9;
            border: 1px solid #606060;
            font-size: 26px;
            padding: 20px;
        }

        .fb_dialog_top_left, .fb_dialog_top_right, .fb_dialog_bottom_left, .fb_dialog_bottom_right {
            height: 10px;
            width: 10px;
            overflow: hidden;
            position: absolute;
        }

        .fb_dialog_top_left {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;
            left: -10px;
            top: -10px;
        }

        .fb_dialog_top_right {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;
            right: -10px;
            top: -10px;
        }

        .fb_dialog_bottom_left {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;
            bottom: -10px;
            left: -10px;
        }

        .fb_dialog_bottom_right {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;
            right: -10px;
            bottom: -10px;
        }

        .fb_dialog_vert_left, .fb_dialog_vert_right, .fb_dialog_horiz_top, .fb_dialog_horiz_bottom {
            position: absolute;
            background: #525252;
            filter: alpha(opacity=70);
            opacity: .7;
        }

        .fb_dialog_vert_left, .fb_dialog_vert_right {
            width: 10px;
            height: 100%;
        }

        .fb_dialog_vert_left {
            margin-left: -10px;
        }

        .fb_dialog_vert_right {
            right: 0;
            margin-right: -10px;
        }

        .fb_dialog_horiz_top, .fb_dialog_horiz_bottom {
            width: 100%;
            height: 10px;
        }

        .fb_dialog_horiz_top {
            margin-top: -10px;
        }

        .fb_dialog_horiz_bottom {
            bottom: 0;
            margin-bottom: -10px;
        }

        .fb_dialog_iframe {
            line-height: 0;
        }

        .fb_dialog_content .dialog_title {
            background: #6d84b4;
            border: 1px solid #365899;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            margin: 0;
        }

            .fb_dialog_content .dialog_title > span {
                background: url(http://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
                float: left;
                padding: 5px 0 7px 26px;
            }

        body.fb_hidden {
            -webkit-transform: none;
            height: 100%;
            margin: 0;
            overflow: visible;
            position: absolute;
            top: -10000px;
            left: 0;
            width: 100%;
        }

        .fb_dialog.fb_dialog_mobile.loading {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
            min-height: 100%;
            min-width: 100%;
            overflow: hidden;
            position: absolute;
            top: 0;
            z-index: 10001;
        }

            .fb_dialog.fb_dialog_mobile.loading.centered {
                width: auto;
                height: auto;
                min-height: initial;
                min-width: initial;
                background: none;
            }

                .fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
                    width: 100%;
                }

                .fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
                    background: none;
                }

        .loading.centered #fb_dialog_loader_close {
            color: #fff;
            display: block;
            padding-top: 20px;
            clear: both;
            font-size: 20px;
        }

        #fb-root #fb_dialog_ipad_overlay {
            background: rgba(0, 0, 0, .45);
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            top: 0;
            width: 100%;
            min-height: 100%;
            z-index: 10000;
        }

            #fb-root #fb_dialog_ipad_overlay.hidden {
                display: none;
            }

        .fb_dialog.fb_dialog_mobile.loading iframe {
            visibility: hidden;
        }

        .fb_dialog_content .dialog_header {
            -webkit-box-shadow: white 0 1px 1px -1px inset;
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));
            border-bottom: 1px solid;
            border-color: #1d4088;
            color: #fff;
            font: 14px Helvetica, sans-serif;
            font-weight: bold;
            text-overflow: ellipsis;
            text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
            vertical-align: middle;
            white-space: nowrap;
        }

            .fb_dialog_content .dialog_header table {
                -webkit-font-smoothing: subpixel-antialiased;
                height: 43px;
                width: 100%;
            }

            .fb_dialog_content .dialog_header td.header_left {
                font-size: 14px;
                padding-left: 5px;
                vertical-align: middle;
                width: 60px;
            }

            .fb_dialog_content .dialog_header td.header_right {
                font-size: 14px;
                padding-right: 5px;
                vertical-align: middle;
                width: 60px;
            }

        .fb_dialog_content .touchable_button {
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));
            border: 1px solid #29487d;
            -webkit-background-clip: padding-box;
            -webkit-border-radius: 3px;
            -webkit-box-shadow: rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;
            display: inline-block;
            margin-top: 3px;
            max-width: 85px;
            line-height: 18px;
            padding: 4px 12px;
            position: relative;
        }

        .fb_dialog_content .dialog_header .touchable_button input {
            border: none;
            background: none;
            color: #fff;
            font: 12px Helvetica, sans-serif;
            font-weight: bold;
            margin: 2px -12px;
            padding: 2px 6px 3px 6px;
            text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
        }

        .fb_dialog_content .dialog_header .header_center {
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            line-height: 18px;
            text-align: center;
            vertical-align: middle;
        }

        .fb_dialog_content .dialog_content {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
            border: 1px solid #555;
            border-bottom: 0;
            border-top: 0;
            height: 150px;
        }

        .fb_dialog_content .dialog_footer {
            background: #f6f7f9;
            border: 1px solid #555;
            border-top-color: #ccc;
            height: 40px;
        }

        #fb_dialog_loader_close {
            float: left;
        }

        .fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
            text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
        }

        .fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
            visibility: hidden;
        }

        #fb_dialog_loader_spinner {
            animation: rotateSpinner 1.2s linear infinite;
            background-color: transparent;
            background-image: url(http://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
            background-repeat: no-repeat;
            background-position: 50% 50%;
            height: 24px;
            width: 24px;
        }

        @keyframes rotateSpinner {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        .fb_iframe_widget {
            display: inline-block;
            position: relative;
        }

            .fb_iframe_widget span {
                display: inline-block;
                position: relative;
                text-align: justify;
            }

            .fb_iframe_widget iframe {
                position: absolute;
            }

        .fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span, .fb_iframe_widget_fluid_desktop iframe {
            max-width: 100%;
        }

            .fb_iframe_widget_fluid_desktop iframe {
                min-width: 220px;
                position: relative;
            }

        .fb_iframe_widget_lift {
            z-index: 1;
        }

        .fb_hide_iframes iframe {
            position: relative;
            left: -10000px;
        }

        .fb_iframe_widget_loader {
            position: relative;
            display: inline-block;
        }

        .fb_iframe_widget_fluid {
            display: inline;
        }

            .fb_iframe_widget_fluid span {
                width: 100%;
            }

        .fb_iframe_widget_loader iframe {
            min-height: 32px;
            z-index: 2;
            zoom: 1;
        }

        .fb_iframe_widget_loader .FB_Loader {
            background: url(http://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat;
            height: 32px;
            width: 32px;
            margin-left: -16px;
            position: absolute;
            left: 50%;
            z-index: 4;
        }
    </style>
</head>
<body>
    <div style="display: none">
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <iframe name="google_conversion_frame" title="Google conversion frame" width="300" height="13" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/959518542/?random=1500433790429&amp;cv=8&amp;fst=1500433790429&amp;num=1&amp;fmt=1&amp;guid=ON&amp;eid=376635471&amp;u_h=900&amp;u_w=1440&amp;u_ah=900&amp;u_aw=1440&amp;u_cd=24&amp;u_his=3&amp;u_tz=420&amp;u_java=false&amp;u_nplug=4&amp;u_nmime=5&amp;frm=0&amp;url=https%3A%2F%2Fwww.tqm.co.th%2F%3Futm_source%3Dgoogle%26utm_medium%3Dcpc%26utm_campaign%3Dalwayson%26utm_content%3Dgenad%26gclid%3DEAIaIQobChMIj7OZs6-U1QIVkoePCh0xXAv4EAAYASAAEgL3BvD_BwE&amp;ref=https%3A%2F%2Fwww.google.co.th%2F&amp;tiba=TQM%20%E0%B9%82%E0%B8%9A%E0%B8%A3%E0%B8%84%E0%B9%80%E0%B8%81%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B8%A0%E0%B8%B1%E0%B8%A2%20%7C%20%E0%B8%9A%E0%B8%A3%E0%B8%B4%E0%B8%A9%E0%B8%B1%E0%B8%97%20%E0%B8%97%E0%B8%B5" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no"></iframe>
        <iframe name="google_cookie_match_frame" title="Google cookie match frame" width="1" height="1" src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" style="display: none" scrolling="no"></iframe>
    </div>
    <form id="main" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>

        <div class="wraper">
            <div id="header">
                 <%-- <div class="top-logo">
                    <div class="menu-top-user right">
                        <ul class="list-item">
                            <li><a href="#" class="i-hamburger"><i class="fa fa-bars"></i></a></li>
                        </ul>
                    </div>
                </div>--%>
                <div class="test">
                    <div class="menu-top-user right">
                        <ul class="list-item">
                            <li><a href="#" class="i-hamburger"><i class="fa fa-bars"></i></a></li>
                        </ul>
                    </div>
                    <div class="float-left logo">
                        <a href="/" id="A1" title="logo tqm">
                            <img src="/assets3/images/page_home/iconDJ.png" alt="DJ" />
                        </a>
                    </div>
                  <%--  <div class="float-left">
                        <div class="float-left award">
                            <img src="/assets3/images/page_home/iconDJ.png" alt="DJ" />
                        </div>
                        <div class="call-box">
                        </div>
                    </div>--%>
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
                                            <li><a href="/promotion/probki" title="ประกันเดินทางกรุงเทพประกันภัย">ประกันเดินทางกรุงเทพประกันภัย</a></li>
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
                    <div class="popup-wrap">
                        <div id="popup-login" class="popup-login dialog-popup">
                        </div>

                        <!-- popup compare -->

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

            <!-- banner -->

            <div id="content">
                <!-- banner -->
                <%--<div style="display: none;">

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
            </div>--%>

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
                </div>
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
            <div id="insurance-content" class="insurance-content_r3 pc tab1 bg-white" style="display: block;">
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
    <script type="text/javascript" id="Script2">var _mfq = _mfq || []; (function () { var a = document.createElement("script"); a.type = "text/javascript"; a.async = !0; a.src = "//cdn.mouseflow.com/projects/d60cd248-abd8-4c6d-a652-6232b1b6b0fa.js"; document.getElementsByTagName("head")[0].appendChild(a) })();</script>
    <script type="text/javascript" id="Script3">(function (d, a) { window.UserHeatTag = a; window[a] = window[a] || function () { (window[a].q = window[a].q || []).push(arguments) }; window[a].l = 1 * new Date; var b = document.createElement("script"), c = document.getElementsByTagName("script")[0]; b.async = 1; b.src = d; c.parentNode.insertBefore(b, c) })("//uh.nakanohito.jp/uhj2/uh.js", "_uhtracker"); _uhtracker({ id: "uh3cWySn6j" });</script>


    <script type="text/javascript" src="/assets3/script/testimonial.min.js"></script>
    <script type="text/javascript" src="/assets3/script/modernizr.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.center.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.cycle2.swipe.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/assets3/script/main.min.js?v=1.6"></script>
    <script type="text/javascript" src="/assets3/script/jquery.isloading.min.js"></script>
    <script type="text/javascript" src="/assets3/script/jquery.popupoverlay.min.js"></script>
    <script type="text/javascript" src="/java/script_box_search.js?v=1.6"></script>

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
