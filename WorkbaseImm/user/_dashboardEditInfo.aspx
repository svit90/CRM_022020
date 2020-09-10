<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_dashboardEditInfo.aspx.cs" Inherits="WorkbaseImm.user._dashboardEditInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/_dashboardEditInfo.css" rel="stylesheet" />
    <link href="../css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="../css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
    <link href="../css/plugins/jcrop/jquery.Jcrop.css" rel="stylesheet" type="text/css" /> 
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
        <div class="row">
            <div class="col-xl-5 col-lg-8 col-md-10 col-sm-12">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="profile-section">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="d-flex align-items-center info-top">
                                        <div class="avatar cursor" data-toggle="modal" data-target="#editCodeMain">
                                            <img class="rounded-circle" src="../img/avatar/r_cus_default_avatar.png" />
                                        </div>

                                        <div class="modal inmodal" id="editCodeMain" tabindex="-1" role="dialog" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content animated bounceInRight">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        <div class="default-avatar text-center">
                                                            <img class="avatar rounded-circle" style="width:150px; height:150px;" src="../img/avatar/r_cus_default_avatar.png">
                                                        </div>
                                                        <div class="avatar-view d-none">
                                                               <canvas id="canvas" class="rounded-circle "></canvas>
                                                        </div>
                                            
                                                    </div>
                                                    <div class="modal-body">
                                                         <div class="avatar-edit dropzone ">
                                                
                                                             <input type="file" class="filetype" id="FileUpload_jcrop" accept=".jpg,.png,.jpeg" />
                                                
                                                             <img id="Image1" src="" alt="" style="display: none" />
                                                            <button class="btn btn-primary mt-3 btn-xs"  id="btnCrop"  type="button" style="display: none"><i class="fa fa-crop"></i>&nbsp;Crop</button>
                                               
                                                            <input type="hidden" name="imgX1" id="imgX1" />
                                                            <input type="hidden" name="imgY1" id="imgY1" />
                                                            <input type="hidden" name="imgWidth" id="imgWidth" />
                                                            <input type="hidden" name="imgHeight" id="imgHeight" />
                                                            <input type="hidden" name="imgCropped" id="imgCropped" />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                                         <asp:Button ID="btnUpload" runat="server" Text="Save" CssClass="ladda-button ladda-button-demo btn btn-primary" OnClick="Upload" Style="display: none" ClientIDMode="Static" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="sumary-info ml-3">
                                            <p class="mb-0"><b>PHẠM HOÀNG ĐĂNG THANH</b></p>
                                            <p class="mb-0">IT Executive</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-5 pb-5">
                                <div class="col-md-12">
                                    <div class="border-bottom py-2">
                                        <div class="row">
                                            <div class="col-md-4"><b>Full Name:</b></div>
                                            <div class="col-md-8">Phạm Hoàng Đăng Thanh
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
                                            <div class="col-md-4"><b>Other Name:</b></div>
                                            <div class="col-md-8">Paul
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
                                            <div class="col-md-4"><b>Email:</b></div>
                                            <div class="col-md-8">paul@imm.group
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
                                            <div class="col-md-4"><b>Phone number:</b></div>
                                            <div class="col-md-8">0939 878 207
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
                                            <div class="col-md-4"><b>Birthday:</b></div>
                                            <div class="col-md-8 ">01/01/1900
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
                                            <div class="col-md-4"><b>Position:</b></div>
                                            <div class="col-md-8">IT Executive
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
                                            <div class="col-md-4"><b>Office:</b></div>
                                            <div class="col-md-8">
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
                                            <div class="col-md-4"><b>Group:</b></div>
                                            <div class="col-md-8">
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
                                            <div class="col-md-4"><b>Password App CRM:</b></div>
                                            <div class="col-md-8">
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
                                            <div class="col-md-4"><b>Password Email:</b></div>
                                            <div class="col-md-8">
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
                                            <div class="col-md-4"><b>Signature:</b></div>
                                            <div class="col-md-8">Edit Signature<a class="text-default edit-icon" data-toggle="collapse" href="#collapseSignature" role="button" ><i class="fa fa-edit ml-2"></i></a></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-8">
                                                 <div class="collapse mt-4" id="collapseSignature">
                                                    <div class="w-100">
                                                        <div class="summernote">
                                                           Trân trọng
                                                        </div>
                                                    </div>
                                                     <div class="w-100 text-right">
                                                         <asp:Button id="Button1" class="btn btn-primary btn-xs mt-2" runat="server" Text="Lưu"/>
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

    <script src="../js/plugins/jcrop/jquery.jcrop.min.js" type="text/javascript"></script>  
     <script type="text/javascript">
         $(function () {
             $('#FileUpload_jcrop').change(function () {
                 var oFile = $(this)[0].files[0];
                 var rFilter = /^(image\/jpeg|image\/png)$/i;
                 if (!rFilter.test(oFile.type)) {
                     alert('Please select a valid image file (jpg and png are allowed)');
                     return;
                 }

                 // check for file size
                 if (oFile.size > 10000 * 1024) {
                     Showalert("You file is too large. The file you have selected exceeds the maximum size of 10mb.");
                     return;
                 }
                 $('#Image1, #bind_avatar').hide();
                 var reader = new FileReader();
                 reader.onload = function (e) {
                     $('#Image1').show();
                     $('.jcrop-holder').replaceWith('');
                     $('#Image1').replaceWith('<img id="Image1" src="' + e.target.result + '" width="100%"/>');
                     //$('#Image1').attr("src", e.target.result);
                     $('#Image1').Jcrop({
                         onChange: SetCoordinates,
                         onSelect: SetCoordinates,
                         aspectRatio: 1,
                         setSelect: [50, 50, 200, 200],
                         boxWidth: 400,
                         boxHeight: 400
                     });
                 }
                 reader.readAsDataURL($(this)[0].files[0]);
             });
             $('#btnCrop').click(function () {
                 var x1 = $('#imgX1').val();
                 var y1 = $('#imgY1').val();
                 var width = $('#imgWidth').val();
                 var height = $('#imgHeight').val();
                 var canvas = $("#canvas")[0];
                 var context = canvas.getContext('2d');
                 var img = new Image();
                 img.onload = function () {
                     canvas.height = height;
                     canvas.width = width;
                     context.drawImage(img, x1, y1, width, height, 0, 0, width, height);
                     $('#imgCropped').val(canvas.toDataURL());
                     $('[id*=btnUpload]').show();
                 };
                 img.src = $('#Image1').attr("src");
                 $('#FileUpload_jcrop, #btnCrop,.default-avatar').hide();
                 $('.avatar-view').removeClass("d-none");
             });
         });
         function SetCoordinates(e) {
             $('#imgX1').val(e.x);
             $('#imgY1').val(e.y);
             $('#imgWidth').val(e.w);
             $('#imgHeight').val(e.h);
             $('#btnCrop').show();
         };
     </script>
    <!-- SUMMERNOTE -->
    <script src="../js/plugins/summernote/summernote-bs4.js"></script>
    <script src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {

            //$('.summernote').summernote();
            $('.summernote').summernote({
                tabsize: 2,
                height: 150
            });
            $(".editInfo").validate({});

        });
        
    </script>
</asp:Content>
