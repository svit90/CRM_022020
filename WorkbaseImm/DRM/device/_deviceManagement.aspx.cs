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
        string _mesCode = "006";
        string _mesType = "error";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ScriptManager.RegisterStartupScript( this.Master.Page, this.GetType(), "Function1", "<script type='text/javascript'>callMes();</script>", false);
                //Master.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('ádasd');  showerror('qưeqew', 'Hệ thống!Thông  báo.', 'success', 'toast-top-center');</script>", false);
                //ScriptManager.RegisterStartupScript(this.Master, this.GetType(), "tmp", "<script type='text/javascript'> showerror('qưeqew', 'Hệ thống!Thông  báo.', 'success', 'toast-top-center');</script>", false);
            }
        }
        protected void btn_mofDivice_Click(object sender, EventArgs e)
        {
            deviceHandle("MOF");
        }       
        protected void btn_deleteDivice_Click(object sender, EventArgs e)
        {
            deviceHandle("DEL");
        }

        protected void deviceHandle(string _mode)
        {
            string @p_DevicestaffId = _txt_STAFF_ID_selected.Text;
            string @p_DeviceCategory = _txt_Category_selected.Text;
            string @p_DeviceName = _txt_Name_Device.Text;
            string @p_DeviceInfo = _txt_Info_Device.Text;
            string @p_DeviceNote = _txt_Note_Device.Text;
            string @p_DeviceBarCode = _txt_BarCode_Device.Text;
            try
            {
                string sql = "";
                sql += "DELETE [dbo].[M_DEVICE] ";
                sql += " WHERE DV_BARCODE = '" + @p_DeviceBarCode + "';";
                if (_mode != "DEL")
                {
                    if (@p_DeviceBarCode != "" && @p_DevicestaffId != "" && @p_DeviceCategory != "" && @p_DeviceName != "" && @p_DeviceInfo != "")
                    {                       
                        sql += "INSERT INTO [dbo].[M_DEVICE] ( [DV_BARCODE] ,[DV_USER_ID] ,[DV_CATALORY] ,[DV_NAME] ,[DV_INFO] ,[DV_NOTE] ,[FLAG_ACTIVE] ,[CREATE_DATE] ,[UPDATE_DATE] )";
                        sql += " VALUES";
                        sql += "('" + @p_DeviceBarCode + "','" + @p_DevicestaffId + "',N'" + @p_DeviceCategory + "',N'" + @p_DeviceName + "',N'" + @p_DeviceInfo + "',N'" + @p_DeviceNote + "','1',GETDATE(),GETDATE())";
                    }
                    else
                    {
                        _mesCode = "003"; _mesType = "error";
                    }
                }

                if (DBHelper.ExecuteQuery(sql) == true)
                {
                    _mesCode = "004"; _mesType = "success";
                }
                else
                {
                    _mesCode = "005"; _mesType = "error";
                }
                Response.Cookies["ERROR_MES"].Value = Server.UrlEncode(_mesCode);
                Response.Cookies["ERROR_MES"].Expires = DateTime.Now.AddSeconds(5);
                Response.Cookies["ERROR_TYPE"].Value = Server.UrlEncode(_mesType);
                Response.Cookies["ERROR_TYPE"].Expires = DateTime.Now.AddSeconds(5);
                Response.Redirect(Request.RawUrl, false);
            }
            catch (Exception)
            {
                //Response.Redirect("/DRM/device/_deviceManagement.aspx?mes=006&mesType=error", false);
            }
        }
       
    }
}