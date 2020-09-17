<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_customerProfile.aspx.cs" Inherits="WorkbaseImm.customer._customerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="../css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">
    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../css/_customerProfile.css" rel="stylesheet" />
    <style>

        .vertical-timeline-block .vertical-timeline-content{
               padding: 15px 20px 20px 20px;
        }
    </style>
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
                    <a>Khách hàng</a>
                </li>
                <li class="breadcrumb-item active">
                    <strong>Thông tin hồ sơ</strong>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
  <div class="row">
       <div class="col-lg-9">
       <div class="row m-t-lg">

           <div class="col-lg-2">
               <div class="profile-image">
                    <img src="../img/a4.jpg" class="rounded-circle circle-border" alt="profile">
                </div>
           </div>
           <div class="col">
                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Họ và tên:</dt> </div>
                    <div class="col-sm-8 text-sm-left">
                        <div class="clt-name">
                           <dd class="mb-1 clt_edit">Vũ Sang</dd> 
                           <div class="input-group d-none">
                                <input type="text" placeholder="Tên" class="input-type  form-control" autocomplete="off">
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Ngày sinh:</dt> </div>
                    <div class="col-sm-8 text-sm-left"> 
                        <div class="clt-name">
                            <dd class="mb-1 clt_edit">11/11/1991</dd>
                            <div class="input-group d-none">
                                <input type="text" placeholder="Ngày" class="input-type  form-control" autocomplete="off">
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Giới tính:</dt> </div>
                    <div class="col-sm-8 text-sm-left"> 
                         <div class="clt-name">
                             <dd class="mb-1 clt_edit">Nam</dd>
                             <div class="input-group d-none">
                                 <select data-placeholder="Giới tính" class="input-type form-control" >
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                 </select>
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                         </div>
                    </div>
                </dl>
                <dl class="row mb-1 ">
                    <div class="col-sm-4 text-sm-right"><dt>Email:</dt> </div>
                    <div class="col-sm-8 text-sm-left"> 
                        <div class="clt-name">
                            <dd class="mb-1 clt_edit">vusang@gmail.com</dd>
                            <div class="input-group d-none">
                                <input type="email" placeholder="Email" class="input-type  form-control" autocomplete="off">
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
                                           
                                            
            </div>
            <div class="col-lg-5" id="cluster_info">

                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Điện thoại:</dt> </div>
                    <div class="col-sm-8 text-sm-left">
                        <div class="clt-name">
                            <dd class="mb-1 clt_edit">015924646546</dd>
                            <div class="input-group d-none">
                                <input type="text" placeholder="Phone" class="input-type  form-control" autocomplete="off">
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Địa chỉ:</dt> </div>
                    <div class="col-sm-8 text-sm-left"> 
                        <div class="clt-name">
                            <dd class="mb-1 clt_edit">99 Nguyễn Đình Chiểu. HCM</dd>
                            <div class="input-group d-none">
                                <input type="text" placeholder="Địa chỉ" class="input-type  form-control" autocomplete="off">
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
                <dl class="row mb-1">
                    <div class="col-sm-4 text-sm-right"><dt>Tình trạng hôn nhân:</dt> </div>
                    <div class="col-sm-8 text-sm-left"> 
                        <div class="clt-name">
                            <dd class="mb-1 clt_edit"> Đã kết hôn </dd>
                            <div class="input-group d-none">
                                <select data-placeholder="Tình trạng hôn nhân" class="input-type form-control" >
                                    <option value="Độc thân">Độc thân</option>
                                    <option value="Đã kết hôn">Đã kết hôn</option>Ly
                                    <option value="Ly hôn">Ly hôn</option>
                                 </select>
                                <span class="input-group-append">
                                     <button type="button" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </dl>
            </div>
       </div>
       <div class="row  m-b-lg">
            <div class="col-lg-10 offset-lg-2">
                <dl class="row mb-0">
                    <div class="col-sm-2 text-sm-right">
                        <dt>Completed:</dt>
                    </div>
                    <div class="col-sm-10 text-sm-left">
                        <dd>
                            <div class="progress m-b-1">
                                <div style="width: 60%;" class="progress-bar progress-bar-striped progress-bar-animated"></div>
                            </div>
                            <small>Project completed in <strong>60%</strong>. Remaining close the project, sign a contract and invoice.</small>
                        </dd>
                    </div>
                </dl>
            </div>
       </div>
       <div class="row">
           <div class="col-lg-5">

               <div class="ibox">
                    <div class="ibox-content">
                        <h3>Di trú Úc <label class="label label-warning">Sản phẩm</label></h3>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Loại khách:</b></div>
                                    <div class="col-md-6">Khách hàng tiềm năng</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseloaikhach"><i class="fa fa-edit"></i> Sửa</a>
                                      
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseloaikhach">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseloaikhach">Hủy</button>
                                            </div>
                                        </div>
                                    </div> 

                                </div>
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Độ nghiêm túc:</b></div>
                                    <div class="col-md-6">Chưa chọn độ nghiêm túc</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapsedonghiemtuc"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapsedonghiemtuc">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapsedonghiemtuc">Hủy</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Trạng thái (chỉ di trú):</b></div>
                                    <div class="col-md-6">Chưa chọn trạng thái</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapsetrangthai"><i class="fa fa-edit"></i> Sửa</a>
                                
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapsetrangthai">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapsetrangthai">Hủy</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                                    
                            </div>
                        </div>

                    </div>
                </div>

               <div class="ibox">
                    <div class="ibox-content">
                        <h3>Bất động sản Úc <label class="label label-warning">Sản phẩm</label></h3>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Loại khách:</b></div>
                                    <div class="col-md-6">Khách hàng tiềm năng</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseloaikhach1"><i class="fa fa-edit"></i> Sửa</a>
                                      
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseloaikhach1">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseloaikhach1">Hủy</button>
                                            </div>
                                        </div>
                                    </div> 

                                </div>
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Độ nghiêm túc:</b></div>
                                    <div class="col-md-6">Chưa chọn độ nghiêm túc</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapsedonghiemtuc1"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapsedonghiemtuc1">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapsedonghiemtuc1">Hủy</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row  field-group">
                                    <div class="col-md-6"><b>Trạng thái (chỉ di trú):</b></div>
                                    <div class="col-md-6">Chưa chọn trạng thái</div>
                                    <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapsetrangthai1"><i class="fa fa-edit"></i> Sửa</a>
                                
                                    <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapsetrangthai1">
                                        <div class="">                                                           
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                        <option value="">Chọn dịch vụ</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapsetrangthai1">Hủy</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                                    
                            </div>
                        </div>

                    </div>
                </div>
              
           </div>
           <div class="col-lg-7">

               <div id="vertical-timeline" class="light-timeline no-margins">
                 
                    <div class="vertical-timeline-block">
                        <div class="vertical-timeline-icon bg-danger">
                            <i class="fa fa-users"></i>
                        </div>

                        <div class="vertical-timeline-content">
                            <h2>NGƯỜI THÂN, VỢ HOẶC CHỒNG</h2>
                            
                            <div class="row ">
                                <div class="col-md-12">
                                   
                                    <div class="row field-group">
                                        <div class="col-md-6"><b>Sản phẩm:</b></div>
                                        <div class="col-md-6">Di trú Canada</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseTTSanPham"><i class="fa fa-edit"></i> Sửa</a>
                                      
                                        <%--Edit sản phẩm--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseTTSanPham">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                            <option value="">Chọn dịch vụ</option>
                                                            <option value="Di trú Canada" selected>Di trú Canada</option>
                                                            <option value="United Kingdom">United Kingdom</option>
                                                            <option value="Afghanistan">Afghanistan</option>
                                                            <option value="Aland Islands">Aland Islands</option>
                                                            <option value="Albania">Albania</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseTTSanPham">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit sản phẩm --%>
                                    </div>
                                    <div class="row field-group">
                                        <div class="col-md-6"><b>Loại khách:</b></div>
                                        <div class="col-md-6">Khách hàng tiềm năng</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseLoaiKhach"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <%--Edit loại khách--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseLoaiKhach">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select class="form-control" name="account">
                                                            <option>option 1</option>
                                                            <option>option 2</option>
                                                            <option>option 3</option>
                                                            <option>option 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseLoaiKhach">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit loại khách --%>
                                    </div>
                               
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Độ nghiêm túc:</b></div>
                                        <div class="col-md-6">Chưa chọn độ nghiêm túc</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseDoNghiemTuc"><i class="fa fa-edit"></i> Sửa</a>
                                       
                                        <%--Edit độ nghiêm túc--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseDoNghiemTuc">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select class="form-control" name="account">
                                                            <option>option 1</option>
                                                            <option>option 2</option>
                                                            <option>option 3</option>
                                                            <option>option 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseDoNghiemTuc">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit độ nghiêm túc --%>
                                    </div>
                                    <div class="row field-group">
                                        <div class="col-md-6"><b>Trạng thái (chỉ di trú):</b></div>
                                        <div class="col-md-6">Chưa chọn trạng thái</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseTrangThai"><i class="fa fa-edit"></i> Sửa</a>
                                       
                                        <%--Edit độ trạng thái--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseTrangThai">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select class="form-control" name="account">
                                                            <option>option 1</option>
                                                            <option>option 2</option>
                                                            <option>option 3</option>
                                                            <option>option 4</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseTrangThai">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit trạng thái --%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="vertical-timeline-block">
                        <div class="vertical-timeline-icon lazur-bg">
                            <i class="fa fa-bullhorn"></i>
                        </div>

                        <div class="vertical-timeline-content">
                            <h2>MARKETING</h2>
                            
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>ID Khách:</b></div>
                                        <div class="col-md-6">23224</div>
                                    </div>
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Văn phòng:</b></div>
                                        <div class="col-md-6">Hồ Chí Minh</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseVanPhong"><i class="fa fa-edit"></i> Sửa</a>
                                        <%--Edit văn phòng--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseVanPhong">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn văn phòng" class="chosen-select">
                                                            <option>Chọn văn phòng</option>
                                                            <option value="Hồ Chí Minh" selected>Hồ Chí Minh</option>
                                                            <option value="Hà Nội">Hà Nội</option>
                                                            <option value="Hải Phòng">Hải Phòng</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseVanPhong">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit văn phòng --%>
                                    </div>
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Ngày ký hợp đồng:</b></div>
                                        <div class="col-md-6">12/12/2018</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseNgayKyHopDong"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <%--Edit ngày ký hợp đồng--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseNgayKyHopDong">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center dataDateTime">
                                                    <div class="col-md-12">
                                                        <div class="input-group date ">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            <input type="text" class="form-control" value="12/12/2018">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseNgayKyHopDong">Hủy</button>
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit ngày ký hợp đồng --%>
                                    </div>
                                    
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Ngày liên hệ đầu tiên:</b></div>
                                        <div class="col-md-6">10/11/2018</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseNgayLienHeDau"><i class="fa fa-edit"></i> Sửa</a>
                                       
                                        <%--Edit ngày liên hệ đâu--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseNgayLienHeDau">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center dataDateTime">
                                                    <div class="col-md-12">
                                                        <div class="input-group date ">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            <input type="text" class="form-control" value="10/11/2018">
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr />
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseNgayLienHeDau">Hủy</button>
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit ngày ký hợp đồng --%>
                                    </div>
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Đối tác giới thiệu khách</b></div>
                                        <div class="col-md-6">Di Trú HCM</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseDoiTacGioiThieuKhach"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <%--Edit đối tác giới thiệu khách--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseDoiTacGioiThieuKhach">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center dataDateTime">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn đối tác" class="chosen-select">
                                                            <option>Chọn đối tác</option>
                                                            <option>Di Trú HCM</option>
                                                            <option>Cty TNHH Kết nối Học Tập</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseDoiTacGioiThieuKhach">Hủy</button>
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit đối tác giới thiệu khách --%>
                                    </div>
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Nguồn khách:</b></div>
                                        <div class="col-md-6">Khách cũ giới thiệu</div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseNguonKhach"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <%--Edit đối tác giới thiệu khách--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseNguonKhach">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center dataDateTime">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn nguồn khách" class="chosen-select">
                                                            <option>Chọn nguồn khách</option>
                                                            <option value="Khách cũ giới thiệu" selected>Khách cũ giới thiệu</option>
                                                            <option value="Đối tác, Agent">Đối tác, Agent</option>
                                                            <option value="Tổng Đài">Tổng Đài</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseNguonKhach">Hủy</button>
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit đối tác giới thiệu khách --%>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    <div class="vertical-timeline-block">
                        <div class="vertical-timeline-icon yellow-bg">
                            <i class="fa fa-book"></i>
                        </div>

                        <div class="vertical-timeline-content">
                            <h2>EMAIL TEMPLATE</h2>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row  field-group">
                                        <div class="col-lg-12"> 
                                            <h4 class="font-bold"> Chọn template để gửi mail cho khách hàng  </h4>
                                        </div>  
                                        <div class="col-lg-12">
                                            <div class="form-group row align-items-center">
                                                <div class="col-md-12">
                                                    <select data-placeholder="Chọn template" class="chosen-select" multiple>
                                                        <option value="">Chọn template</option>
                                                        <option value="Di trú Canada">Di trú Canada</option>
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="Afghanistan">Afghanistan</option>
                                                        <option value="Aland Islands">Aland Islands</option>
                                                        <option value="Albania">Albania</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="btn-actions text-right">
                                                <button type="button" class="btn btn-primary btn-xs">Nhập thông tin và gửi</button>
                                            </div>
                                        </div>
                                        

                                    </div>
                                 
                                </div>
                            </div>

                        </div>
                    </div>

                   <div class="vertical-timeline-block">
                        <div class="vertical-timeline-icon navy-bg">
                            <i class="fa fa-book"></i>
                        </div>

                        <div class="vertical-timeline-content">
                            <h2>CUSTOMER EXPERIENCE COMPLIANCE</h2>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Chọn template để gửi mail cho khách hàng:</b></div>
                                        <div class="col-md-6"></div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapsetemplate"><i class="fa fa-edit"></i> Sửa</a>
                                      
                                        <%--Edit sản phẩm--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapsetemplate">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                            <option value="">Chọn dịch vụ</option>
                                                            <option value="Di trú Canada">Di trú Canada</option>
                                                            <option value="United Kingdom">United Kingdom</option>
                                                            <option value="Afghanistan">Afghanistan</option>
                                                            <option value="Aland Islands">Aland Islands</option>
                                                            <option value="Albania">Albania</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Nhập thông tin và gửi</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapsetemplate">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit sản phẩm --%>
                                    </div>
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Nhân viên CEC:</b></div>
                                        <div class="col-md-6"></div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseCEC"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <%--Edit loại khách--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseCEC">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                            <option value="">Chọn dịch vụ</option>
                                                            <option value="Di trú Canada">Di trú Canada</option>
                                                            <option value="United Kingdom">United Kingdom</option>
                                                            <option value="Afghanistan">Afghanistan</option>
                                                            <option value="Aland Islands">Aland Islands</option>
                                                            <option value="Albania">Albania</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Cập nhật</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseCEC">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit loại khách --%>
                                    </div>
                               
                                    <div class="row  field-group">
                                        <div class="col-md-6"><b>Chọn form khảo sát để gửi cho khách hàng:</b></div>
                                        <div class="col-md-6"></div>
                                        <a class="btn btn-success btn-xs edit-field collapsed" data-toggle="collapse" href="#collapseFormkhaosat"><i class="fa fa-edit"></i> Sửa</a>
                                       
                                        <%--Edit độ nghiêm túc--%>
                                        <div class="collapse gray-bg p-2 m-3 w-100 edit-panel" id="collapseFormkhaosat">
                                            <div class="">                                                           
                                                <div class="form-group row align-items-center">
                                                    <div class="col-md-12">
                                                        <select data-placeholder="Chọn dịch vụ" class="chosen-select" multiple>
                                                            <option value="">Chọn dịch vụ</option>
                                                            <option value="Di trú Canada">Di trú Canada</option>
                                                            <option value="United Kingdom">United Kingdom</option>
                                                            <option value="Afghanistan">Afghanistan</option>
                                                            <option value="Aland Islands">Aland Islands</option>
                                                            <option value="Albania">Albania</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="btn-actions text-right">
                                                    <button type="button" class="btn btn-primary btn-xs">Nhập thông tin và gửi</button>
                                                    <button type="button" class="btn btn-white btn-xs" data-toggle="collapse" data-target="#collapseFormkhaosat">Hủy</button>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- end edit độ nghiêm túc --%>
                                    </div>
                                    
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="vertical-timeline-block">
                        <div class="vertical-timeline-icon bg-success">
                            <i class="fa fa-dollar"></i>
                        </div>

                        <div class="vertical-timeline-content">
                            <h2>CÁC KHOẢN PHÍ</h2>
                            
                            <div class="">
                           
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-danger m-r-sm" data-toggle="modal" data-target="#serviceFeeModal"><i class="fa fa-plus-square"></i></button>
                                            
                                            PHÍ DỊCH VỤ
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-info m-r-sm" data-toggle="modal" data-target="#lawyerFeeModal"><i class="fa fa-plus-square"></i></button>
                                            PHÍ LUẬT SƯ
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-warning m-r-sm" data-toggle="modal" data-target="#govermentFeeModal"><i class="fa fa-plus-square"></i></button>
                                           PHÍ CHÍNH PHỦ
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-primary m-r-sm" data-toggle="modal" data-target="#businessFeeModal"><i class="fa fa-plus-square"></i></button>
                                          PHÍ KINH DOANH
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-success  m-r-sm" data-toggle="modal" data-target="#otherFeeModal"><i class="fa fa-plus-square"></i></button>
                                            CÁC PHÍ KHÁC
                                        </td>
                                    </tr>
    
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                   

                   
                </div>


           </div>
       </div>
       

   </div>
   <div class="col-lg-3">
       <div class="ibox">
            <div class="ibox-content">
                <h3>Nhân viên Sale</h3>
                <p class="small">
                    If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                    anything embarrassing
                </p>
                <div class="user-friends">
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a3.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a1.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a2.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a4.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a5.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a6.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a7.jpg"></a>
                </div>
            </div>
        </div>
       <div class="ibox">
            <div class="ibox-content">
                <h3>Nhân viên thụ lý hồ sơ</h3>
                <p class="small">
                    If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                    anything embarrassing
                </p>
                <div class="user-friends">
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a3.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a1.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a2.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a4.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a5.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a6.jpg"></a>
                    <a href=""><img alt="image" class="rounded-circle" src="../img/a7.jpg"></a>
                </div>
            </div>
        </div>
       <div class="ibox">
            <div class="ibox-title">
                <h5>Chat với khách hàng</h5>
                <div class="ibox-tools">
                    <a class="collapse-link" href="">
                        <i class="fa fa-chevron-up"></i>
                    </a>                                            
                    <a class="close-link" href="">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <iframe style="border:0;width: 100%;" src="https://imm-crm.firebaseapp.com/widget/c/staffs/9e1b8147-37a9-4a68-9bcc-f0c38c402003/customers/"></iframe>
            </div> 
        </div>
   </div>
  </div>




    <div class="modal inmodal" id="serviceFeeModal">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Phí dịch vụ</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label><b>Số tiền:</b></label>
                        <input type="text" class="form-control" value="9.000 USD" />
                    </div>
                    <label><b>Trạng thái:</b></label>
                    <ul class="list-unstyled">
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="serviveFeeStatus" checked=""><span class="ml-1">Chưa thanh toán</span> </label>
                        </li>
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="serviveFeeStatus"><span class="ml-1">Đã thanh toán</span></label>
                        </li>
                    </ul>
                    <div class="form-group">
                        <label><b>Ghi chú:</b></label>
                        <textarea class="form-control" cols="100" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Cập nhật thông tin</button>
                </div>
            </div>
        </div>
    </div>


    
<div class="modal inmodal" id="lawyerFeeModal">
    <div class="modal-dialog">
        <div class="modal-content animated fadeIn">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">Phí luật sư</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label><b>Số tiền:</b></label>
                    <input type="text" class="form-control" value="9.000 USD" />
                </div>
                <label><b>Trạng thái:</b></label>
                <ul class="list-unstyled">
                    <li class="i-checks">
                        <label>
                            <input type="radio" name="lawyerFeeStatus" checked=""><span class="ml-1">Chưa thanh toán</span> </label>
                    </li>
                    <li class="i-checks">
                        <label>
                            <input type="radio" name="lawyerFeeStatus"><span class="ml-1">Đã thanh toán</span></label>
                    </li>
                </ul>
                <div class="form-group">
                    <label><b>Ghi chú:</b></label>
                    <textarea class="form-control" cols="100" rows="3"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-primary">Cập nhật thông tin</button>
            </div>
        </div>
    </div>
</div>


    <div class="modal inmodal" id="govermentFeeModal">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Phí chính phủ</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label><b>Số tiền:</b></label>
                        <input type="text" class="form-control" value="9.000 USD" />
                    </div>
                    <label><b>Trạng thái:</b></label>
                    <ul class="list-unstyled">
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="govermentFeeStatus" checked=""><span class="ml-1">Chưa thanh toán</span>
                            </label>
                        </li>
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="govermentFeeStatus"><span class="ml-1">Đã thanh toán</span></label>
                        </li>
                    </ul>
                    <div class="form-group">
                        <label><b>Ghi chú:</b></label>
                        <textarea class="form-control" cols="100" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Cập nhật thông tin</button>
                </div>
            </div>
        </div>
    </div>


   
    <div class="modal inmodal" id="businessFeeModal">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Phí kinh doanh</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label><b>Số tiền:</b></label>
                        <input type="text" class="form-control" value="9.000 USD" />
                    </div>
                    <label><b>Trạng thái:</b></label>
                    <ul class="list-unstyled">
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="businessFeeStatus" checked=""><span class="ml-1">Chưa thanh toán</span>
                            </label>
                        </li>
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="businessFeeStatus"><span class="ml-1">Đã thanh toán</span></label>
                        </li>
                    </ul>
                    <div class="form-group">
                        <label><b>Ghi chú:</b></label>
                        <textarea class="form-control" cols="100" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Cập nhật thông tin</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal inmodal" id="otherFeeModal">
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Các phí khác</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label><b>Số tiền:</b></label>
                        <input type="text" class="form-control" value="9.000 USD" />
                    </div>
                    <label><b>Trạng thái:</b></label>
                    <ul class="list-unstyled">
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="otherFeeStatus" checked=""><span class="ml-1">Chưa thanh toán</span>
                            </label>
                        </li>
                        <li class="i-checks">
                            <label>
                                <input type="radio" name="otherFeeStatus"><span class="ml-1">Đã thanh toán</span></label>
                        </li>
                    </ul>
                    <div class="form-group">
                        <label><b>Ghi chú:</b></label>
                        <textarea class="form-control" cols="100" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Cập nhật thông tin</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
    <%--https://crm.imm.group/customer/profile.aspx?cusid=23224&nation=CT01--%>
    <!-- Sweet alert -->
    <script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
       
        $('.not-app').click(function () {
            swal({
                type: "warning",
                title: "Thông báo",
                text: "Khách hàng chưa cài đặt ứng dụng hoặc chưa đăng nhập ứng dụng trên điện thoại, vui lòng gửi thông tin đăng nhập cho khách hàng.",
                confirmButtonColor: "#1ab394",
            });
        });
        $('#RebackCus').click(function () {
            swal({
                title: "Bạn có chắc chắn muốn trả lại saleleads này? ",
                text: "Bạn sẽ không thể tương tác với khách này sau khi trả lại",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Vâng, trả lại",
                closeOnConfirm: false
            }, function () {
                swal("Đã trả lại", "Một email thông báo sẽ được gửi đến những người có liên quan", "success");
            });
        });
        $('#ReDeleteCus').click(function () {
            swal({
                title: "Bạn có chắc chắn muốn đề xuất xóa saleleads này?",
                text: "Bạn sẽ không thể tương tác với khách này sau khi đề xuất xóa",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Vâng, đề xuất",
                closeOnConfirm: false
            }, function () {
                swal("Đã đề xuất", "Một email thông báo sẽ được gửi đến những người có liên quan", "success");
            });
        });
        $('#DeleteCus').click(function () {
            swal({
                title: "Bạn có chắc chắn muốn xóa hồ sơ này?",
                text: "Bạn sẽ không thể tương tác với khách này sau khi xóa",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Vâng, xóa",
                closeOnConfirm: false
            }, function () {
                swal("Đã xóa", "Một email thông báo sẽ được gửi đến những người có liên quan", "success");
            });
        });
    </script>
    <!-- Chosen -->
    <script src="../js/plugins/chosen/chosen.jquery.js"></script>
    <script>
        $('.chosen-select').chosen({ width: "100%" });
    </script>
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
    <!-- iCheck -->
    <script src="../js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
            $(".clt_edit").click(function (e) {
                $(this).addClass("d-none");
                $(this).parent().find(".input-group").removeClass("d-none");
                $(this).parent().find(".input-group").addClass("escape");
                $(this).addClass("escape");
            });

            $(document).keyup(function (e) {
                if (e.key === "Escape") { // escape key maps to keycode `27`
                    //alert("ádas");
                    $(".escape").toggleClass("d-none");
                }
            });

        });
       
    </script>
</asp:Content>
