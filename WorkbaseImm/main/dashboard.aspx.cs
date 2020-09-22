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
                ScanFeedback(Server.UrlDecode(Request.Cookies["_id"].Value));
            }
        }
        protected void ScanFeedback(string _Token)
        {
            //rpt_YourCusFollowing.DataSource = db._0620_Workbase_Get_Customer_Following_ByStaffId(_Token);
            //rpt_YourCusFollowing.DataBind();
            //rpt_feedbackDetails.DataSource = db._0620_Workbase_GetConversation_ByCus(19438);
            //rpt_feedbackDetails.DataBind();
        }
    }
}