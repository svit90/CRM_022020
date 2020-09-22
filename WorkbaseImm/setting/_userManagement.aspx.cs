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
                    _rpt_showAlluser.DataSource = db._0620_Workbase_GetAllStaff();
                    _rpt_showAlluser.DataBind();
                    it_permiss.DataSource = db._0620_Workbase_GetBasicCodeCommonByKey("AUTH");
                    it_permiss.DataTextField = "CLASS_NAME";
                    it_permiss.DataValueField = "BasicCode";
                    it_permiss.DataBind();
                    it_deparment.DataSource = db.CLASSIFICATION_SEARCH("TEAM");
                    it_deparment.DataTextField = "CLASS_NAME";
                    it_deparment.DataValueField = "CLASS_CODE";
                    it_deparment.DataBind();
                }
                else
                {
                    Response.Redirect("/");
                }
            }
        }



        protected void _rpt_showAlluser_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string _rowId = e.CommandArgument.ToString();
            string permission = Server.UrlDecode(Request.Cookies["_permiss"].Value).ToString();
            switch (e.CommandName)
            {
                case "delete":
                    if (permission == "AUTHADM")
                    {
                        string _sql = "UPDATE M_STAFF SET FLAG_ACTIVE = 0 WHERE ROWID ='" + _rowId + "'";
                        DBHelper.ExecuteQuery(_sql);
                        showError("004");
                        Response.Redirect(Request.RawUrl, false);
                    }
                    else
                    {
                        showError("009");
                        Response.Redirect(Request.RawUrl, false);
                    }
                    break;
            }
        }

        protected void it_b_AddNewUser_Click(object sender, EventArgs e)
        {
            string permission = Server.UrlDecode(Request.Cookies["_permiss"].Value).ToString();
            if (permission == "AUTHADM")
            {
                try
                {
                    if (Lib.checkEmailStaff(it_email.Text) == 0)
                    {
                            db._0620_Workbase_User_AddNew(
                                it_fullname.Text,
                                it_engname.Text,
                                DateTime.Parse(it_birthday.Text),
                                it_email.Text,
                                it_gender.SelectedValue,
                                it_permiss.SelectedValue,
                                it_phone.Text,
                                it_position.Text,
                                it_office.SelectedValue,
                                it_deparment.SelectedValue
                                );    
                        Response.Redirect(Request.RawUrl + "?mes=004",false);
                    }
                    else
                    {
                        Response.Redirect(Request.RawUrl + "?mes=005", false);
                    }

                }
                catch (Exception ex)
                {
                    Response.Redirect(Request.RawUrl + "?mes=006", false);
                }
            }
            else
            {
                Response.Redirect(Request.RawUrl + "?mes=009", false);
            }

        }

        protected void showError(string _errorCode)
        {
            Response.Cookies["mes"].Value = Server.UrlEncode(_errorCode);
            Response.Cookies["mes"].Expires = DateTime.Now.AddMinutes(5);
        }

    }
}