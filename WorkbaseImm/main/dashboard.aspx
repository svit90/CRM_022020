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
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="clients-list">
                            <span class="float-right small text-muted">Tổng cộng 14 khách</span>
                            <ul class="nav nav-tabs">
                                <li><a class="nav-link active" data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Khách đang chăm sóc</a></li>
                            </ul>
                                </div>
                            <div class="fh-breadcrumb">

                                <div class="fh-column">
                                    <div class="full-height-scroll">
                                        <ul class="list-group elements-list">
                                            <asp:Repeater ID="rptFeedback" runat="server" ClientIDMode="Static">                                                                 
                                                <ItemTemplate>   
                                                    <li class="list-group-item" onclick="binding_conversation();">
                                                        <a class="nav-link" data-toggle="tab" href="#tab-1">

                                                            <small><b><%# Eval("CUS_NAME_VN")%></b></small>
                                                            
                                                            <div class="content-feedback small m-t-xs">
                                                                <%# Eval("FEEDBACK_DESCRIPT")%>    
                                                            </div>

                                                            <small class="time-feedback float-right text-muted"> <%# Eval("FEEDBACK_DATE")%></small>
                                                        </a>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>

                                    </div>
                                </div>

                                <div class="full-height">
                                    <div class="full-height-scroll white-bg border-left">

                                        <div class="element-detail-box">

                                            <div class="tab-content">
                                                <div id="tab-1" class="tab-pane">
                                                    <div>
                                                        <div class="chat-activity-list">

                                                            <div class="chat-element">
                                                                <a href="#" class="float-left">
                                                                    <img alt="image" class="rounded-circle" src="../img/a2.jpg">
                                                                </a>
                                                                <div class="media-body">
                                                                    <small class="float-right text-navy">1m ago</small>
                                                                    <strong>Mike Smith</strong>
                                                                    <p class="m-b-xs">
                                                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                                                                    </p>
                                                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                                                </div>
                                                            </div>

                                                            <div class="chat-element right">
                                                                <a href="#" class="float-right">
                                                                    <img alt="image" class="rounded-circle" src="../img/a4.jpg">
                                                                </a>
                                                                <div class="media-body text-right ">
                                                                    <small class="float-left">5m ago</small>
                                                                    <strong>John Smith</strong>
                                                                    <p class="m-b-xs">
                                                                        Lorem Ipsum is simply dummy text of the printing.
                                                                    </p>
                                                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                                                </div>
                                                            </div>

                                                            <div class="chat-element ">
                                                                <a href="#" class="float-left">
                                                                    <img alt="image" class="rounded-circle" src="../img/a2.jpg">
                                                                </a>
                                                                <div class="media-body">
                                                                    <small class="float-right">2h ago</small>
                                                                    <strong>Mike Smith</strong>
                                                                    <p class="m-b-xs">
                                                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                                                                    </p>
                                                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>

                                                                    <div class="mail-attachment">
                                                                        <p>
                                                                            <span><i class="fa fa-paperclip"></i> 2 attachments </span>
                                                                        </p>
                                                                        <div class="attachment">
                                                                            <div class="file-box">
                                                                                <div class="file">
                                                                                    <a href="#" title="FileName-tẻnatdaianca.pdf">
                                                                                        <span class="corner"></span>
                                                                                        <div class="icon">
                                                                                            <i class="fa fa-file"></i>
                                                                                        </div>                                                                                   
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="file-box">
                                                                                <div class="file">
                                                                                    <a href="#" title="FileName-tẻnatdaianca.jpge">
                                                                                        <span class="corner"></span>
                                                                                        <div class="image">
                                                                                            <img alt="image" class="img-fluid" src="../img/a1.jpg">
                                                                                        </div>                                                                                 
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="file-box">
                                                                                <div class="file">
                                                                                    <a href="#" title="FileName-tẻnatdaianca.png">
                                                                                        <span class="corner"></span>
                                                                                        <div class="image">
                                                                                            <img alt="image" class="img-fluid" src="../img/a2.jpg">
                                                                                        </div>                                                                                    
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                        </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="chat-form">
                                                        <form role="form">
                                                            <div class="form-group">
                                                                <textarea class="form-control" placeholder="Message"></textarea>
                                                            </div>
                                                            <div class="text-right">
                                                                <button type="submit" class="btn btn-sm btn-primary m-t-n-xs"><strong>Trả lời nhanh</strong></button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>

                                                <div id="tab-2" class="tab-pane active">
                                                    <div class="float-right">
                                                        <div class="tooltip-demo">
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="left" title="Plug this message"><i class="fa fa-plug"></i> Plug it</button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="Mark as read"><i class="fa fa-eye"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mark as important"><i class="fa fa-exclamation"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Move to trash"><i class="fa fa-trash-o"></i> </button>

                                                        </div>
                                                    </div>
                                                    <div class="small text-muted">
                                                        <i class="fa fa-clock-o"></i> Monday, 21 May 2014, 10:32 am
                                                    </div>

                                                    <h1>
                                                        The European languages - same family.
                                                    </h1>

                                                    <p>
                                                        One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.
                                                    </p>
                                                    <p>
                                                        The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls.
                                                    </p>

                                                    <p>
                                                        The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.
                                                    </p>
                                                    <p>
                                                        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.
                                                    </p>
                                                    <p>
                                                        The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls.
                                                    </p>

                                                    <p>
                                                        The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.
                                                    </p>
                                                    <p>
                                                        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.
                                                    </p>
                                                    <p class="small">
                                                        <strong>Best regards, Anthony Smith </strong>
                                                    </p>

                                                    <div class="m-t-lg">
                                                        <p>
                                                            <span><i class="fa fa-paperclip"></i> 2 attachments - </span>
                                                            <a href="#">Download all</a>
                                                            |
                                                            <a href="#">View all images</a>
                                                        </p>

                                                        <div class="attachment">
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-file"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Document_2014.doc
                                                                            <br>
                                                                            <small>Added: Jan 11, 2014</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-line-chart"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Seels_2015.xls
                                                                            <br>
                                                                            <small>Added: May 13, 2015</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div id="tab-3" class="tab-pane">
                                                    <div class="float-right">
                                                        <div class="tooltip-demo">
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="left" title="Plug this message"><i class="fa fa-plug"></i> Plug it</button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="Mark as read"><i class="fa fa-eye"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mark as important"><i class="fa fa-exclamation"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Move to trash"><i class="fa fa-trash-o"></i> </button>

                                                        </div>
                                                    </div>
                                                    <div class="small text-muted">
                                                        <i class="fa fa-clock-o"></i> Tuesday, 15 May 2014, 10:32 am
                                                    </div>

                                                    <h1>
                                                        To take a trivial example
                                                    </h1>

                                                    <p>
                                                        But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.
                                                    </p>
                                                    <p>
                                                        The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls.
                                                    </p>

                                                    <p>
                                                        he wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and.
                                                    </p>
                                                    <p>
                                                        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.
                                                    </p>

                                                    <p>
                                                        The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.
                                                    </p>
                                                    <p>
                                                        To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce.
                                                    </p>
                                                    <p class="small">
                                                        <strong>Best regards, Anthony Smith </strong>
                                                    </p>

                                                    <div class="m-t-lg">
                                                        <p>
                                                            <span><i class="fa fa-paperclip"></i> 2 attachments - </span>
                                                            <a href="#">Download all</a>
                                                            |
                                                            <a href="#">View all images</a>
                                                        </p>

                                                        <div class="attachment">
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-file"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Document_2014.doc
                                                                            <br>
                                                                            <small>Added: Jan 11, 2014</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-line-chart"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Seels_2015.xls
                                                                            <br>
                                                                            <small>Added: May 13, 2015</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="tab-4" class="tab-pane">
                                                    <div class="float-right">
                                                        <div class="tooltip-demo">
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="left" title="Plug this message"><i class="fa fa-plug"></i> Plug it</button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="Mark as read"><i class="fa fa-eye"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mark as important"><i class="fa fa-exclamation"></i> </button>
                                                            <button class="btn btn-white btn-xs" data-toggle="tooltip" data-placement="top" title="" data-original-title="Move to trash"><i class="fa fa-trash-o"></i> </button>

                                                        </div>
                                                    </div>
                                                    <div class="small text-muted">
                                                        <i class="fa fa-clock-o"></i> Thursday, 27 april 2014, 10:32 am
                                                    </div>

                                                    <h1>
                                                        Gregor Samsa woke from troubled dreams.
                                                    </h1>

                                                    <p>
                                                        His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls.
                                                    </p>
                                                    <p>
                                                        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.
                                                    </p>
                                                    <p>
                                                        Travelling day in and day out. Doing business like this takes much more effort than doing your own business at home, and on top of that there's the curse of travelling, worries about making train connections, bad and irregular food, contact with different people all the time so that you can never get to know anyone or become friendly with them.
                                                    </p>

                                                    <p>
                                                        The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.
                                                    </p>
                                                    <p>
                                                        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.
                                                    </p>
                                                    <p class="small">
                                                        <strong>Best regards, Anthony Smith </strong>
                                                    </p>

                                                    <div class="m-t-lg">
                                                        <p>
                                                            <span><i class="fa fa-paperclip"></i> 2 attachments - </span>
                                                            <a href="#">Download all</a>
                                                            |
                                                            <a href="#">View all images</a>
                                                        </p>

                                                        <div class="attachment">
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-file"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Document_2014.doc
                                                                            <br>
                                                                            <small>Added: Jan 11, 2014</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="file-box">
                                                                <div class="file">
                                                                    <a href="#">
                                                                        <span class="corner"></span>

                                                                        <div class="icon">
                                                                            <i class="fa fa-line-chart"></i>
                                                                        </div>
                                                                        <div class="file-name">
                                                                            Seels_2015.xls
                                                                            <br>
                                                                            <small>Added: May 13, 2015</small>
                                                                        </div>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
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
