using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm
{
    public partial class crm : System.Web.UI.MasterPage
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FC_Common FC = new FC_Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptFeedback.DataSource = db._0620_Workbase_GetConversation_ByStaff(Server.UrlDecode(Request.Cookies["_token"].Value));
                rptFeedback.DataBind();
            }
        }

        protected void loadInfoUser_masterpage()
        {
            Boolean flg = false;
            foreach (var u in db._012020_CRM_V3_FUNC_User_Login(Server.UrlDecode(Request.Cookies["_role"].Value), Server.UrlDecode(Request.Cookies["_email"].Value), Server.UrlDecode(Request.Cookies["_verifycode"].Value)))
            {
                flg = true;
                lb_userName.InnerText = u.FullName;
                lb_Position.InnerText = u.Position;
                img_avatar.Src = "/uploads/blog/" + u.AvatarImg;
                ScanFeedback(u.RowId.ToString());
            }
            if(flg == false) { Response.Redirect("/default.aspx?val=logout&mes="); }
        }

        protected void ScanFeedback(string _Token)
        {
            //rptFeedback.DataSource = db.SCAN_FEEDBACK(StaffID);
            //rptFeedback.DataBind();
            rptFeedback.DataSource = db._0620_Workbase_GetConversation_ByStaff(_Token);
            rptFeedback.DataBind();
        }
    }
}