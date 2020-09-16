using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm.setting
{    
    public partial class _userManagement : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FC_Common FC = new FC_Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string permission = Server.UrlDecode(Request.Cookies["_permiss"].Value).ToString();
                if (permission == "AUTHSTAF" || permission == "AUTHSTAFS" || permission == "AUTHADM")
                {
                    _rpt_Alluser.DataSource = db._0620_Workbase_GetAllStaff();
                    _rpt_Alluser.DataBind();
                    it_permiss.DataSource = db._0620_Workbase_GetBasicCodeCommonByKey("AUTH");
                    it_permiss.DataTextField = "CLASS_NAME";
                    it_permiss.DataValueField = "BasicCode";
                    it_permiss.DataBind();
                }
                else
                {
                    Response.Redirect("/");
                }
            }
        }



        protected void _rpt_Alluser_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            int STAFFID = Convert.ToInt32(e.CommandArgument.ToString());
            string permission = Server.UrlDecode(Request.Cookies["_permiss"].Value).ToString();
            switch (e.CommandName)
            {
                case "delete":
                    //if (permission == "AUTHADM")
                    //{
                    //    db.STAFF_HANDLING(3, STAFFID, "", "", DateTime.Now, "", "", "", "", "", "", "", "", "", "", "", "false", 0, DateTime.Now, DateTime.Now, "", "");
                    //    Response.Redirect(Request.RawUrl);
                    //}
                    //else
                    //{
                    //    lblerrorstaff.Text = "You don't have permission to do it.";
                    //    Response.Redirect(Request.RawUrl);

                    //}
                    break;
            }
        }

        protected void it_b_AddNewUser_Click(object sender, EventArgs e)
        {
                    

        }


    }
}