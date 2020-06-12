<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_hardwareEmployees.aspx.cs" Inherits="WorkbaseImm.DRM.hardware._hardwareEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
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
                            <label class="">Barcode</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                           <label class="">Mã Nhân Viên</label>
                           <select class="form-control m-b" name="">
                               <option>--Chọn--</option>
                                <option>0001</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="">Phân loại</label>
                            <select class="form-control m-b" name="">
                                <option>--Chọn--</option>
                                <option>Máy tính (PC)</option>
                                <option>Máy tính (Laptop)</option>
                                <option>Máy tính (Allinone)</option>
                                <option>Màng Hình</option>
                                <option>Chuột</option>
                                <option>Bàn Phím</option>
                                <option>Phone</option>
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
                <button class="btn btn-primary btn-sm" type="submit">Submit</button>
                   
                
                
            </form>
        </div>
    </div>
    <div class="ibox ">
        <div class="ibox-title">
            <h5>Danh sách thiết bị</h5>
        </div>
        <div class="ibox-content">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                        <tr>
                            <th>ID</th>
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
                                 <a class="btn btn-info btn-xs" href="#" data-toggle="modal" data-target="#viewdiary"><i class="fa fa-eye"></i> <strong>View</strong></a>
                            </td>
                        </tr>
                        
                    </tbody>
                    <tfoot>
                        <tr>
                           <th>ID</th>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
