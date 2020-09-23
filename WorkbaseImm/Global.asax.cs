using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WorkbaseImm
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string requestedUrl = HttpContext.Current.Request.Url.ToString().ToLower();
            string requestedDomain = "http://d.crm.imm.group";
            string requestedDomain1 = "https://d.crm.imm.group";
            string requestedDomain2 = "http://d.crm.immigration.com.vn";
            string requestedDomain3 = "http://d.crm.immigration.vn";
            string requestedDomain4 = "http://d.crm.immgroup.com";
            string correctDomain = "https://d.crm.immgroup.com";
            if (requestedUrl.Contains(requestedDomain))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace(requestedDomain, correctDomain));
            }
            else if (requestedUrl.Contains(requestedDomain1))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace(requestedDomain1, correctDomain));
            }
            else if (requestedUrl.Contains(requestedDomain2))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace(requestedDomain2, correctDomain));
            }
            else if (requestedUrl.Contains(requestedDomain3))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace(requestedDomain3, correctDomain));
            }
            else if (requestedUrl.Contains(requestedDomain4))
            {
                HttpContext.Current.Response.Status = "301 Moved Permanently";
                HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace(requestedDomain4, correctDomain));
            }
            string redirectUrl = Request.Url.AbsolutePath.ToString().ToLower();
            switch (redirectUrl)
            {
                case "/logincus.aspx":
                    HttpContext.Current.Response.Status = "301 Moved Permanently";
                    HttpContext.Current.Response.AddHeader("Location", requestedUrl.Replace("/logincus.aspx", "/default.aspx"));
                    break;
                default:
                    break;
            }
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            //Exception ex = HttpContext.Current.Server.GetLastError();
            //if (ex.InnerException != null)
            //{
            //    ex = ex.InnerException;
            //}
            //if (ex is HttpException)
            //{
            //    if (((HttpException)ex).GetHttpCode() == 404)
            //    {
            //        Response.Redirect("/error.aspx");
            //    }
            //    else
            //    {
            //        Response.Redirect("/error.aspx");
            //    }
            //}
            //HttpContext.Current.Server.ClearError();
            // Get last error from the server
            //Exception exc = Server.GetLastError();

            //if (exc is HttpUnhandledException)
            //{
            //    if (exc.InnerException != null)
            //    {
            //        exc = new Exception(exc.InnerException.Message);
            //        Server.Transfer("ErrorPage.aspx?handler=Application_Error%20-%20Global.asax",
            //            true);
            //    }
            //}
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}