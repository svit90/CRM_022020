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
            <div class=" col-xl-8 col-lg-12 col-md-12 offset-xl-2">
               
                 <div class="ibox ">
                    <div class="ibox-title">
                        <h5>Profile Detail</h5>
                    </div>

                    <div class="ibox-content">

                        <div class="activity-stream">
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-camera-retro"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Avatar:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="">
                                            <div class="avatar cursor" data-toggle="modal" data-target="#editCodeMain">
                                                <img class="rounded-circle" src="../img/avatar/r_cus_default_avatar.png">
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-address-book"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Full Name:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">PHẠM HOÀNG ĐĂNG THANH</div> 
                                        <div class="input-group d-none ">
                                            <input type="text" placeholder="Họ và tên" name="hovaten" class="input-type required form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-address-book"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Other Name:</strong>
                                    </div>
                                   <div class="clt-name">
                                        <div class="clt_edit">Paul</div> 
                                        <div class="input-group d-none ">
                                            <input type="text" placeholder="Tên tiếng anh" name="tentienganh" class="input-type required form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Email:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">paul@imm.group</div> 
                                        <div class="input-group d-none ">
                                            <input type="email" placeholder="Email" name="email" class="input-type required email form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Phone number:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">0939 878 207 </div> 
                                        <div class="input-group d-none ">
                                            <input type="text" placeholder="Số Điện thoại" name="phone" class="input-type required number form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-user-circle-o"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Gender:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">Nam</div> 
                                        <div class="input-group d-none ">
                                            <select data-placeholder="Chọn Chức vụ" class="form-control">
                                                <option value="HCM">Nam</option>
                                                <option value="Hà Nội">Nữ</option>
                                            </select>
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-birthday-cake "></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Birthday:</strong>
                                    </div>
                                    <div class="clt-name dataDateTime">
                                        <div class="clt_edit">01/01/1900 </div> 
                                        <div class="input-group date d-none ">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" placeholder="Ngày" class="input-type required form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                 <button type="submit" class="btn btn btn-primary "> <i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-tag"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Position:</strong>
                                    </div>
                                     <div class="clt-name">
                                        <div class="clt_edit">IT Executive </div> 
                                        <div class="input-group d-none ">
                                            <select data-placeholder="Chọn Chức vụ" class="form-control">
                                                <option value="HCM">HCM</option>
                                                <option value="Hà Nội">Hà Nội</option>
                                            </select>
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-tag"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Office:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">Ho Chi Minh</div> 
                                        <div class="input-group d-none ">
                                            <select data-placeholder="Chọn Văn phòng" class="form-control">
                                                <option value="HCM">HCM</option>
                                                <option value="Hà Nội">Hà Nội</option>
                                            </select>
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-circle"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Group:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">IMM Group</div> 
                                        <div class="input-group d-none ">
                                            <select data-placeholder="Chọn bộ phận" class="form-control">
                                                <option value="HCM">HCM</option>
                                                <option value="Hà Nội">Hà Nội</option>
                                            </select>
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-circle"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Password App CRM:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">***</div> 
                                        <div class="input-group d-none ">
                                            <input type="password" placeholder="" name="passwordcrm" class="input-type required form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-circle"></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Password Email:</strong>
                                    </div>
                                    <div class="clt-name">
                                        <div class="clt_edit">***</div> 
                                        <div class="input-group d-none ">
                                            <input type="password" placeholder="" name="passwordemail" class="input-type required form-control" autocomplete="off">
                                            <span class="input-group-append">
                                                <button type="submit" class="btn btn btn-primary "><i class="fa fa-save"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="stream">
                                <div class="stream-badge">
                                    <i class="fa fa-circle "></i>
                                </div>
                                <div class="stream-panel">
                                    <div class="stream-info">
                                       <strong>Signature:</strong>
                                    </div>
                                    <div class="border">
                                        <div class="summernote">
                                            Trân trọng
                                        </div>
                                        <div class="text-right p-2">
                                            <button type="submit" class="btn btn-xs btn-primary ">Lưu</button>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

             </div>
            

             

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

            $(".clt_edit").click(function (e) {
                $(this).addClass("d-none");
                $(this).parent().find(".input-group").removeClass("d-none");
                $(this).parent().find(".input-group").addClass("escape");
                $(this).addClass("escape");
            });

            $(document).keyup(function (e) {
                if (e.key === "Escape") { // escape key maps to keycode `27`
                    $(".escape").toggleClass("d-none");
                    $(".escape").removeClass("escape");
                }
            });

            //$(document).mouseup(function (e) {
            //    var container = $(".escape");
            //    if (!container.is(e.target) && container.has(e.target).length === 0) {
            //        $(".escape").toggleClass("d-none");
            //        $(".escape").removeClass("escape");
            //    }
            //});

        });
        
    </script>
</asp:Content>
