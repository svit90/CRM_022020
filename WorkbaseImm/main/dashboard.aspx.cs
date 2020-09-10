using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm.main
{
    public partial class dashboard : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FC_Common FC = new FC_Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Cookies["USER_EMAIL"] != null && Request.Cookies["USER_PASS"] != null)
                {
                    if (Request["val"] == "logout")
                    {
                        Response.Cookies["USER_ID"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_NAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_EMAIL"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_PASS"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_ROLE"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_AVATAR"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_TEAM"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["USER_LINKHOME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Redirect("/default.aspx");
                    }
                    else
                    {
                        ScanFeedback(Server.UrlDecode(Request.Cookies["USER_TOKEN"].Value));

                    }
                }

            }
        }
        protected void ScanFeedback(string _Token)
        {
            rptFeedback.DataSource = db._0620_Workbase_GetConversation_ByStaff(_Token);
            rptFeedback.DataBind();
            //rpt_feedbackDetails.DataSource = db._0620_Workbase_GetConversation_ByCus(19438);
            //rpt_feedbackDetails.DataBind();
        }
    }
}