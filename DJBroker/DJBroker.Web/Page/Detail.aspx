<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Detail.aspx.cs" Inherits="DJBroker.Web.Page.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    <div style="margin-top: 70px;">
        <div class="row">
            <div class="col-sm-12 col-dt-9 col-lg-9" id="box-right">
                <div class="panel panel-primary">
                    <div class="panel-heading">

                    </div>
                    <div class="panel-body">


                        <!-- /.row (nested) -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2"></div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-3">
                                            </div>
                                            <div class="col-md-2">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
