<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainMasterPage.Master" AutoEventWireup="true"
    CodeBehind="DJCarInsureDetail.aspx.cs" Inherits="DJBroker.Web.Page.DJCarInsureDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    <div style="margin-top: 55px;">
        <!--  form select insurance -->
        <div class="ta-small-menu" id="small-menu">
            <div class="col-sm-12 col-dt-3 col-lg-3">
                <div class="tab-slide-down dark-blue">
                    <h3 class="color-white">รถยนต์ของคุณ</h3>
                    <span class=""><i class="fa fa-angle-down"></i></span>
                    <span class="active"><i class="fa fa-angle-up"></i></span>
                </div>
                <div class="slide-down-content" style="display: block;">
                    <label class="select type3 white-gray margin-bottom-10">
                        <asp:DropDownList ID="ddlCarYear" runat="server" AutoPostBack="True" class="select-default-dropdown" name="ddlCarYear" OnSelectedIndexChanged="ddlCarYear_SelectedIndexChanged">
                            <asp:ListItem Text="ปีรถยนต์" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </label>
                    <label class="select type3 white-gray margin-bottom-10">
                        <asp:DropDownList ID="ddlCarName" runat="server" AutoPostBack="True" class="select-default-dropdown" name="ddlCarName" OnSelectedIndexChanged="ddlCarName_SelectedIndexChanged">
                            <asp:ListItem Text="รถยนต์" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </label>
                    <label class="select type3 white-gray margin-bottom-10">
                        <asp:DropDownList ID="ddlCarModel" runat="server" AutoPostBack="True" class="select-default-dropdown" OnSelectedIndexChanged="ddlCarModel_SelectedIndexChanged">
                            <asp:ListItem Text="รุ่น" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </label>
                    <div class="clear margin-top-20">
                        <asp:Button ID="btnSearch" runat="server" AutoPostBack="True" class="button-1 blue" Text="ค้นหา" />

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-dt-9 col-lg-9" id="box-right">
            <form id="sticky-menu" class="overflow-hidden round-image margin-bottom-20 filter-search-price">
                <div class="padding-10-dt overflow-hidden reset-padding">
                    <div class="col-sm-12 col-dt-5 col-lg-3 content-center reset-btn-compare">
                        <!-- <a href="compare.html" class="button-2 darkblue">เปรียบเทียบ <span id="compare-count">0</span> รายการ</a> -->
                        <a title="เปรียบเทียบประกันรถยนต์" href="#" class="button-2 darkblue">เปรียบเทียบ <span id="list_count">0</span> รายการ</a>
                    </div>
                </div>
            </form>

            <div id="sort_package">
                <div id="searh_15005" class="searh-sort">
                    <div class="item insure1  search-list ta-blue padding-20 margin-bottom-20 clearfix" data-range="6982.00" style="display: block;">
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
                            <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare15005" data-id="MTUwMDU=" data-price="NzUwMC43MA==" data-price-n="NzUwMC43MA==" data-age="" data-price-cover="MTAwMDAwLjAw"><span>เปรียบเทียบ</span></a>

                            <a title="เปรียบเทียบ บริษัทประกัน" href="#" onclick="Submit_ssion('15005','MT')" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
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
                            <a href="#" class="col-sm-5 button-1 darkblue col-mb-12 clear-mb ta-compare compare" id="compare3306" data-id="MzMwNg==" data-price="MTM5NjUuNjQ=" data-price-n="MTM5NjUuNjQ=" data-age="" data-price-cover="MjUwMDAw"><span>เปรียบเทียบ</span></a>

                            <a href="#" title="เปรียบเทียบบริษัทประกัน" onclick="Submit_ssion('3306','C')" id="payment3306" data-c="MjUwMDAw" data-p="MTMwMDAuMDA=" data-pv="MTM5NjUuNjQ=" data-vat="NTI=" data-tax="OTEzLjY0" data-age="" class="col-sm-5 button-1 blue right-sm col-mb-12 clear-mb clear-tb i-buynow">
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


        </div>
    </div>
</asp:Content>
