<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WorkbaseImm.main.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPageHeading" runat="server">
   <style>
       .media-body {
            border: 1px solid;
            padding: 10px;  
       }
       .chat-element {
            position: relative;
            display: inline-block;
       }
       .chat-element .media-body {
           border-color: #f5222d;
           border-radius: 3px 16px 16px 16px;
       }
       .chat-element.right .media-body {
           border-color: #1ab394;
           border-radius: 16px 3px 16px 16px;
       }
       .chat-activity-list .chat-element {
            border-bottom: 0px;
       }
       .chat-element.right {
            margin-right: 0;
            text-align: left;
            float:right;
       }
       .media-body .file-box {
            float: left;
            width: 50px;
       }
       .media-body .file {
            margin-bottom: inherit;
            margin-right: 10px;
       }
       .media-body .file .icon {
            padding: 10px 10px;
            text-align: center;
            width:auto;
       }
       .media-body .file .icon, .media-body .file .image {
            height: auto;
            overflow: inherit;
       }
       .file .icon i {
            font-size: inherit; 
            color: #1ab394;
       }
   </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentAll" runat="server">
    <div class="col-lg-12">
        <div class="row">        
            <div class="col-lg-3">
                <button class="btn btn-info  dim btn-large-dim btn-outline" type="button" onclick="openTab('https://hrm.immgroup.com/')">H</button>HRM system     
            </div>
            <div class="col-lg-3">
                <button class="btn btn-success  dim btn-large-dim btn-outline" type="button" onclick="openTab('https://crm.immgroup.com/tools/drive-storage.aspx')"><i class="fa fa-cloud"></i></button>Drive Storage   
            </div>
            <div class="col-lg-3">
                <button class="btn btn-danger  dim btn-large-dim btn-outline" type="button"><i class="fa fa-google"></i></button>Gmail
            </div>  
            <div class="col-lg-3">
                <button class="btn btn-warning  dim btn-large-dim btn-outline" type="button" onclick="openTab('http://webapplayers.com/inspinia_admin-v2.9.3/pin_board.html')"><i class="fa fa-thumb-tack"></i></button>Pin Board 
            </div>                
        </div>
    </div>
    <div class="row">
      
        <div class="col-lg-3">
            <div class="ibox">
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
                    <iframe style="border:0;width: 100%;" src="https://imm-crm.firebaseapp.com/widget/c/staffs/9e1b8147-37a9-4a68-9bcc-f0c38c402003/customers/"></iframe>
                </div> 
            </div>
        </div>
            
        <div class="col-lg-9">
            <div class="row">
                <div class="col-lg-8">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>Khách hàng đang chăm sóc</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>                                         
                            </div>
                        </div>
                        <div class="ibox-content table-responsive">
                            <table id="datatables" class="table table-hover no-margins">
                                <thead>
                                <tr>
                                    <th>Khách</th>
                                    <th>Trạng thái</th>
                                    <th>Độ nghiêm túc</th>
                                    <th>Liên hệ gần nhất của bạn</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rpt_YourCusFollowing" runat="server" ClientIDMode="Static">                                                                 
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-navy"><%# Eval("CUS_NAME_VN")%></td>
                                                <td> <%# Eval("CusStatus")%></td>
                                                <td> <%# Eval("CusDNT")%></td>
                                                <td class="lastyourfeedback"> <small> <%# Eval("LastYourFeedback")%>  </small></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                           
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="col-lg-4">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>To-do</h3>
                            <p class="small"><i class="fa fa-hand-o-up"></i> Drag task between list</p>
                            <div class="col-sm-6">
                                <div class="radio radio-danger">
                                    <input type="radio" name="radio2" id="radio3" value="option1">
                                    <label for="radio3">
                                        Ưu tiên
                                    </label>
                                </div>
                                <div class="radio radio-warning">
                                    <input type="radio" name="radio2" id="radio4" value="option2">
                                    <label for="radio4">
                                        Quan trọng
                                    </label>
                                </div>
                                <div class="radio radio-info">
                                    <input type="radio" name="radio2" id="radio5" value="option3">
                                    <label for="radio5">
                                        Quan trọng
                                    </label>
                                </div>
                                <div class="radio radio-primary">
                                    <input type="radio" name="radio2" id="radio6" value="option4">
                                    <label for="radio6">
                                        Quan trọng
                                    </label>
                                </div>
                            </div>
                            <div class="input-group">
                                            
                                <input type="text" placeholder="Add new task. " class="input form-control-sm form-control">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-white"> <i class="fa fa-plus"></i> Add task</button>
                                </span>
                            </div>

                            <ul class="sortable-list connectList agile-list" id="todo">
                                <li class="warning-element" id="task1">
                                    Simply dummy text of the printing and typesetting industry.
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Tag</a>
                                        <i class="fa fa-clock-o"></i> 12.10.2015
                                    </div>
                                </li>
                                <li class="success-element" id="task2">
                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default.
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 05.04.2015
                                    </div>
                                </li>
                                <li class="info-element" id="task3">
                                    Sometimes by accident, sometimes on purpose (injected humour and the like).
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 16.11.2015
                                    </div>
                                </li>
                                <li class="danger-element" id="task4">
                                    All the Lorem Ipsum generators
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-primary">Done</a>
                                        <i class="fa fa-clock-o"></i> 06.10.2015
                                    </div>
                                </li>
                                <li class="warning-element" id="task5">
                                    Which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Tag</a>
                                        <i class="fa fa-clock-o"></i> 09.12.2015
                                    </div>
                                </li>
                                <li class="warning-element" id="task6">
                                    Packages and web page editors now use Lorem Ipsum as
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-primary">Done</a>
                                        <i class="fa fa-clock-o"></i> 08.04.2015
                                    </div>
                                </li>
                                <li class="success-element" id="task7">
                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default.
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 05.04.2015
                                    </div>
                                </li>
                                <li class="info-element" id="task8">
                                    Sometimes by accident, sometimes on purpose (injected humour and the like).
                                    <div class="agile-detail">
                                        <a href="#" class="float-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 16.11.2015
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
    </div>  
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
    
    <!--  DataTables.net Plugin    -->
    <script src="../js/plugins/dataTables/datatables.min.js"></script>
    <script src="../js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {

        $('#datatables').DataTable({
            "pagingType": "simple_numbers",
            "lengthMenu": [
                6
            ],
            responsive: true,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Tìm...",
            }

        });
        formatTimeAgo("lastyourfeedback");   

        $("#todo").sortable({
            connectWith: ".connectList",
            update: function (event, ui) {

                var todo = $("#todo").sortable("toArray");
                $('.output').html("ToDo: " + window.JSON.stringify(todo));
            }
        }).disableSelection();
    });

    function openTab(url) {
        var win = window.open(url, '_blank');
        if (win) {
            //Browser has allowed it to be opened
            win.focus();
        } else {
            //Browser has blocked it
            alert('Please allow popups for this website');
        }
    }
</script>

</asp:Content>
