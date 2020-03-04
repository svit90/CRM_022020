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