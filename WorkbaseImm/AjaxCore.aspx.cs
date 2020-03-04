using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net.Mail;
using System.Globalization;
using System.Threading;

namespace WorkbaseImm
{
    public partial class AjaxCore : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string CheckLoginCode(string email, string pass)
        {
            string str = "false";
            DataClassesDataContext db = new DataClassesDataContext();
            FC_Common FC = new FC_Common();
            try
            {
                var flag = false;
                foreach (var per in db.wb_FUNCTION_Login(email, pass))
                {
                    str = "true";
                }
            }
            catch (Exception ex)
            {
                str = ex.Message;
            }
            return str;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string SendImmCode(string email, string IPAddress)
        {
            string str = "false";
            DataClassesDataContext db = new DataClassesDataContext();
            FC_Common FC = new FC_Common();
            DateTime mmday = DateTime.Now;
            string format = "dd-MM-yyyy hh:mm:ss tt";
            string mday = mmday.ToString(format);
            string app_pass = FC.GetUniqueKey(8);
            try
            {
                foreach (var row in db.wb_FUNCTION_Login_Oop_define(email))
                {
                    str = row.RoleName;
                    if (row.RoleName == "Customers")
                    {
                        //str += "|true|" + row.AvatarImg + "|" + row.FullName;
                        str = "/login/_customerLogin.aspx?id=" + row.RowId;
                    }
                    if (row.RoleName == "Partner")
                    {
                        string bodyprivate = FC.SentImmCode(app_pass);
                        db.wb_PARTNER_Reset_Pass_Work(email, FC.Encrypt(app_pass));
                        FC_Common.SendMessageMailKit("Hệ thống CRM | IMM Group", "customerservice@imm.group", FC.DecryptPassword64("bgBhAHMAcgBpAHIAZQB2AHMAZAB4AGoAdABoAGgAeQA="), email, "", "", "Mật khẩu đăng nhập hệ thống ngày: " + mday, bodyprivate);
                        //str += "|true|" + row.AvatarImg + "|" + row.FullName;
                        str = "/login/_agentLogin.aspx?id=" + row.RowId;
                    }
                    if (row.RoleName == "Staffs")
                    {
                        foreach (var r in db._2019_LOAD_FUNCTION_STAFF(email, "03"))
                        {
                            if ((r.FUNC != "HAVE" && r.STAFF_PERMISSION != "AUTHADM" ) && (IPAddress != "118.69.224.243" && IPAddress != "115.73.214.199" && IPAddress != "118.69.224.168" && IPAddress != "118.70.171.215"))
                            {
                                str += "|Bạn không có mặt tại văn phòng, không thể đăng nhập.|" + row.AvatarImg + "|" + row.FullName;
                            }
                            else
                            {                                
                                db.wb_STAFF_Reset_Pass_Work(email, FC.Encrypt(app_pass));
                                string bodyprivate = FC.SentImmCode(app_pass);
                                FC_Common.SendMessageMailKit("Hệ thống CRM | IMM Group", "customerservice@imm.group", FC.DecryptPassword64("bgBhAHMAcgBpAHIAZQB2AHMAZAB4AGoAdABoAGgAeQA="), email, "", "", "Mật khẩu đăng nhập hệ thống ngày: " + mday, bodyprivate);
                                //str += "|true|" + row.AvatarImg + "|" + row.FullName;
                                str = "/login/_staffLogin.aspx?id=" + row.RowId;
                            }
                        }
                    }
                }                
            }
            catch (Exception ex)
            {
                str = "" + ex.Message;
            }
            return str;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> AutoEmail(string mail)
        {
            Regex regex = new Regex(@"^[-+]?[0-9]*\.?[0-9]+$");
            RegexUtilities util = new RegexUtilities();
            DataClassesDataContext db = new DataClassesDataContext();
            if (regex.IsMatch(mail) == true)
            {
                if (mail.Length < 9)
                {
                    return db.M_CUSTOMERs.Where(n => n.CUS_ID.ToString().Contains(mail)).Where(n => n.FLAG_ACTIVE != 0 & n.CUS_RELATIVES == 0).OrderBy(n => n.CUS_NAME_VN).Take(50).Select(n => n.CUS_ID + " - " + n.CUS_NAME_VN + " - " + n.CUS_EMAIL + " - " + n.CUS_PHONE).ToList<string>();
                }
                else
                {
                    return db.M_CUSTOMERs.Where(n => n.CUS_PHONE.Contains(mail)).Where(n => n.FLAG_ACTIVE != 0).OrderBy(n => n.CUS_NAME_VN).Take(50).Select(n => n.CUS_ID + " - " + n.CUS_NAME_VN + " - " + n.CUS_EMAIL + " - " + n.CUS_PHONE).ToList<string>();
                }
            }
            else if (util.IsValidEmail(mail) == true)
            {
                return db.M_CUSTOMERs.Where(n => n.CUS_EMAIL.Contains(mail)).Where(n => n.FLAG_ACTIVE != 0).OrderBy(n => n.CUS_NAME_VN).Take(50).Select(n => n.CUS_ID + " - " + n.CUS_NAME_VN + " - " + n.CUS_EMAIL + " - " + n.CUS_PHONE).ToList<string>();
            }
            else
            {
               return db.M_CUSTOMERs.Where(n => n.CUS_NAME_ENG.Contains(FC_Common.ConvertName(mail))).Where(n => n.FLAG_ACTIVE != 0).OrderBy(n => n.CUS_NAME_VN).Take(50).Select(n => n.CUS_ID + " - " + n.CUS_NAME_VN + " - " + n.CUS_EMAIL + " - " + n.CUS_PHONE).ToList<string>();
            }
        }

    }
}