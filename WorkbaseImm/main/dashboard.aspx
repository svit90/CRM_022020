<%@ Page Title="" Language="C#" MasterPageFile="~/crm.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WorkbaseImm.main.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="../css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet" />
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

       textarea.textarea-autosize {
          height: 2.25rem;
          min-height: 2.25rem;
          resize: none;
          overflow-y:hidden;
        }

        textarea.textarea-autosize.form-control-lg {
          height: 3.75rem;
          min-height: 3.75rem;
        }

        textarea.textarea-autosize.form-control-sm {
          height: 2rem;
          min-height: 2rem;
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
                <button class="btn btn-warning  dim btn-large-dim btn-outline" type="button" onclick="openTab('https://webapplayers.com/inspinia_admin-v2.9.3/pin_board.html')"><i class="fa fa-thumb-tack"></i></button>Pin Board 
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
                            <h3 class="d-inline-block">To-do</h3>
                            <span class="small"> ( <i class="fa fa-hand-o-up"></i> Drag task between list )</span>
                            <div class="p-2 border mb-2" >
                               <div class="row">
                                    <div class="form-check form-check-inline radio radio-danger">
                                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                      <label class="form-check-label" for="inlineRadio1">High</label>
                                    </div>
                                    <div class="form-check form-check-inline radio radio-warning">
                                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                      <label class="form-check-label" for="inlineRadio2">Above normal</label>
                                    </div>
                                    <div class="form-check form-check-inline radio radio-info">
                                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                                      <label class="form-check-label" for="inlineRadio3">Normal</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="input-group mt-2">
                                            <textarea class="form-control form-control-sm textarea-autosize" id="textareaExampleField" rows="1" placeholder="Add new task."></textarea>
                                            <span class="input-group-append"> 
                                             <button type="button" class="btn btn-sm btn-primary" onclick="AddTodolist()"><i class="fa fa-plus"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
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

        function AddTodolist() {
            var person = {
                Owner: 57,
                TaskDetails: "Đay là task new",
                Rate: 1,
                Active: 1
            }

            $.ajax({
                url: 'https://api.immgroup.com/crm/func/todo/addnew',         
                type: 'POST',
                dataType: 'json',
                data: JSON.stringify(person),
                contentType: 'application/json',
                success: function (data) {
                    alert(data.msg);
                }
            });

         
        }

        // Initialize Textarea
        !function (t, e, i, n) { function s(e, i) { this.element = e, this.$element = t(e), this.init() } var h = "textareaAutoSize", o = "plugin_" + h, r = function (t) { return t.replace(/\s/g, "").length > 0 }; s.prototype = { init: function () { var i = parseInt(this.$element.css("paddingBottom")) + parseInt(this.$element.css("paddingTop")) + parseInt(this.$element.css("borderTopWidth")) + parseInt(this.$element.css("borderBottomWidth")) || 0; r(this.element.value) && this.$element.height(this.element.scrollHeight - i), this.$element.on("input keyup", function (n) { var s = t(e), h = s.scrollTop(); t(this).height(0).height(this.scrollHeight - i), s.scrollTop(h) }) } }, t.fn[h] = function (e) { return this.each(function () { t.data(this, o) || t.data(this, o, new s(this, e)) }), this } }(jQuery, window, document);

        $('.textarea-autosize').textareaAutoSize();

    </script>
</asp:Content>
