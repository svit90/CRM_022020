using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm
{
    public partial class _default : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FC_Common FC = new FC_Common();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Request.Cookies["USER_EMAIL"] != null && Request.Cookies["USER_PASS"] != null)
                {
                    if (Request["val"] == "logout" || (db._012020_CRM_V3_FUNC_User_Login(Server.UrlDecode(Request.Cookies["USER_ROLE"].Value),Server.UrlDecode(Request.Cookies["USER_EMAIL"].Value), Server.UrlDecode(Request.Cookies["USER_PASS"].Value)).Count() != 1))
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
                        Response.Redirect(Server.UrlDecode(Request.Cookies["USER_LINKHOME"].Value));
                    }
                }               
                
            }
        }

        protected void btn_signin_Click(object sender, EventArgs e)
        {
            string _error = "002";
            DataClassesDataContext db = new DataClassesDataContext();
            FC_Common FC = new FC_Common();
            DateTime mmday = DateTime.Now;
            string format = "dd-MM-yyyy hh:mm:ss tt";
            string mday = mmday.ToString(format);
            string _email = email.Text;
            string _appPass = FC.GetUniqueKey(8);
            string _ipAdress = txt_IPAddress.Text;
            try
            {
                if(_email != "")
                {
                    foreach (var row in db.wb_FUNCTION_Login_Oop_define(_email))
                    {
                        if (row.RoleName == "Customers")
                        {
                            _error = "OK";
                            Response.Redirect("/login/_customerLogin.aspx?i=" + FC.EncryptPassword64(row.RowId.ToString()), false);
                        }
                        if (row.RoleName == "Partners")
                        {
                            _error = "OK";
                            string bodyprivate = FC.SentImmCode(_appPass);
                            db.wb_PARTNER_Reset_Pass_Work(_email, FC.Encrypt(_appPass));
                            FC_Common.SendMessageMailKit("Hệ thống CRM | IMM Group", "customerservice@immgroup.com", FC.DecryptPassword64("bgBhAHMAcgBpAHIAZQB2AHMAZAB4AGoAdABoAGgAeQA="), _email, "", "", "Mật khẩu đăng nhập hệ thống ngày: " + mday, bodyprivate);
                            Response.Redirect("/login/_agentLogin.aspx?i=" + FC.EncryptPassword64(row.RowId.ToString()), false);
                        }
                        if (row.RoleName == "Staffs")
                        {
                            foreach (var r in db._2019_LOAD_FUNCTION_STAFF(_email, "03"))
                            {
                                if ((r.FUNC != "HAVE" && r.STAFF_PERMISSION != "AUTHADM") || (_ipAdress != "118.69.224.243" && _ipAdress != "115.73.214.199" && _ipAdress != "118.69.224.168" && _ipAdress != "118.70.171.215"))
                                {
                                    _error = "001";
                                }
                                else
                                {
                                    _error = "OK";
                                    db.wb_STAFF_Reset_Pass_Work(_email, FC.Encrypt(_appPass));
                                    string bodyprivate = FC.SentImmCode(_appPass);
                                    FC_Common.SendMessageMailKit("Hệ thống CRM | IMM Group", "customerservice@immgroup.com", FC.DecryptPassword64("bgBhAHMAcgBpAHIAZQB2AHMAZAB4AGoAdABoAGgAeQA="), _email, "", "", "Mật khẩu đăng nhập hệ thống ngày: " + mday, bodyprivate);
                                    Response.Redirect("/login/_staffLogin.aspx?i=" + FC.EncryptPassword64(row.RowId.ToString()), false);
                                }
                            }
                        }
                    }
                }
                else
                {
                    _error = "000";
                }                
                if(_error != "OK")
                {
                    Response.Redirect("/default.aspx?error=" + _error + "&e=" + _email, false);
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/default.aspx?error=" + ex.Message, false);
            }
        }

      
    }
}