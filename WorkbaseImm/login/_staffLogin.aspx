<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_staffLogin.aspx.cs" Inherits="WorkbaseImm.login._staffLogin" %>

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
                <img id="avatar_img" alt="image" runat="server" class="w-100 rounded-circle circle-border" src="https://s3.amazonaws.com/uifaces/faces/twitter/ok/128.jpg">
                </div>
                <h3 id="lb_user_name" runat="server"></h3>   
                <div class="form-group">
                    <asp:Label ID="lb_userEmail" CssClass="d-none" runat="server" Text=""></asp:Label> 
                    <asp:TextBox ID="immcode" TextMode="Password" runat="server" class="form-control" placeholder="Mật khẩu của bạn" autocorrect="off" autocomplete="off" minlength="6" required="" ToolTip="Vui lòng kiểm tra email để lấy mật khẩu"></asp:TextBox>                
                </div>                
                <div class="form-group">                    
                    <asp:Button ID="BtnLogin" runat="server" Text="Tiếp theo" class="btn btn-primary block m-b m-r" OnClick="BtnLogin_Click" />
                </div>
                
            </div>
        </div>
    
        <script type="text/javascript">
        $().ready(function() {            
            alertTooltip();
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

        function alertTooltip() {
            showerror('Một mật khẩu đăng nhập đã được gửi tới email của bạn. Mật khẩu đăng nhập có hiệu lực trong 24 giờ.', 'Xin chào,', 'info', 'toast-top-center');
            $(".step1-login").addClass("d-none");
            $(".step2-login").removeClass("d-none");
        }
        </script>
    </form>
</body>

</html>
