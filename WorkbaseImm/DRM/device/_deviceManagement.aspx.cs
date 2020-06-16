using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm.DRM.device
{
    public partial class _deviceManagement : System.Web.UI.Page
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
        protected void btn_addNewDivice_Click(object sender, EventArgs e)
        {
            
            string _error = "001";
            string @p_DevicestaffId = _txt_STAFF_ID_selected.Text;
            string @p_DeviceCategory = _txt_Category_selected.Text;
            string @p_DeviceName = _txt_Name_Device.Text;
            string @p_DeviceInfo = _txt_Info_Device.Text;
            string @p_DeviceNote = _txt_Note_Device.Text;
            string @p_DeviceBarCode = _txt_BarCode_Device.Text;
            //db.ADD_NEW_DEVICE(p_DeviceBarCode, p_DevicestaffId, p_DeviceCategory, p_DeviceName, p_DeviceInfo, p_DeviceNote);
           
            try
            {
                if (@p_DevicestaffId != "" && @p_DeviceCategory != "" && @p_DeviceName != "" && @p_DeviceInfo != "")
                {
                    string sql = "";
                    sql += "INSERT INTO [dbo].[M_DEVICE] ( [DV_BARCODE] ,[DV_USER_ID] ,[DV_CATALORY] ,[DV_NAME] ,[DV_INFO] ,[DV_NOTE] ,[FLAG_ACTIVE] ,[CREATE_DATE] ,[UPDATE_DATE] )";
                    sql += " VALUES";
                    sql += "('" + @p_DeviceBarCode + "','" + @p_DevicestaffId + "',N'" + @p_DeviceCategory + "',N'" + @p_DeviceName + "',N'" + @p_DeviceInfo + "',N'" + @p_DeviceNote + "','1',GETDATE(),GETDATE())";
                    if(DBHelper.ExecuteQuery(sql) == true)
                    {
                        Response.Redirect("/DRM/device/_deviceManagement.aspx?mes=004&mesType=success", false);
                    }else
                    {
                        Response.Redirect("/DRM/device/_deviceManagement.aspx?mes=005&mesType=error", false);
                    }    
                }
                else
                {
                 
                    Response.Redirect("/DRM/device/_deviceManagement.aspx?mes=003&mesType=error", false);
                }
                
            }
            catch (Exception ex)
            {
                Response.Redirect("/DRM/device/_deviceManagement.aspx?mes=006&mesType=error", false);
            }
        }

        protected void btn_DeactiveDivice_Click(object sender, EventArgs e)
        {
            //string @p_MenuCode = _txt_menuCode_edit.Text;
            //string sql = "";
            //sql += "DELETE [dbo].[M_MENU] ";
            //sql += " WHERE MENU_KEY = '" + p_MenuCode + "'";
            //DBHelper.ExecuteQuery(sql);
            //Response.Redirect(Request.RawUrl);
        }

        protected void btn_SaveNewDivice_Click(object sender, EventArgs e)
        {
            //string @p_MenuCode = _txt_menuCode_edit.Text;
            //string @p_MenuParentCode = _txt_parentCode_selected_edit.Text;
            //string @p_MenuName = _txt_menuName_edit.Text;
            //string @p_MenuLink = _txt_menuLink_edit.Text;
            //string @p_MenuIcon = _txt_menuIcon_edit.Text;
            //string sql = "";
            //sql += "UPDATE [dbo].[M_MENU] ";
            //sql += "SET ";
            //sql += "  MENU_PARENT_KEY = N'" + @p_MenuParentCode + "'";
            //sql += " ,MENU_NAME = N'" + @p_MenuName + "'";
            //sql += " ,MENU_URL = N'" + p_MenuLink + "'";
            //sql += " ,MENU_NOTE = N'" + @p_MenuIcon + "'";
            //sql += " WHERE MENU_KEY = '" + p_MenuCode.Replace("\"", "") + "'";
            //DBHelper.ExecuteQuery(sql);
            //Response.Redirect(Request.RawUrl);
        }
    }
}