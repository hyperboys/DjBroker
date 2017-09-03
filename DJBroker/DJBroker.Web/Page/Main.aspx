<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Main.aspx.cs" Inherits="DJBroker.Web.Page.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

    <div id="content" style="margin-top: 55px;">
        <!-- banner -->
        <div style="display: none;">
            <a href="#" class="slide-img">
                <img id="Img1" class="img-slide" src="../images/slide_promotion/banner1.png" alt="promotion 1" title="promotion 1" />
            </a>

            <a href="#" class="slide-img">
                <img id="Img2" class="img-slide" src="../images/slide_promotion/promotion_slid2.png" alt="promotion 2" title="promotion 2" />
            </a>

            <a href="#" class="slide-img">
                <img id="Img3" class="img-slide" src="../images/slide_promotion/promotion_slid3.png" alt="promotion 3" title="promotion 3" />
            </a>

            <a href="#" class="slide-img">
                <img id="Img4" class="img-slide" src="../images/slide_promotion/promotion_slid4.png" alt="promotion 4" title="promotion 4" />
            </a>

            <a href="#" class="slide-img">
                <img id="Img5" class="img-slide" src="../images/slide_promotion/promotion_slid5.png" alt="promotion 5" title="promotion 5" />
            </a>

            <style>
                .img-slide {
                    width: 100%;
                }

                @media screen and (max-width: 768px) {
                    #Img1 {
                        content: url("../images/slide_promotion/promotion1.png");
                    }

                    #Img2 {
                        content: url("../images/slide_promotion/promotion2.png");
                    }

                    #Img3 {
                        content: url("../images/slide_promotion/promotion3.png");
                    }

                    #Img4 {
                        content: url("../images/slide_promotion/promotion4.png");
                    }

                    #Img5 {
                        content: url("../images/slide_promotion/promotion5.png");
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
            <a href="#" class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 100; opacity: 0; display: block; visibility: hidden; margin-left: 0px; margin-top: 0px;"></a>

            <div class="pager"></div>
        </div>
    </div>

    <!--  form select insurance -->
    <div id="insurance-content" class="insurance-content_r3 pc tab1 bg-white" style="display: block; margin-top: 25px;">
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
                                <div class="col-mb-12">
                                </div>
                            </div>
                            <div class="row">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value="cus" />
                                <button id="Button3" class="col-mb-6 col-dt-6 col-sm-12 txt-center button-1 blue" runat="server"
                                    onserverclick="Tab1_Click">
                                    <i class="fa fa-child"></i>&nbsp;ลูกค้าทั่วไป
                                </button>
                                <button id="Button2" class="col-mb-6 col-dt-6 col-sm-12 txt-center button-1 blue" runat="server"
                                    onserverclick="Tab2_Click">
                                    <i class="fa fa-users"></i>&nbsp;ตัวแทน
                                </button>
                            </div>
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <div class="row">
                                        <div class="col-dt-6 col-sm-12">
                                            <label class="col-sm-5 col-mb-3">
                                                ชื่อ</label>
                                            <input type="text" value="" name="LEADNAME2" id="LEADNAME2" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
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
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <div class="row">
                                        <div class="col-dt-6 col-sm-12">
                                            <label class="col-sm-5 col-mb-3">
                                                username</label>
                                            <input type="text" value="" name="USER" id="USER" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
                                        </div>
                                        <div class="col-dt-6 col-sm-12">
                                            <label class="col-sm-5 col-mb-3 padding-lr-0-dt">
                                                password</label>
                                            <input type="text" value="" name="PASSWORD" id="PASSWORD" class="underlineonly col-sm-7 col-mb-9" onkeypress="if (event.keyCode>=6000) event.returnValue=false" />
                                        </div>
                                    </div>
                                </asp:View>
                            </asp:MultiView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="row">
                        <div class="col-mb-12">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-mb-12">
                            <button id="Button1" class="col-mb-12 col-dt-12 col-sm-12 button-1 blue" runat="server"
                                onclick="javascript:return ValidateDropDown();">

                                <i class="fa fa-search"></i>&nbsp;ค้นหาเลย</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- main section -->
    <div class="container">

        <!-- Start Product -->
        <div class="testimonial-list divider-content">
            <div role="tabpanel">
                <!-- Tab panes -->
                <div class="tab-content">
                    <h2 class="h1 color-darkblue">ผลิตภัณฑ์ ที่หน้าสนใจ <span class="color-blue"></span></h2>
                    <br>
                    <div role="tabpanel" class="tab-pane fade active in" id="tab1">
                        <div class="testimonial-image">
                            <img src="../images/slid_product/product1.png" alt="t1">
                            <img src="../images/slid_product/product2.png" alt="t1">
                            <img src="../images/slid_product/product3.png" alt="t1">
                            <img src="../images/slid_product/product4.png" alt="t1">
                            <img src="../images/slid_product/product5.png" alt="t1">
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab2">
                        <div class="testimonial-image">
                            <img src="../images/slid_product/product1.png" alt="t2">
                            <img src="../images/slid_product/product2.png" alt="t2">
                            <img src="../images/slid_product/product3.png" alt="t2">
                            <img src="../images/slid_product/product4.png" alt="t2">
                            <img src="../images/slid_product/product5.png" alt="t2">
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab3">
                        <div class="testimonial-image">
                            <img src="../images/slid_product/product1.png" alt="t3">
                            <img src="../images/slid_product/product2.png" alt="t3">
                            <img src="../images/slid_product/product3.png" alt="t3">
                            <img src="../images/slid_product/product4.png" alt="t3">
                            <img src="../images/slid_product/product5.png" alt="t3">
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab4">
                        <div class="testimonial-image">
                            <img src="../images/slid_product/product1.png" alt="t4">
                            <img src="../images/slid_product/product2.png" alt="t4">
                            <img src="../images/slid_product/product3.png" alt="t4">
                            <img src="../images/slid_product/product4.png" alt="t4">
                            <img src="../images/slid_product/product5.png" alt="t4">
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab5">
                        <div class="testimonial-image">
                            <img src="../images/slid_product/product1.png" alt="t5">
                            <img src="../images/slid_product/product2.png" alt="t5">
                            <img src="../images/slid_product/product3.png" alt="t5">
                            <img src="../images/slid_product/product4.png" alt="t5">
                            <img src="../images/slid_product/product5.png" alt="t5">
                        </div>
                    </div>
                </div>

                <div class="clear"></div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav1 link-nav active" role="presentation">
                        <a class="link1" onclick="select_nav(1);" style="cursor: pointer;" aria-controls="tab1" role="tab" data-toggle="tab"></a>
                    </li>
                    <li class="nav2 link-nav" role="presentation">
                        <a class="link2" onclick="select_nav(2);" style="cursor: pointer;" aria-controls="tab2" role="tab" data-toggle="tab"></a>
                    </li>
                    <li class="nav3 link-nav" role="presentation">
                        <a class="link3" onclick="select_nav(3);" style="cursor: pointer;" aria-controls="tab3" role="tab" data-toggle="tab"></a>
                    </li>
                    <li class="nav4 link-nav" role="presentation">
                        <a class="link4" onclick="select_nav(4);" style="cursor: pointer;" aria-controls="tab4" role="tab" data-toggle="tab"></a>
                    </li>
                    <li class="nav5 link-nav" role="presentation">
                        <a class="link5" onclick="select_nav(5);" style="cursor: pointer;" aria-controls="tab5" role="tab" data-toggle="tab"></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- End Product -->


        <!-- ทำไมต้องดวงเจริญ -->
        <div id="index_blog" class="divider-content blog">
            <div class="content-center margin-tb-15">
                <h4 class="h1 color-darkblue content-center">รู้จักดวงเจริญ อินเตอร์ โบรกเกอร์ ?</h4>
                <p class="h4 padding-right-10 padding-left-10">
                    เพราะเราคือที่ปรึกษาด้านประกันภัยที่มีประสบการณ์มามากกว่า 20 ปี หากท่านกำลังมองหาที่ปรึกษาประกันภัยดีดีลองปรึกษาดวงเจริญดูก่อน
                    เพราะเรามีบริษัทชั้นนำให้เลือกสรรมากมาย รวมทั้งยังมีประกันภัยชั้น 1, 2, 3 รวมถึง พ.ร.บ 
                    ขอเพียงแค่บอกไสตล์การขับรถของท่านมาเราพร้อมที่จะคัดประกันที่พิเศษสำหรับท่านอย่างแน่นอน
                    
                </p>
            </div>
        </div>

        <!-- ดวงเจริญชื่อนี้มีแต่ให้ -->
        <div id="Div1" class="service-box divider-content" style="border-bottom: 1px solid #ccc;">
            <div class="margin-tb-20">
                <h2 class="h1 color-darkblue content-center">
                    <span class="color-blue">ดวงเจริญชื่อนี้มีแต่ให้</span>
                </h2>
            </div>
            <div class="row">
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง1_temp.png" width="163" height="128" />
                    <h3 class="text-underline">รถหาย/ไฟไหม้ไร้กังวล</h3>
                    <p>
                        เมื่อเกิดเหตุไม่คาดฝันขึ้นกับรถของคุณ<br />
                        อุ่นใจได้เมื่อทำประกันภัยกับดวงเจริญ<br />
                        ด้วยประกันชั้น 1 และประกันชั้น 2+
                    </p>
                </div>
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง2_temp.png" width="163" height="128" />
                    <h3 class="text-underline">ศูนย์ซ่อมมาตราฐาน</h3>
                    <p>
                        คลายกังวลด้วยศูนย์ซ่อมและอู่ในเครือ<br />
                        ที่ได้มาตราฐาน การรันตีการซ่อม ประหยัดเวลา<br />
                        และไม่ต้องสำรองเงินจ่าย
                    </p>
                </div>
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง3_temp.png" width="163" height="128" />
                    <h3 class="text-underline">รถชนไม่ใช่ปัญหาใหญ่อีกต่อไป</h3>
                    <p>
                        คุ้มครองรถยนต์ของคุณเมื่อเกิดอุบัติเหตุ<br />
                        ด้วยประกันชั้น 1,2 และ 3 ที่จะทำให้คุณ<br />
                        อุ่นใจตลอดทั้งเส้นทางการเดินทาง
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง4_temp.png" width="163" height="128" />
                    <h3 class="text-underline">"ดวงเจริญ" ที่ปรึกษาทางด้านประกันภัย</h3>
                    <p>
                        เพราะเรายินดีให้คำปรึกษา
                        <br />
                        ตลอดจนการบริการหลักการขาย<br />
                        ไม่ว่าจะเป็นประกันชั้น 1,2 และ 3 ให้คุณได้รู้สึกอุ่นใจ<br />
                        เสมือนมีเราอยู่เคียงข้างคุณตลอดเวลา
                    </p>
                </div>
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง5_temp.png" width="163" height="128" />
                    <h3 class="text-underline">ยิ่งประหยัดเงินได้มาก...ยิ่งอุ่นใจมากกว่า</h3>
                    <p>
                        สิ่งที่ถูกและดีไม่ใช่ไม่มีบนโลก..สำหรับที่ดวงเจริญแล้วนั้น<br />
                        การยิ่งทำให้คุณประหยัดได้มากกว่าเท่าไหร่ ยิ่งทำให้เรา<br />
                        สุขใจขึ้นเท่านั้นและยังไม่พอลูกค้าจะต้องได้สิ่งดีที่สุดกลับไปเสมอ
                    </p>
                </div>
                <div class="col-mb-12 col-dt-4 col-sm-12 txt-center">
                    <img src="../images/biology/ความคุ้มครอง6_temp.png" width="163" height="128" />
                    <h3 class="text-underline">อุ่นใจด้วยบริการช่วยเหลือ 24 ชั่วโมง</h3>
                    <p>
                        เรามีบริการช่วยเหลือคุณตลอด 24 ชั่วโมง<br />
                        ไม่ว่าจะเป็น รถลาก, จั๊มสตาร์ท, บริการกุญแจสำรอง<br />
                        พร้อมทั้งเติมน้ำมันให้ฟรี 10 ลิตร ให้กับคุณในยามฉุกเฉิน
                    </p>
                </div>
            </div>
        </div>

        <!-- บริษัทประกันภัย -->
        <div id="service_and_event" class="service-box divider-content" style="border-bottom: 1px solid #ccc;">
            <div class="margin-tb-20">
                <h2 class="h1 color-darkblue content-center">
                    <span class="color-blue">บริษัทประกันภัย</span>
                </h2>
            </div>
            <div class="row">
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/1.Viriyah logo.jpg" height="100" width="100" alt="วิริยะประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/2.DVS logo.jpg" height="100" width="100" alt="เทเวศประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/3.SMK logo.jpg" height="100" width="100" alt="สินมั่นคงประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/4.กรุงเทพประกันภัย logo.jpg" height="100" width="100" alt="กรุงเทพประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/5.allianz.jpg" height="100" width="100" alt="allianz">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/6.ทิพยประกันภัย logo.jpg" height="100" width="100" alt="ทิพยประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/7.Generali logo.jpg" height="100" width="100" alt="Generali">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/8.นำสินประกันภัย logo.jpg" height="100" width="100" alt="นำสินประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/9.muangthai logo.jpg" height="100" width="100" alt="muangthai">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/10.ไทยไพบูลย์ logo.jpg" height="100" width="100" alt="ไทยไพบูลย์">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/11.คุ้มภัย logo.jpg" height="100" width="100" alt="คุ้มภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/12.LMG logo.png" height="100" width="100" alt="LMG">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/13.เอเชียประกันภัย logo.jpg" height="100" width="100" alt="เอเชียประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/14.Siamcity logo.jpg" height="100" width="100" alt="Siamcity">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/15.อาคเนย์ logo.png" height="100" width="100" alt="อาคเนย์">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/16.ksk logo.jpg" height="100" width="100" alt="ksk">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/17.อินทรประกันภัย.png" height="100" width="100" alt="อินทรประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/18.ไทยศรีประกันภัย.jpg" height="100" width="100" alt="ไทยศรีประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/19.สินทรัพย์ประกันภัย.jpg" height="100" width="100" alt="สินทรัพย์ประกันภัย">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/20.ประกันเดินทางไทยวิวัฒน์.jpg" height="100" width="100" alt="ประกันเดินทางไทยวิวัฒน์">
                </div>
                <div class="col-mb-3 col-dt-2 col-sm-6 txt-center">
                    <img src="../images/company/21.msig.jpg" height="100" width="100" alt="msig">
                </div>
            </div>
        </div>
        <!-- End บริษัทประกันภัย -->
    </div>

    <script type="text/javascript">
        var animate;
        var total = $(".testimonial-text").length;
        function nav_move(nav) {
            animate = setTimeout(function () {
                $(".link-nav").removeClass("active");
                $(".tab-pane").removeClass("active in");
                if (nav == 5) {
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
                document.getElementById(year).focus();
                return false;
            }
            var band = "<%=ddlCarName.ClientID %>";
            if (document.getElementById(band).selectedIndex == 0) {
                alert("กรุณาเลือกรถยนต์");
                document.getElementById(band).focus();
                return false;
            }
            var age = "<%=ddlCarModel.ClientID %>";
            if (document.getElementById(age).selectedIndex == 0) {
                alert("กรุณาเลือกรุ่นรถยนต์");
                document.getElementById(age).focus();
                return false;
            }

            var name = $("#LEADNAME2").val();
            var email = $("#EMAIL2").val();
            var tel = $("#PHONEMOBILE2").val();

            var user = $("#USER").val();
            var password = $("#PASSWORD").val();

            var check = "<%=HiddenField1.ClientID %>";


            if (document.getElementById(check).value == "cus") {
                if (name == "") {
                    alert("กรุณากรอกชื่อ");
                    $("#LEADNAME2").focus();
                    return false;
                }
                if (tel == "") {
                    alert("กรุณากรอกเบอร์โทรศัพท์");
                    $("#PHONEMOBILE2").focus();
                    return false;
                }
                if (email == "") {
                    alert("กรุณากรอกอีเมล");
                    $("#EMAIL2").focus();
                    return false;
                }
                else if (!validateEmail(email)) {
                    alert("กรุณากรอกอีเมลให้ถูกต้อง");
                    $("#EMAIL2").focus();
                    return false;
                }
            } else {
                if (user == "") {
                    alert("กรุณากรอก user");
                    $("#USER").focus();
                    return false;
                }
                if (password == "") {
                    alert("กรุณากรอก password");
                    $("#PASSWORD").focus();
                    return false;
                }

            }

            PageMethods.Process();

            return true;
        }
    </script>

</asp:Content>
