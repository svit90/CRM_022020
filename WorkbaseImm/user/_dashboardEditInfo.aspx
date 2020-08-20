﻿<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_dashboardEditInfo.aspx.cs" Inherits="WorkbaseImm.user._dashboardEditInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/_dashboardEditInfo.css" rel="stylesheet" />
    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="../css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Thông tin hồ sơ</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a>Nhân viên</a>
                </li>
                <li class="breadcrumb-item active">
                    <strong>Chỉnh sửa thông tin hồ sơ</strong>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">

    <form class="editInfo" runat="server">
    <div class="ibox">
        <div class="ibox-content">
            <div class="profile-section">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex align-items-center info-top">
                            <div class="avatar">
                                <div class="avatar-edit">
                                    <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
                                    <label for="imageUpload"></label>
                                </div>
                                <img class="rounded-circle" src="../img/avatar/r_cus_default_avatar.png" />
                            </div>
                            <div class="sumary-info ml-3">
                                <p class="mb-0"><b>PHẠM HOÀNG ĐĂNG THANH</b></p>
                                <p class="mb-0">IT Executive</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5 pb-5">
                    <div class="col-md-7">
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Full Name:</b></div>
                                <div class="col-md-9">Phạm Hoàng Đăng Thanh
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editFullName" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editFullName">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_FullName" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_fullname" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Other Name:</b></div>
                                <div class="col-md-9">Paul
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editName" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editName">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_name" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_name" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                         <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Email:</b></div>
                                <div class="col-md-9">paul@imm.group
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editEmail" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editEmail">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_email" TextMode="Email" runat="server" class="form-control required email"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_email" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>  
                         <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Phone number:</b></div>
                                <div class="col-md-9">0939 878 207
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editPhoneNumber" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editPhoneNumber">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_Phone" runat="server" class="form-control required number"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_phone" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Birthday:</b></div>
                                <div class="col-md-9 ">01/01/1900
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editBirthday" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4 dataDateTime" id="editBirthday">
                                        <div class="w-100">
                                            <div class="input-group date">
                                                 <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <asp:TextBox ID="txt_date" runat="server" class="form-control required"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_date" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Position:</b></div>
                                <div class="col-md-9">IT Executive
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editPosition" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editPosition">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_position" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_position" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Office:</b></div>
                                <div class="col-md-9">
                                Ho Chi Minh
                                <a class="text-default edit-icon" data-toggle="collapse" href="#editOffice" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editOffice">
                                       <div class="w-100">
                                            <asp:TextBox ID="txt_office" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_office" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Group:</b></div>
                                <div class="col-md-9">
                                   IMM Group<a class="text-default edit-icon" data-toggle="collapse" href="#editGroup" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editGroup">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_group" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_group" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Password App CRM:</b></div>
                                <div class="col-md-9">
                                    Edit Password App CRM<a class="text-default edit-icon" data-toggle="collapse" href="#editPasswordCRM" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editPasswordCRM">
                                        <div class="w-100">
                                            <asp:TextBox ID="txt_passwordCRM" TextMode="Password" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_passwordCRM" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-bottom py-2">
                            <div class="row">
                                <div class="col-md-3"><b>Password Email:</b></div>
                                <div class="col-md-9">
                                    Edit Password<a class="text-default edit-icon" data-toggle="collapse" href="#editPasswordEmail" role="button" ><i class="fa fa-edit ml-2"></i></a>
                                    <div class="collapse my-4" id="editPasswordEmail">
                                         <div class="w-100">
                                            <asp:TextBox ID="txt_password" TextMode="Password" runat="server" class="form-control required"></asp:TextBox>
                                        </div>
                                        <div class="w-100 text-right">
                                             <asp:Button id="btn_password" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
                                        </div>
                                         
                                     </div>
                                   
                                </div>
                            </div>
                           
                        </div>
                        <div class="border-bottom py-2 mb-4">
                            <div class="row">
                                <div class="col-md-3"><b>Signature:</b></div>
                                <div class="col-md-9">Edit Signature<a class="text-default edit-icon" data-toggle="collapse" href="#collapseSignature" role="button" ><i class="fa fa-edit ml-2"></i></a></div>
                            </div>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-9">
                                     <div class="collapse mt-4" id="collapseSignature">
                                        <div class="summernote">
                                           Trân trọng

                                        </div>
                                     </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
    <%--https://crm.imm.group/user/editemployee.aspx--%>
     <!-- Date range picker -->
    <script src="../js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script>
        var mem = $('.dataDateTime .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format: "dd/mm/yyyy"
        });
        var yearsAgo = new Date();
        yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);
    </script>
    <!-- SUMMERNOTE -->
    <script src="../js/plugins/summernote/summernote-bs4.js"></script>
    <script src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {

            $('.summernote').summernote();
            $(".editInfo").validate({});

        });
        
    </script>
</asp:Content>
