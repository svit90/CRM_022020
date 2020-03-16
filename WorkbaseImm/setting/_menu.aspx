<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_menu.aspx.cs" Inherits="WorkbaseImm.setting._menu" EnableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>CRM SYSTEM | Setting Menu </title>
    <link href="../css/plugins/dataTables/datatables.min.css" rel="stylesheet">    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
<form id="_form" runat="server">
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Thêm mới menu</h5>
            <a class="btn btn-white btn-bitbucket" data-toggle="modal" data-target="#addCodeMain"><i class="fa fa-plus"></i></a>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>     
                        <tr>
							<th>Menu Code</th>
							<th>Menu Parent Code</th>
							<th>Tên hiển thị</th>
							<th>Link</th>
							<th>Trạng thái</th>
							<th>Icon</th>
                            <th>Action</th>
						</tr>
                    </thead>
                    <tbody>                                  
                    </tbody>                 
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
                    <h4 class="modal-title">Chỉnh sửa Menu</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group d-none">
                        <label>Menu Code</label>
                        <asp:TextBox ID="_txt_menuCode_edit" runat="server" class="form-control" placeholder="Nhập Code Menu" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Menu icon</label>
                        <asp:TextBox ID="_txt_menuIcon_edit" runat="server" class="form-control" placeholder="Nhập Code Icon" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tên Menu</label>                        
                        <asp:TextBox ID="_txt_menuName_edit" runat="server" class="form-control" placeholder="Nhập Tên Menu" autocorrect="off" autocomplete="off"></asp:TextBox> </div>
                    <div class="form-group">
                        <label>Link</label>
                        <asp:TextBox ID="_txt_menuLink_edit" runat="server" class="form-control" placeholder="Nhập Link" autocorrect="off" autocomplete="off"></asp:TextBox></div>                   
                    <div class="form-group">
                        <label>Là sub Menu của:</label> <asp:TextBox ID="_txt_parentCode_selected_edit" runat="server" CssClass="d-none"></asp:TextBox>
                        <select id="select_parent_menu_edit" runat="server" class="form-control">                          
                            <option value="0">Không phải sub menu</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer"> 
                    <button type="button" class="btn btn-primary block m-b m-r btn-white" data-dismiss="modal">Đóng</button>
                    <asp:LinkButton ID="btn_DeactiveMenu" runat="server" class="btn btn-danger block m-b m-r" data-style="zoom-out" OnClick="btn_DeactiveMenu_Click">De-active</asp:LinkButton>
                    <asp:LinkButton ID="btn_SaveNewMenu" runat="server" class="btn btn-primary block m-b m-r" data-style="zoom-out" OnClick="btn_SaveNewMenu_Click">Lưu</asp:LinkButton>
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
                    <div class="form-group d-none">
                        <label>Menu Code</label>
                        <asp:TextBox ID="_txt_menuCode" runat="server" class="form-control" placeholder="Nhập Code Menu" autocorrect="off" autocomplete="off"></asp:TextBox>                
                    </div>
                    <div class="form-group">
                        <label>Menu icon</label>
                        <asp:TextBox ID="_txt_menuIcon" runat="server" class="form-control" placeholder="Nhập Code Icon" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tên Menu</label>
                        <asp:TextBox ID="_txt_menuName" runat="server" class="form-control" placeholder="Nhập Tên Menu" autocorrect="off" autocomplete="off"></asp:TextBox> 
                    </div>
                    <div class="form-group">
                        <label>Link</label>
                        <asp:TextBox ID="_txt_menuLink" runat="server" class="form-control" placeholder="Nhập Link" autocorrect="off" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Là sub Menu của:</label> <asp:TextBox ID="_txt_parentCode_selected" runat="server" CssClass="d-none">0</asp:TextBox>
                        <select id="select_parent_menu" runat="server" class="form-control">                          
                            <option value="0">Không phải sub menu</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary block m-b m-r btn-white" data-dismiss="modal">Đóng</button>
                    <asp:LinkButton ID="btn_addNewMenu" runat="server" class="btn btn-primary block m-b m-r" data-style="zoom-out" OnClick="btn_addNewMenu_Click">Thêm</asp:LinkButton>
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
            var flickerAPI = "https://api.immgroup.com/crm/menu/all";
            $.getJSON(flickerAPI, {
                format: "json"
            }).done(function (data) {
                //return data
                var stringified = JSON.stringify(data);
                var parsedObj = JSON.parse(stringified);
                $('.dataTables-example').DataTable({
                    "data": parsedObj,
                    "columns": [
                        { "data": "PriKey" },
                        { "data": "ParentKey" },
                        { "data": "MenuName" },
                        { "data": "MenuUrl" },
                        { "data": "Flag" },
                        { "data": "MenuIcon" },
                        { "data": "MenuAction" }
                    ]
                });
                //Biding Parent menu
                var str = "";
                jQuery.each(data, function (i, val) {
                    str += "<option value=\"" + val.PriKey + "\">" + val.MenuName+"</option>";
                });  
                $("#ContentAll_select_parent_menu").append(str);
                $("#ContentAll_select_parent_menu_edit").append(str);
            });

           

           
        });

        $("#ContentAll_select_parent_menu").change(function () {
            var val = (this.value);
            $("#ContentAll__txt_parentCode_selected").text(val);
            $("#ContentAll__txt_parentCode_selected").val(val);
        });
        $("#ContentAll_select_parent_menu_edit").change(function () {
            var val = (this.value);
            $("#ContentAll__txt_parentCode_selected_edit").text(val);
            $("#ContentAll__txt_parentCode_selected_edit").val(val);
        });

        function funceditCodeMain(prikey,parent,name,flag,url,icon){
            $("#ContentAll__txt_menuCode_edit").text(prikey);
            $("#ContentAll__txt_menuCode_edit").val(prikey);
            $("#ContentAll__txt_menuName_edit").val(name);
            $("#ContentAll__txt_menuLink_edit").val(url);
            $("#ContentAll__txt_menuIcon_edit").val(icon);
            $("#ContentAll__txt_parentCode_selected_edit").val(parent);
            $('#editCodeMain').modal('show');
        }

      
    </script>
</asp:Content>
