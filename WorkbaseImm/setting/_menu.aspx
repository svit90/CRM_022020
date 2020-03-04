<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_menu.aspx.cs" Inherits="WorkbaseImm.setting.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>CRM SYSTEM | Setting Menu </title>
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="../css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Setting Menu</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a>Admin</a>
                </li>
                <li class="breadcrumb-item active">
                    <strong>Menu</strong>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Add New Menu</h5>
            <a class="btn btn-white btn-bitbucket" data-toggle="modal" data-target="#addCodeMain"><i class="fa fa-plus"></i></a>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="table-responsive">
               <table id="example" class="display" style="width:100%">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Code</th>
                            <th>Tên</th>
                            <th>Link</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                   <tbody>
                                  
                    </tbody>
                   
                </table>

                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                        <tr>
                            <th>Code</th>
                            <th>Tên</th>
                            <th>Link</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                                  
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Code</th>
                            <th>Tên</th>
                            <th>Link</th>
                            <th>Edit</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

        </div>
    </div>
    <div class="modal inmodal" id="editCodeMain" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa fa-pencil modal-icon"></i>
                    <h4 class="modal-title">Edit Code Main</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên Menu</label>
                        <input type="text" placeholder="Nhập Tên Menu" class="form-control"></div>
                    <div class="form-group">
                        <label>Link</label>
                        <input type="text" placeholder="Nhập Link" class="form-control"></div>
                    <div class="form-group">
                        <label>Phân Cấp Menu</label>
                        <input type="text" placeholder="Phân Cấp Menu" class="form-control"></div>  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Đóng</button>
                    <button type="button" class="ladda-button ladda-button-demo btn btn-primary" data-style="zoom-out">Lưu</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="addCodeMain" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInLeft">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa fa-plus modal-icon"></i>
                    <h4 class="modal-title">Thêm mới menu</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên Menu</label>
                        <input type="text" placeholder="Nhập Tên Menu" class="form-control"></div>
                    <div class="form-group">
                        <label>Link</label>
                        <input type="text" placeholder="Nhập Link" class="form-control"></div>
                    <div class="form-group">
                        <label>Phân Cấp Menu</label>
                        <select class="form-control m-b" name="account">
                            <option>--Chọn--</option>
                            <option>template1</option>
                            <option>template2</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Đóng</button>
                    <button class="ladda-button ladda-button-demo btn btn-primary" data-style="zoom-out">Thêm</button>
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
    <script>
        $(document).ready(function () {
            $('#example').DataTable({
                "data": "https://api.immgroup.com/crm/menu/all/",
                "columns": [
                    { "data": "PriKey" },
                    { "data": "ParentKey" },
                    { "data": "MenuName" },
                    { "data": "MenuUrl" }
                ]
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
