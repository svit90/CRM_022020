<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WorkbaseImm.main.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
    <div class="row">
        <div class="col-lg-4">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Chat với khách hàng</h5> <span class="label label-primary">+8</span>
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
                    <iframe style="height:600px; border:0;" src="https://imm-crm.firebaseapp.com/widget/c/staffs/9e1b8147-37a9-4a68-9bcc-f0c38c402003/customers/"></iframe>
                </div> 
            </div>

           
        </div>
            
        <div class="col-lg-8">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Your customer feed</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link" href="">
                            <i class="fa fa-chevron-up"></i>
                        </a>                       
                        <a class="close-link" href="">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content ibox-heading">
                    <h3>You have meeting today!</h3>
                    <small><i class="fa fa-map-marker"></i> Meeting is on 6:00am. Check your schedule to see detail.</small>
                </div>
                <div class="ibox-content inspinia-timeline">

                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-briefcase"></i>
                                6:00 am
                                <br>
                                <small class="text-navy">2 hour ago</small>
                            </div>
                            <div class="col content no-top-border">
                                <p class="m-b-xs"><strong>Meeting</strong></p>

                                <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products. Below please find the current status of the
                                    sale.</p>

                                <p><span data-diameter="40" class="updating-chart" style="display: none;">2,9,4,2,8,2,10,8,1,7,5,4,8,6,6,3,2,1,9,8,10,2,7,6,9,9,1,3,5,8,8,5,6,2,9,5,0</span><svg class="peity" height="16" width="64"><polygon fill="#1ab394" points="0 15 0 12.5 1.7777777777777777 2 3.5555555555555554 9.5 5.333333333333333 12.5 7.111111111111111 3.5 8.88888888888889 12.5 10.666666666666666 0.5 12.444444444444443 3.5 14.222222222222221 14 16 5 17.77777777777778 8 19.555555555555554 9.5 21.333333333333332 3.5 23.11111111111111 6.5 24.888888888888886 6.5 26.666666666666664 11 28.444444444444443 12.5 30.22222222222222 14 32 2 33.77777777777778 3.5 35.55555555555556 0.5 37.33333333333333 12.5 39.11111111111111 5 40.888888888888886 6.5 42.666666666666664 2 44.44444444444444 2 46.22222222222222 14 48 11 49.77777777777777 8 51.55555555555555 3.5 53.33333333333333 3.5 55.11111111111111 8 56.888888888888886 6.5 58.666666666666664 12.5 60.44444444444444 2 62.22222222222222 8 64 15.5 64 15"></polygon><polyline fill="transparent" points="0 12.5 1.7777777777777777 2 3.5555555555555554 9.5 5.333333333333333 12.5 7.111111111111111 3.5 8.88888888888889 12.5 10.666666666666666 0.5 12.444444444444443 3.5 14.222222222222221 14 16 5 17.77777777777778 8 19.555555555555554 9.5 21.333333333333332 3.5 23.11111111111111 6.5 24.888888888888886 6.5 26.666666666666664 11 28.444444444444443 12.5 30.22222222222222 14 32 2 33.77777777777778 3.5 35.55555555555556 0.5 37.33333333333333 12.5 39.11111111111111 5 40.888888888888886 6.5 42.666666666666664 2 44.44444444444444 2 46.22222222222222 14 48 11 49.77777777777777 8 51.55555555555555 3.5 53.33333333333333 3.5 55.11111111111111 8 56.888888888888886 6.5 58.666666666666664 12.5 60.44444444444444 2 62.22222222222222 8 64 15.5" stroke="#169c81" stroke-width="1" stroke-linecap="square"></polyline></svg></p>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-file"></i>
                                7:00 am
                                <br>
                                <small class="text-navy">3 hour ago</small>
                            </div>
                            <div class="col content">
                                <p class="m-b-xs"><strong>Send documents to Mike</strong></p>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</p>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-coffee"></i>
                                8:00 am
                                <br>
                            </div>
                            <div class="col content">
                                <p class="m-b-xs"><strong>Coffee Break</strong></p>
                                <p>
                                    Go to shop and find some products.
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-phone"></i>
                                11:00 am
                                <br>
                                <small class="text-navy">21 hour ago</small>
                            </div>
                            <div class="col content">
                                <p class="m-b-xs"><strong>Phone with Jeronimo</strong></p>
                                <p>
                                    Lorem Ipsum has been the industry's standard dummy text ever since.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-user-md"></i>
                                09:00 pm
                                <br>
                                <small>21 hour ago</small>
                            </div>
                            <div class="col content">
                                <p class="m-b-xs"><strong>Go to the doctor dr Smith</strong></p>
                                <p>
                                    Find some issue and go to doctor.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-item">
                        <div class="row">
                            <div class="col-4 date">
                                <i class="fa fa-comments"></i>
                                12:50 pm
                                <br>
                                <small class="text-navy">48 hour ago</small>
                            </div>
                            <div class="col content">
                                <p class="m-b-xs"><strong>Chat with Monica and Sandra</strong></p>
                                <p>
                                    Web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>


      
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
