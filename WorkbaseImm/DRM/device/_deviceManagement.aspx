<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_deviceManagement.aspx.cs" Inherits="WorkbaseImm.DRM.device._deviceManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="<%= ResolveClientUrl("~/css/plugins/iCheck/custom.css") %>" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
     <form id="_form" role="form" runat="server">
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
            <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Barcode</label>
                            <asp:TextBox ID="_txt_BarCode_Device" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                           <label class="">Chọn nhân Viên</label>
                            <asp:TextBox ID="_txt_STAFF_ID_selected" runat="server" CssClass="d-none"></asp:TextBox>
                           <select id="listStaff" class="form-control m-b" required="">
                               <option value="">--Chọn--</option>
                            </select>
                        </div>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phân loại</label><asp:TextBox ID="_txt_Category_selected" runat="server" CssClass="d-none"></asp:TextBox>
                            <select id="listCategory" class="form-control m-b" name="" required="">
                                <option value="">--Chọn--</option>
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
                            <asp:TextBox ID="_txt_Name_Device" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Thông tin thiết bị</label>
                            <asp:TextBox ID="_txt_Info_Device" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                            <label class="">Ghi chú</label>
                            <asp:TextBox ID="_txt_Note_Device" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <asp:Button ID="btn_addNewDivice" runat="server" type="submit"  Text="submit" CssClass="btn btn-primary btn-sm"  OnClick="btn_addNewDivice_Click" />
        </div>
    </div>
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Danh sách thiết bị</h5>
        </div>
        <div class="ibox-content">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover dataTables-device">
                    <thead>
                        <tr>
                            <th>Barcode</th>
                            <th>Tên Nhân Viên</th>
                            <th>Phân loại</th>
                            <th>Tên thiết bị</th>
                            <th>Thông tin thiết bị</th>
                            <th>Ghi chú</th>
                            <th>Xem nhật ký</th>
                        </tr>
                    </thead>                   
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
                            <select id="editListCategory" class="form-control m-b">
                                <option value="">--Chọn--</option>
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
    <script src="<%= ResolveClientUrl("~/js/plugins/dataTables/datatables.min.js") %>"></script>
    <script src="<%= ResolveClientUrl("~/js/plugins/dataTables/dataTables.bootstrap4.min.js") %>"></script>
     <!-- Page-Level Scripts -->
     <!-- iCheck -->
    <script src="<%= ResolveClientUrl("~/js/plugins/iCheck/icheck.min.js") %>"></script>
    <script>
        $(document).ready(function () {
            //get list staff
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
            });

            //get device data
            var fdeviceAPI = "https://api.immgroup.com/crm/get/device/all";
            $.getJSON(fdeviceAPI, {
                format: "json"
            }).done(function (data) {
                //return data
                var stringified = JSON.stringify(data);
                var parsedObj = JSON.parse(stringified);
                 //Biding data device
                $('.dataTables-device').DataTable({
                    "data": parsedObj,
                    "columns": [
                        { "data": "Barcode" },
                        { "data": "StaffName" },
                        { "data": "Catalogy" },
                        { "data": "DeviceNAme" },
                        { "data": "DeviceInfo" },
                        { "data": "DeviceNote" },
                        { "data": "CreateDate" }
                    ]
                });
            });

            $("#ContentAll__txt_BarCode_Device").focusin(function () {
            });
            $("#ContentAll__txt_BarCode_Device").focusout(function () {
                var idbarcode = $("#ContentAll__txt_BarCode_Device").val();
                $("#ContentAll__txt_BarCode_Device").attr("disabled", "disabled"); 

                var fbarcodeAPI = "https://api.immgroup.com/crm/get/device/" + idbarcode;
                $.getJSON(fbarcodeAPI, {
                    format: "json"
                }).done(function (data) {
                    //return data
                    var stringified = JSON.stringify(data);
                    var parsedObj = JSON.parse(stringified);
                    //Biding Parent menu
             
                    jQuery.each(data, function (i, val) {
                        $("#ContentAll__txt_STAFF_ID_selected").val(val.StaffId);
                        $("#ContentAll__txt_Category_selected").val(val.Catalogy);
                        $("#ContentAll__txt_Name_Device").val(val.DeviceNAme);
                        $("#ContentAll__txt_Info_Device").val(val.DeviceInfo);
                        $("#ContentAll__txt_Note_Device").val(val.DeviceNote);
                    });                   
                    
                    
                });
            });

            //change select staff
            $("#listStaff").change(function () {
                var val = (this.value);
                $("#ContentAll__txt_STAFF_ID_selected").val(val);
            });

             //change select category
            $("#listCategory").change(function () {
                var val = (this.value);
                $("#ContentAll__txt_Category_selected").val(val);
            });


        });


    </script>
</asp:Content>
