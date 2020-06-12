using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm.setting
{
    public partial class _menu : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FC_Common FC = new FC_Common();
        DBHelper db_conn = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }

        protected void btn_addNewMenu_Click(object sender, EventArgs e)
        {
            string @p_MenuCode = FC.GetUniqueKey(6); //_txt_menuCode.Text;
            string @p_MenuParentCode = _txt_parentCode_selected.Text;
            string @p_MenuName = _txt_menuName.Text;
            string @p_MenuLink = _txt_menuLink.Text;
            string @p_MenuIcon = _txt_menuIcon.Text;
            string sql = "";
            sql += "INSERT INTO [dbo].[M_MENU] ( [MENU_KEY] ,[MENU_PARENT_KEY] ,[MENU_NAME] ,[MENU_URL] ,[FLAG_ACTIVE] ,[MENU_NOTE] )";
            sql += " VALUES";
            sql += "('" + @p_MenuCode + "','" + @p_MenuParentCode + "',N'" + @p_MenuName + "','" + @p_MenuLink + "',1,'" + @p_MenuIcon + "')";
            DBHelper.ExecuteQuery(sql);
            Response.Redirect(Request.RawUrl);
        }

        protected void btn_DeactiveMenu_Click(object sender, EventArgs e)
        {
            string @p_MenuCode = _txt_menuCode_edit.Text;      
            string sql = "";
            sql += "DELETE [dbo].[M_MENU] ";
            sql += " WHERE MENU_KEY = '" + p_MenuCode + "'";
            DBHelper.ExecuteQuery(sql);
            Response.Redirect(Request.RawUrl);
        }

        protected void btn_SaveNewMenu_Click(object sender, EventArgs e)
        {
            string @p_MenuCode = _txt_menuCode_edit.Text;
            string @p_MenuParentCode = _txt_parentCode_selected_edit.Text;
            string @p_MenuName = _txt_menuName_edit.Text;
            string @p_MenuLink = _txt_menuLink_edit.Text;
            string @p_MenuIcon = _txt_menuIcon_edit.Text;
            string sql = "";
            sql += "UPDATE [dbo].[M_MENU] ";
            sql += "SET ";
            sql += "  MENU_PARENT_KEY = N'" + @p_MenuParentCode + "'";
            sql += " ,MENU_NAME = N'" + @p_MenuName + "'";
            sql += " ,MENU_URL = N'" + p_MenuLink + "'";
            sql += " ,MENU_NOTE = N'" + @p_MenuIcon + "'";
            sql += " WHERE MENU_KEY = '" + p_MenuCode.Replace("\"","");
            DBHelper.ExecuteQuery(sql);
            Response.Redirect(Request.RawUrl);
        }
    }
}