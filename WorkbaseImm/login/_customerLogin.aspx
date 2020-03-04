<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_customerLogin.aspx.cs" Inherits="WorkbaseImm.login._customerLogin" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CRM SYSTEM | Login </title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    
    <!-- Toastr style -->
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

        <!-- Mainly scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- Toastr script -->
    <script src="../js/plugins/toastr/toastr.min.js"></script>

</head>

<body class="gray-bg">
    
    <form id="login" runat="server">
        <div class="middle-box text-center lockscreen animated fadeInDown">
            <div>
                <div class="m-b-md">
                <img id="avatar_img" alt="image" class="rounded-circle circle-border" src="https://s3.amazonaws.com/uifaces/faces/twitter/ok/128.jpg">
                </div>
                <h3 id="user_name"></h3>
                <p id="label_tip">Imm Group xin chào quý khách !</p>
                    <div class="form-group">
                        <asp:TextBox ID="immcode" TextMode="Password" runat="server" class="form-control" placeholder="Mật khẩu của bạn" autocorrect="off" autocomplete="off" minlength="6" required=""></asp:TextBox>
                    </div>
                    <button id="btn_step2" class="btn btn-primary block full-width m-b">Đăng nhập</button>
            </div>
        </div>
    
        <script type="text/javascript">
        $().ready(function() {            

            $("#btn_step1").click(function () {
                var IPAddress = "";
                var email = $("#email").val();
                var str_error = "";
                var flickerAPI = "https://jsonip.com/";
                $.getJSON( flickerAPI, {
                        tags: "ip",
                        tagmode: "any",
                        format: "json"
                }).done(function( data ) {
                    IPAddress = data.ip;              
                    if (IPAddress === "") {
                        str_error = "Không xác định được vị trí của bạn, không thể tiếp tục.";
                    } else {
                        if (email !== "") {
                            var Data = JSON.stringify({ email: email, IPAddress: IPAddress });
                            $.ajax({
                                url: "AjaxCore.aspx/SendImmCode",
                                type: "POST",
                                data: Data,
                                contentType: "application/json; charset=utf-8",
                                dataType: "json", // dataType is json forma
                                success: function (response) {
                                    var res = response.d.split("|");
                                    var role_name = res[0];
                                    var mes = res[1];
                                    var avatar = res[2];
                                    var name = res[3];
                                    if (role_name === "false") {
                                        showerror('Email đăng nhập không tồn tại trên hệ thống', 'Oop!Lỗi rồi.', 'error', 'toast-top-center');
                                    } else if (role_name === "Staffs" || role_name === "Partner") {
                                        $("#avatar_img").attr("src", avatar);
                                        $("#user_name").text(name);
                                        $(".step1-login").addClass("d-none");
                                        $(".step2-login").removeClass("d-none");
                                    } else if (role_name === "Customers") {
                                        $("#label_tip").text("Imm Group xin chào quý khách !");
                                        $("#avatar_img").attr("src", avatar);
                                        $("#user_name").text(name);
                                        $(".step1-login").addClass("d-none");
                                        $(".step2-login").removeClass("d-none");
                                    } else {
                                                alert(mes);
                                                $(".step1-login").removeClass("d-none");
                                                $(".step2-login").addClass("d-none");
                                           }
                                },
                                error: function (err) {
                                    alert(err.responseText);
                                }
                            });
                        } else
                        {
                            showerror('Email đăng nhập không được bỏ trống.', 'Oop!Lỗi rồi.', 'error', 'toast-top-center');

                        }
                    }
                });            
            });

            $("#btn_step2").click(function () {
                var email = $("#email").val();
                var pass = $("#immcode").val();
                var Data = JSON.stringify({ email: email, pass: pass });
                $.ajax({
                    url: "AjaxCore.aspx/CheckLoginCode",
                    type: "POST",
                    data: Data,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", // dataType is json forma
                    success: function (response) {
                        var res = response.d;                      
                        alert(res);
                    },
                    error: function (err) {
                        alert(err.responseText);
                    }
                });    
            });

        });

        var $toastlast;
        function showerror(msg,title, type, pos) {
                toastr.options = {
                    "closeButton": true,
                    "debug": false,
                    "progressBar": true,
                    "preventDuplicates": false,
                    "positionClass": pos,
                    "onclick": null,
                    "showDuration": "400",
                    "hideDuration": "1000",
                    "timeOut": "7000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                var $toast = toastr[type](msg, title);
                $toastlast = $toast;
        }

        function wrongpass() {
            showerror('Mật khẩu đăng nhập không chính xác', 'Oop!Lỗi rồi.', 'error', 'toast-top-center');
            $(".step1-login").addClass("d-none");
            $(".step2-login").removeClass("d-none");
        }
        </script>
    </form>
</body>

</html>

