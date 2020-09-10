<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_dashboardAddEmployee.aspx.cs" Inherits="WorkbaseImm.dashboard._dashboardAddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>CRM SYSTEM | Quản lý nhân viên </title>
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="../css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">
    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">
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
                            <input type="text" name="name" class="form-control required"  autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Tên tiếng anh</label>
                            <input type="text" name="nameenglish" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Email</label>
                            <input type="email" name="email" class="form-control required email"  autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Số điện thoại</label>
                            <input type="text" name="phone" class="form-control required number">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group" id="dataDateTimeFrom">
                            <label class="font-normal">Ngày sinh</label>
                            <div class="input-group date ">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control required"  placeholder="MM/DD/YY"  value="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Giới tính</label>
                            <select class="form-control m-b required" name="gender">
                                <option >--Chọn--</option>
                                <option value="nam">Nam</option>
                                <option value="nu">Nữ</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phân quyền</label>
                            <select class="form-control m-b required" name="permission">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Vị trí</label>
                            <select class="form-control m-b required" name="position">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Bộ phận cty</label>
                            <select class="form-control m-b required" name="part">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Văn phòng</label>
                            <select class="form-control m-b required" name="office">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Chọn team</label>
                            <select class="form-control m-b required" name="team">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Sản phẩm bán</label>
                            <select class="form-control m-b required" name="product">
                                <option>--Chọn--</option>
                                <option>Admin</option>
                                <option>User</option>
                            </select>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-sm" type="submit">Submit</button>
            </form>
        </div>
    </div>
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Danh sách nhân viên</h5>
        </div>
        <div class="ibox-content">
            <div class="w-25">
                <div class="input-group">
                    <input type="text" placeholder="Search Employees " class="input form-control searchbox-input" autocomplete="off">
                    <span class="input-group-append">
                         <button type="button" class="btn btn btn-primary "> <i class="fa fa-search"></i> Search</button>
                    </span>
                </div>
            </div>
           <div class="employee-list mt-4 animated fadeInRight">
               <div class="row">
                    <div class="col-lg-4">
                        <div class="contact-box">
                            <a class="row" href="profile.html">
                                <div class="col-4">
                                    <div class="text-center">
                                        <img alt="image" class="rounded-circle m-t-xs img-fluid" src="/uploads/blog/profile-nophoto.png">
                                        <div class="m-t-xs font-bold">Graphics designer</div>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <h3><strong>John Smith</strong></h3>
                                    <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                    <address>
                                        <strong>Twitter, Inc.</strong><br>
                                        795 Folsom Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        <abbr title="Phone">P:</abbr> (123) 456-7890
                                    </address>
                                </div>
                            </a>
                        </div>
                    </div>
                   <div class="col-lg-4">
                        <div class="contact-box">
                            <a class="row" href="profile.html">
                                <div class="col-4">
                                    <div class="text-center">
                                        <img alt="image" class="rounded-circle m-t-xs img-fluid" src="/uploads/blog/profile-nophoto.png">
                                        <div class="m-t-xs font-bold">Graphics designer</div>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <h3><strong>John hung</strong></h3>
                                    <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                    <address>
                                        <strong>Twitter, Inc.</strong><br>
                                        795 Folsom Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        <abbr title="Phone">P:</abbr> (123) 456-7890
                                    </address>
                                </div>
                             </a>
                        </div>
                    </div>
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
    <%--https://crm.imm.group/user/addemployee.aspx--%>
</asp:Content>
