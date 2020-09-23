<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="_customerInteractiveHistory.aspx.cs" Inherits="WorkbaseImm.customer._customerInteractiveHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Sweet Alert -->
    <link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="../css/_customerInteractiveHistory.css" rel="stylesheet" />
    <link href="../css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
    <link href="../css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet" />
    <link href="../css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="../css/plugins/dropzone/dropzone.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
     <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Lịch sử giao dịch hồ sơ khách hàng Trần Văn Tỉnh</h2>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#!">Thông tin hồ sơ</a>
                </li>
                <li class="breadcrumb-item active">
                    <strong>Nhật ký hồ sơ</strong>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">


    <div class="row">
       <div class="col-lg-12">
            <div class="ibox ">
                <%--<div class="ibox-title">
                    <h5>Nhật ký hồ sơ</h5>
                    <div class="ibox-tools">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#" class="dropdown-item" title="Tình trạng đang bị khóa do không được chăm sóc. Click vào để mở khóa">Đã khóa</a></li>
                            <li><a href="#" class="dropdown-item" title="Tình trạng đang mở">Đang mở</a></li>
                            <li><a href="#" class="dropdown-item" title="">Trả Saleleads</a></li>
                            <li><a href="#" class="dropdown-item" title="Đề xuất xóa Saleleads">Đề xuất xóa Saleleads</a></li>
                            <li><a href="#" class="dropdown-item" title="">Xóa hồ sơ</a></li>
                            <li><a href="#" class="dropdown-item" title="">Gửi thông tin đăng nhập cho khách</a></li>
                            <li><a href="#" class="dropdown-item" title="">Chat với khách hàng</a></li>
                        </ul>
                    </div>
                </div>--%>
                <div class="ibox-content bg-white px-0">



                    <div class="ibox-content-chat">
                       
                        <div class="collapse chatContent" id="chatwpartContent">
                            <div class="alert alert-warning"><i class="fa fa-info-circle mr-1"></i>Bạn đang sử dụng chức năng trao đổi với đối tác, những thông tin bên dưới sẽ được gửi tới đối tác và các bạn nhân viên có liên quan</div>
                            <div class="summernote h-300"></div>
                        </div>
                        <div class="collapse chatContent" id="chatwcusContent">
                            <div class="alert alert-danger"><i class="fa fa-info-circle mr-1"></i>Bạn đang sử dụng chức năng trao đổi với Khách hàng, những thông tin bên dưới sẽ được gửi tới Khách hàng và các bạn nhân viên có liên quan</div>
                            <div class="summernote h-300"></div>
                        </div>
                        <div class="collapse chatContent" id="chatwstaffContent">
                            <div class="alert alert-info"><i class="fa fa-info-circle mr-1"></i>Bạn đang sử dụng chức năng ghi chú nội bộ, khách hàng không thấy được các thông tin này.</div>
                            <div class="summernote h-300"></div>
                        </div>
                        <div class="chat-discussion customer-interactive-history ">
                            <div class="chat-message left">
                                <img class="message-avatar" src="../img/avatar/user-default.png" alt="user-default">
                                <div class="message chatwcus">
                                    <a class="message-author text-default" href="#">Michael Smith </a>
                                    <span class="message-date">Mon Jan 26 2015 - 18:39:23 </span>
                                    <span class="message-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                    </span>
                                </div>
                            </div>
                            <div class="chat-message right">
                                <img class="message-avatar" src="../img/avatar/user-default.png" alt="user-default">
                                <div class="message chatwcus">
                                    <a class="message-author text-default" href="#">Karl Jordan </a>
                                    <span class="message-date">Fri Jan 25 2015 - 11:12:36 </span>
                                    <span class="message-content">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover.
                                    </span>
                                </div>
                            </div>
                            <div class="chat-message right">
                                <img class="message-avatar" src="../img/avatar/user-default.png" alt="user-default">
                                <div class="message chatwstaff">
                                    <a class="message-author text-default" href="#">Michael Smith </a>
                                    <span class="message-date">Fri Jan 25 2015 - 11:12:36 </span>
                                    <span class="message-content">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.
                                    </span>
                                </div>
                            </div>
                            <div class="chat-message left">
                                <img class="message-avatar" src="../img/avatar/user-default.png" alt="user-default">
                                <div class="message chatwpart">
                                    <a class="message-author text-default" href="#">Alice Jordan </a>
                                    <span class="message-date">Fri Jan 25 2015 - 11:12:36 </span>
                                    <span class="message-content">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                            It uses a dictionary of over 200 Latin words.
                                    </span>
                                </div>
                            </div>
                            <div class="chat-message right">
                                <img class="message-avatar" src="../img/avatar/user-default.png" alt="user-default">
                                <div class="message chatwcus">
                                    <a class="message-author text-default" href="#">Mark Smith </a>
                                    <span class="message-date">Fri Jan 25 2015 - 11:12:36 </span>
                                    <span class="message-content">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                                            It uses a dictionary of over 200 Latin words.
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="summernote">
                        <h3>Lorem Ipsum is simply</h3>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="mt-3">
                                <div class="form-check form-check-inline radio radio-warning">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">Đối tác</label>
                                </div>
                                <div class="form-check form-check-inline radio radio-danger">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                    <label class="form-check-label" for="inlineRadio2">Khách hàng</label>
                                </div>
                                <div class="form-check form-check-inline radio radio-primary">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                                    <label class="form-check-label" for="inlineRadio3">Nội bộ</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <div class="mt-3 mx-3">
                                <%--<input id="logo" type="file" class="custom-file-input">
                                <label for="logo" class="custom-file-label">Choose file...</label>--%>


                                 <form action="#" class="dropzone" id="dropzoneForm">
                                    <div class="fallback">
                                        <input name="file" type="file" multiple />
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <button class="btn btn-warning mt-3 mx-3" id="setDrag" type="button">Gửi phản hồi</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
   <!-- Sweet alert -->
    <script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    <!-- SUMMERNOTE -->
    <script src="../js/plugins/summernote/summernote-bs4.js"></script>
    <script src="../js/plugins/dropzone/dropzone.js"></script>
    <script>
        Dropzone.autoDiscover = false;
        $(".dropzone").dropzone({
            addRemoveLinks: true,
            removedfile: function (file) {
                var name = file.name;

                $.ajax({
                    type: 'POST',
                    url: 'upload.php',
                    data: { name: name, request: 2 },
                    sucess: function (data) {
                        console.log('success: ' + data);
                    }
                });
                var _ref;
                return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
            }
        });

        $(document).ready(function () {
            $('.summernote').summernote({
                height: 100
            });
        });
        $('.not-app').click(function () {
            swal({
                type: "warning",
                title:"Thông báo",
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
</asp:Content>
