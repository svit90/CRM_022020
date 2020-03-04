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
                        loadInfoUser_masterpage();
                                               
                    }
                }

            }
        }

        protected void loadInfoUser_masterpage()
        {
            bool flg = false;
            foreach (var u in db._012020_CRM_V3_FUNC_User_Login(Server.UrlDecode(Request.Cookies["USER_ROLE"].Value), Server.UrlDecode(Request.Cookies["USER_EMAIL"].Value), Server.UrlDecode(Request.Cookies["USER_PASS"].Value)))
            {
                lb_userName.InnerText = u.FullName;
                lb_Position.InnerText = u.Position;
                img_avatar.Src = "/uploads/blog/" + u.AvatarImg;
            }
        }
    }
}