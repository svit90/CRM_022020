<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_deviceManagement.aspx.cs" Inherits="WorkbaseImm.DRM.device._deviceManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
    <form id="_form" runat="server">
      <div class="ibox ">
        <div class="ibox-title">
            <h5>Quản lý thiết bị nhân viên</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <form role="form" class="">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                           <label class="">Mã Nhân Viên</label>
                           <select id="listStaff" class="form-control m-b" name="">
                               <option value="Chon">--Chọn--</option>
                               
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phân loại</label>
                            <select class="form-control m-b" name="">
                                <option value="Chon">--Chọn--</option>
                                <option value="Máy tính">Máy tính</option>
                                <option value="Màn hình">Màn Hình</option>
                                <option value="Chuột">Chuột</option>
                                <option value="Bàn phím">Bàn Phím</option>
                                <option value="Phone">Phone</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Tên thiết bị</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Thông tin thiết bị</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Ghi chú</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Barcode</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-sm" type="submit" OnClick="btn_addNewDivice_Click">Submit</button>
                   
                
                
            </form>
        </div>
    </div>
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Danh sách thiết bị</h5>
        </div>
        <div class="ibox-content">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover dataTables-divice">
                    <thead>
                        <tr>
                            <th>Mã Nhân Viên</th>
                            <th>Barcode</th>
                            <th>Phân loại</th>
                            <th>Tên thiết bị</th>
                            <th>Thông tin thiết bị</th>
                            <th>Ghi chú</th>
                            <th>Xem nhật ký</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr class="gradeA">
                            <td>Trident</td>
                            <td>Win 95+</td>
                            <td class="center">5.5</td>
                            <td class="center">A</td>
                            <td class="center">5.5</td>
                            <td class="center">A</td>
                             <td class="center">
                                <a class="btn btn-danger btn-xs" href="#" ><i class="fa fa-trash"></i> <strong>Delete</strong></a>
                                <a class="btn btn-info btn-xs" href="#" ><i class="fa fa-pencil-square-o"></i> <strong>Edit</strong></a>
                                 
                            </td>
                        </tr>
                        
                    </tbody>
                    <tfoot>
                        <tr>
                           <th>Mã Nhân Viên</th>
                            <th>Barcode</th>
                            <th>Phân loại</th>
                            <th>Tên thiết bị</th>
                            <th>Thông tin thiết bị</th>
                            <th>Ghi chú</th>
                            <th>Xem nhật ký</th>
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
                    <h4 class="modal-title">Chỉnh sửa</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Phân Loại</label>
                        <select runat="server" class="form-control m-b">
                            <option value="Chon">--Chọn--</option>
                            <option value="Máy tính">Máy tính</option>
                            <option value="Màn hình">Màn Hình</option>
                            <option value="Chuột">Chuột</option>
                            <option value="Bàn phím">Bàn Phím</option>
                            <option value="Phone">Phone</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tên thiết bị</label>
                        <asp:TextBox ID="_txt_namedevice_edit" runat="server" class="form-control" placeholder="Nhập Tên Thiết Bị" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Thông tin thiết bị</label>                        
                        <asp:TextBox ID="_txt_device_edit" TextMode="MultiLine" runat="server" class="form-control" placeholder="Nhập Thông tin thiết bị" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Link</label>
                        <asp:TextBox ID="_txt_note_edit" runat="server" TextMode="MultiLine" class="form-control" placeholder="Ghi chú" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>                   
                   
                </div>
                <div class="modal-footer"> 
                    <button type="button" class="btn btn-primary block m-b m-r btn-white" data-dismiss="modal">Đóng</button>
                    <asp:LinkButton ID="btn_DeactiveMenu" runat="server" class="btn btn-danger block m-b m-r" data-style="zoom-out" OnClick="btn_DeactiveDivice_Click">De-active</asp:LinkButton>
                    <asp:LinkButton ID="btn_SaveNewMenu" runat="server" class="btn btn-primary block m-b m-r" data-style="zoom-out" OnClick="btn_SaveNewDivice_Click">Lưu</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
        </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
    <script src="../js/plugins/dataTables/datatables.min.js"></script>
    <script src="../js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
     <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function () {
            var flickerAPI = "https://api.immgroup.com/crm/get/staff/all";
            $.getJSON(flickerAPI, {
                format: "json"
            }).done(function (data) {
                //return data
                var stringified = JSON.stringify(data);
                var parsedObj = JSON.parse(stringified);
              
                //Biding Parent menu
                var str = "";
                jQuery.each(data, function (i, val) {
                    str += "<option value=\"" + val.STAFF_ID + "\">" + val.STAFF_NAME + "</option>";
                });
                $("#listStaff").append(str);
                //$("#listStaff").append(str);
            });




        });

      

        function funceditCodeMain(prikey, parent, name, flag, url, icon) {
         
           // $('#editCodeMain').modal('show');
        }


    </script>
</asp:Content>
