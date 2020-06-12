<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WorkbaseImm._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CRM SYSTEM | Login </title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

        <!-- Mainly scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- Toastr script -->
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <!-- ImmGroup script -->
    <script src="js/immgroup.js"></script>

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
                        <img src="https://crm.imm.group/images/logo-no-padding.png" alt="Logo" style="height: 45px;padding: 5px;">
                        
                        <div class="form-group">                            
                            <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control required email" placeholder="Nhập email của bạn.." ></asp:TextBox>
                        </div>                         
                        <asp:Button id="btn_signin" class="btn btn-primary block full-width m-b" runat="server" Text="Tiếp tục" onclick="btn_signin_Click"/>
                        
                    </div>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-12">                    
                   <i class="fa fa-sitemap"></i> <asp:TextBox ID="TextBox1" runat="server" class="form-control required email" placeholder="Nhập email của bạn.." ></asp:TextBox>
                         <asp:Label ID="lb_IPAddress" runat="server" ClientIDMode="Static"></asp:Label>
                    <br />
                   <i class="fa fa-map-marker"></i> <asp:Label ID="lb_Location" runat="server" ClientIDMode="Static"></asp:Label>
                    <div id="mapholder"></div>

                </div>           
            </div>
        </div>        
        <script type="text/javascript">
        $().ready(function() {          
            getUserLocation();
            checkError();
        });
    
       

        function checkError() {
            var _errorCode = getParameterByName('error');
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
