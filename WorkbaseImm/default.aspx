<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WorkbaseImm._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>CRM SYSTEM | Login </title>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>

    
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet"/>


    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

    
    <!-- Mainly scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- Toastr script -->
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <!-- ImmGroup script -->
    <script src="js/immgroup.js"></script>
    <style>
        .fake-label{
            border: 0;
            background: #f3f3f4;
        }
    </style>
</head>

<body class="gray-bg">
    
    <form id="login" runat="server">
        <div class="step1-login loginColumns animated fadeInDown">
            <div class="row">

                <div class="col-md-6">
                    <h2 class="font-bold">Xin chào,</h2>

                    <p>
                        Đây là phần thông tin mật và là tài sản thuộc quyền sở hữu trí tuệ của IMM Group.
                    </p>

                    <p>
                        Sự đăng nhập vào hệ thống sẽ được lưu lại thời gian, địa điểm và những thông tin khác trên máy tính người dùng. 
                    </p>

                    <p>
                        Việc sao chép, tiết lộ bất kỳ thông tin nào của các tài liệu này mà không được sự chấp thuận của IMM Group đều bị xem là trái pháp luật và sẽ bị khởi tố để truy cứu trách nhiệm theo luật Việt Nam.
                    </p>

                </div>
                <div class="col-md-6 align-self-center text-center">
                    <div class="ibox-content">
                        <a href="https://immgroup.com/" title="Về website"><img class="mb-4" src="https://crm.imm.group/images/logo-no-padding.png" alt="Logo" style="height: 45px;padding: 5px;" /></a>
                        
                        <div class="form-group">                            
                            <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control " placeholder="Nhập email của bạn.."></asp:TextBox>
                        </div> 
                        <div class="form-group">                            
                            <asp:TextBox ID="password" TextMode="Password" runat="server"  class="form-control required" placeholder="Nhập password của bạn.." ></asp:TextBox>
                        </div> 
                        <asp:Button id="btn_signin" disabled class="btn btn-primary block full-width m-b" runat="server" Text="Đăng nhập với mật khẩu" OnClick="btn_signin_Click"/>
                        <div class="tooltip-demo">
                          
                            <asp:LinkButton id="btn_request_signin" class="btn btn-outline btn-default block full-width m-b disabled" runat="server" Text="Gửi yêu cầu đăng nhập" OnClientClick="checkEmail()"  OnClick="btn_request_signin_Click" data-toggle="tooltip" data-placement="right" title="" data-original-title="Gửi code đăng nhập về email"/>
                        </div>
                    </div>
                     
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-12">                    
                   <i class="fa fa-sitemap"></i> 
                        <asp:Label ID="label_IPAddress" runat="server" ClientIDMode="Static"></asp:Label>
                        <asp:TextBox ID="txt_IPAddress" runat="server" ClientIDMode="Static" CssClass="d-none"></asp:TextBox>
                    <br />
                   <i class="fa fa-map-marker"></i> <asp:Label ID="lb_Location" runat="server" ClientIDMode="Static"></asp:Label>
                    <div id="mapholder"></div>

                </div>           
            </div>
        </div>        
    


    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="../js/inspinia.js"></script>
        <script src="../js/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script type="text/javascript">
        $().ready(function () { 


            getUserLocation();
            checkError();
         
            $("#login").validate({
                rules: {
                    email: {
                        required: true
                    } 
                },
                onkeyup: function (element) {
                    controlbtn();
                     
                }
            });
           
        });


        function checkEmail() {
            $("#login").validate({
                rules: {
                    email: {
                        required: true
                    }
                }
               
            });
        }

        function controlbtn() {
            var _email = $('#email').val();
            var _password = $('#password').val();

            if (_email !== "") {
                $('#btn_request_signin').removeClass('disabled');

                if (_password !== "") {
                    $('#btn_signin').prop('disabled', false);
                }
                else {
                    $('#btn_signin').prop('disabled', true);
                }
            } else {
                $('#btn_request_signin').addClass('disabled');
                $('#btn_signin').prop('disabled', true);
            }
        }
    
        function checkError() {
            var _errorCode = getParameterByName('mes');
            var _email = getParameterByName('e');
            if (_email !== "" && _email !== undefined) {
                $("#email").val(_email);
            }
            var flickerAPI = "https://api.immgroup.com/crm/message/VN/" + _errorCode;
            $.getJSON(flickerAPI, {
                format: "json"
            }).done(function (data) {
                if (data.mess !== "OK" && data.mess !== undefined && data.mess !== "" )
                showerror(data.mess, 'Oop!Lỗi rồi.', 'error', 'toast-top-center');
            });
        }

    </script>
    
    </form> 

</body>

</html>
