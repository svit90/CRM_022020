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
        .form-group {
            max-width: 240px;
            margin: 25px auto 0;
        }
        .pass-code {
                margin: 0 4px 20px;
                text-align: center;
                line-height: 60px;
                font-size: 30px;
                box-shadow: 0 0px 2px -2px #ccc inset;
                outline: none;
                width: 20%;
                transition: all .2s ease-in-out;
                border-radius: 3px;
                display: inline-block;
                border-top: none!important;
                border-left: none!important;
                border-right: none!important;
                border-bottom: solid 1px #ccc;
        }
        .pass-code:focus {
            border-color: #1ab394;
            box-shadow: 0 4px 2px -2px #1ab394;
            border: none;
        }
        
        .pass-code::selection {
            background: transparent;
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
                        <a href="https://immgroup.com/" title="Về website"><img class="mt-2" src="https://crm.imm.group/images/logo-no-padding.png" alt="Logo" style="height: 45px;padding: 5px;" /></a>
                        
                        <div class="form-group">                            
                            <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control " placeholder="Nhập email của bạn.."></asp:TextBox>
                        </div> 
                        <div class="form-group mt-2">                            
                             <asp:TextBox ID="password1" runat="server" MaxLength="1" class="text-uppercase by-code pass-code form-control d-none" placeholder="" ></asp:TextBox>
                             <asp:TextBox ID="password2" runat="server" MaxLength="1" class="text-uppercase by-code pass-code form-control d-none" placeholder="" ></asp:TextBox>
                             <asp:TextBox ID="password3" runat="server" MaxLength="1" class="text-uppercase by-code pass-code form-control d-none" placeholder="" ></asp:TextBox>
                             <asp:TextBox ID="password4" runat="server" MaxLength="1" class="text-uppercase by-code pass-code form-control d-none" placeholder="" ></asp:TextBox>
                             <asp:Button id="btn_signin" disabled class="btn btn-primary full-width m-b by-code d-none" runat="server" Text="Đăng nhập" OnClick="btn_signin_Click"/>
                            <asp:LinkButton id="btn_request_signin"  class="btn btn-outline btn-primary block full-width m-b disabled" runat="server" Text="Gửi yêu cầu đăng nhập" OnClick="btn_request_signin_Click" data-toggle="tooltip" data-placement="right" title="" data-original-title="Gửi code đăng nhập về email"/>
                            <a id="i_have_code" class="cursor have-code" href="#" onclick="control_items();"><small>Đã có code đăng nhập</small></a>
                        </div> 
                        
                        <div class="form-group tooltip-demo">                          
                            
                            
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

                
            $(".pass-code").keyup(function (event) {
                var pas = ($("#password1").val() + $("#password2").val() + $("#password3").val() + $("#password4").val()).length;
                var key = event.which,
                    t = $(event.target);
                if (key === 8 || key === 46) {
                    t.val("");                                       
                    t.select();
                } else if (key === 39 || key === 40) {
                    t.next('input').select();
                } else if (key === 37 || key === 38) {
                    t.prev('input').select();
                } else {
                    var text = t.val();
                    if (text !== "") {
                        t.next('input').select();
                    }
                }
                //if (pas === 4) {
                //    $('#btn_signin').prop('disabled', false);
                //} else {
                //    $('#btn_signin').prop('disabled', true);
                //}
            });   
        });

        function control_items() {
            $('.by-code, .have-code').toggleClass('d-none');
            $("#password1").focus();
        }

        function controlbtn() {
            var _email = $('#email').val();
            var pas = ($("#password1").val() + $("#password2").val() + $("#password3").val() + $("#password4").val()).length;

            if (_email !== "") {
                $('#btn_request_signin').removeClass('disabled');

                if (pas === 4) {
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
            if (_email !== "" && _email !== undefined && _email !== null) {
                $("#email").val(_email);
                controlbtn();
                control_items();
            }
            var flickerAPI = "https://api.immgroup.com/crm/message/VN/" + _errorCode;
            $.getJSON(flickerAPI, {
                format: "json"
            }).done(function (data) {
                if (data[0].mess !== undefined && data[0].mess !== "") {             
                    showerror(data[0].mess, data[0].header, data[0].style, data[0].pos); 
                }
                
            });
        }

    </script>
    
    </form> 

       
       

     
</body>

</html>
