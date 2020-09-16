<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_userManagement.aspx.cs" Inherits="WorkbaseImm.setting._userManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>CRM SYSTEM | Quản lý người dùng </title>
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="../css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">
    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <style>
        .contact-box{
            position:relative;
        }
        .contact-box:hover .control-employee{
            opacity:1;
        }
        .contact-box:hover{
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05), 0 1px 2px rgba(0, 0, 0, 0.1);
        }
        .control-employee{
            position: absolute;
            right: 0;
            bottom: 0;
            margin: 8px;
            opacity:0;
            transition: all 0.2s ease;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Quản lý thông tin nhân viên</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a>Admin</a>
                </li>
                <li class="breadcrumb-item active">
                    <strong>Thêm-xóa-sửa thông tin nhân viên</strong>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Quản lý nhân viên</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <form role="form" class="frmemployees" runat="server">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Họ tên</label>
                            <asp:TextBox ID="it_fullname" ClientIDMode="Static" CssClass="form-control required" autocomplete="off" runat="server" placeholder="Họ & tên"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Tên tiếng anh</label>
                            <asp:TextBox ID="it_engname" ClientIDMode="Static" CssClass="form-control required" autocomplete="off" runat="server" placeholder="Tên tiếng anh"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Email</label>
                            <asp:TextBox ID="it_email" ClientIDMode="Static" CssClass="form-control required email" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Số điện thoại</label>
                            <asp:TextBox ID="it_phone" ClientIDMode="Static" CssClass="form-control required number" runat="server" placeholder="Số diện thoại"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" id="dataDateTimeFrom">
                            <label class="font-normal">Ngày sinh</label>
                            <div class="input-group date">                                
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <asp:TextBox ID="it_birthday" ClientIDMode="Static" CssClass="form-control required" runat="server"  placeholder="MM/DD/YYYY"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Giới tính</label>
                            <asp:DropDownList ID="it_gender" ClientIDMode="Static" runat="server" CssClass="form-control required" AppendDataBoundItems="true">
                                <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Female"></asp:ListItem>
                            </asp:DropDownList>                         
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phân quyền</label>             
                            <asp:DropDownList ID="it_permiss" ClientIDMode="Static" runat="server" CssClass="form-control required" AppendDataBoundItems="true">
                                <asp:ListItem Value="" Text="Phân quyền"></asp:ListItem>
                            </asp:DropDownList>                          
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Vị trí</label>
                            <asp:TextBox ID="it_position" ClientIDMode="Static" CssClass="form-control required" autocomplete="off" runat="server" placeholder="Vị trí"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phòng ban</label>
                            <asp:DropDownList ID="it_deparment" ClientIDMode="Static" runat="server" CssClass="form-control required" AppendDataBoundItems="true">
                                <asp:ListItem Value="" Text="Chọn Phòng Ban"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Văn phòng</label>
                            <asp:DropDownList ID="it_office" ClientIDMode="Static" runat="server" CssClass="form-control required" AppendDataBoundItems="true">
                                <asp:ListItem Value="OFFICE01" Text="Hồ Chí Minh"></asp:ListItem>
                                <asp:ListItem Value="OFFICE02" Text="Hà Nội"></asp:ListItem>
                            </asp:DropDownList> 
                        </div>
                    </div> 
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class=""><small>*Click button below to add new user</small></label></br>
                            <asp:Button ID="it_b_AddNewUser" ClientIDMode="Static" CssClass=" btn btn-primary btn-sm" runat="server" Text="Save" onclick="it_b_AddNewUser_Click" />
                        </div>
                     </div>
                </div>
            </form>
        </div>
    </div>
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Danh sách nhân viên</h5>
        </div>
        <div class="ibox-content">
            <div class="row col-sm-6">
                <div class="input-group">
                    <input type="text" placeholder="Search Employees " class="input form-control searchbox-input" autocomplete="off">
                    <span class="input-group-append">
                         <button type="button" class="btn btn btn-primary "> <i class="fa fa-search"></i> Search</button>
                    </span>
                </div>
            </div>
           <div class="employee-list mt-4 animated fadeInRight">
               <div class="row">
                   <asp:ListView runat="server" ID="_rpt_Alluser" OnItemCommand="_rpt_Alluser_ItemCommand">
                        <ItemTemplate>
                           <div class="col-lg-4">
                                <div class="contact-box">
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="text-center">
                                                <img alt="image" class="rounded-circle m-t-xs img-fluid" src="../img/a1.jpg">
                                            </div>
                                        </div>
                                        <div class="col-8 align-self-center">
                                            <div>
                                                <h3 class="mb-0"><strong><%# Eval("StaffNameVnEng")%></strong></h3>
                                                <div class="font-bold">
                                                    <p class="mb-0"><%# Eval("Position")%></p>
                                                    <p class=""><%# Eval("STAFF_TEAM")%></p>
                                                </div>                                                
                                                <address>
                                                   <strong><i class="fa fa fa-envelope"></i></strong> <%# Eval("Email")%><br> 
                                                   <strong><i class="fa fa fa-phone"></i></strong> <%# Eval("Phone")%></strong>
                                                </address>
                                            </div>
                                   
                                        </div>
                                    </div>
                                    <div class="control-employee">
                                        <a class="btn btn-info btn-xs" href="#"><i class="fa fa-edit"></i> Sửa</a>
                                        <a class="btn btn-danger btn-xs" href="#"><i class="fa fa-trash-o"></i> Xóa</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                   </asp:ListView>
                </div>
           </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
     <script src="../js/plugins/dataTables/datatables.min.js"></script>
    <script src="../js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
    <!-- Ladda -->
    <script src="../js/plugins/ladda/spin.min.js"></script>
    <script src="../js/plugins/ladda/ladda.min.js"></script>
    <script src="../js/plugins/ladda/ladda.jquery.min.js"></script>
    <!-- Page-Level Scripts -->
    <!-- Date range picker -->
    <script src="../js/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Data picker -->
   <script src="../js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script>


        var mem = $('#dataDateTimeFrom .input-group.date, #dataDateTimeTo .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
        var yearsAgo = new Date();
        yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);

        $(document).ready(function () {

           
            $(".frmemployees").validate({
                lang: 'vi',
                ignore: [],
                rules: {
                    gender: { required: true },
                    product: { required: true },
                    team: { required: true },
                    office: { required: true },
                    part: { required: true },
                    position: { required: true },
                    permission: { required: true }
                }
              
            });
            //search cart
            $('.searchbox-input').on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $(".col-lg-4").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
            // Bind normal buttons
            Ladda.bind('.ladda-button', { timeout: 2000 });

            // Bind progress buttons and simulate loading progress
            Ladda.bind('.progress-demo .ladda-button', {
                callback: function (instance) {
                    var progress = 0;
                    var interval = setInterval(function () {
                        progress = Math.min(progress + Math.random() * 0.1, 1);
                        instance.setProgress(progress);

                        if (progress === 1) {
                            instance.stop();
                            clearInterval(interval);
                        }
                    }, 200);
                }
            });
            var l = $('.ladda-button-demo').ladda();
            l.click(function () {
                // Start loading
                l.ladda('start');

                // Timeout example
                // Do something in backend and then stop ladda
                setTimeout(function () {
                    l.ladda('stop');
                }, 12000)
            });
        });
    </script>
</asp:Content>
