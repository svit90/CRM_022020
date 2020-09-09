using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkbaseImm.user
{
    public partial class _dashboardEditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Upload(object sender, EventArgs e)
        {
            string iduser = "thabh"; //userid.InnerText;
            string namefile = "avataruser-" + iduser;
            string base64 = Request.Form["imgCropped"];
            byte[] bytes = Convert.FromBase64String(base64.Split(',')[1]);

            DateTime mmday = DateTime.Now;
            string formatdayfile = "yyyyMMddhhss";
            string nameday = mmday.ToString(formatdayfile);

            using (System.IO.FileStream stream = new System.IO.FileStream(Server.MapPath("~/images/avatar/" + nameday + "-" + namefile + ".png"), System.IO.FileMode.Create))
            {

                stream.Write(bytes, 0, bytes.Length);

                // create the start Bitmap from the MemoryStream that contains the image  
                //Bitmap startBitmap = new Bitmap(stream);

                //// create a new Bitmap with dimensions for the thumbnail.  
                //Bitmap newBitmap = new Bitmap(500, 500,System.Drawing.Imaging.PixelFormat.Format24bppRgb) ;
                //Graphics oGraphic = Graphics.FromImage(newBitmap);

                //oGraphic.CompositingQuality = CompositingQuality.HighSpeed;
                //oGraphic.SmoothingMode = SmoothingMode.HighSpeed;
                //oGraphic.InterpolationMode = InterpolationMode.Low;

                //Rectangle rect = new Rectangle(0, 0, 500, 500);
                //oGraphic.DrawImage(startBitmap, rect);          

                //// Save this image to the specified stream in the specified format.  
                //newBitmap.Save(new System.IO.FileStream(Server.MapPath("~/images/avatar/" + nameday + "-" + namefile + ".png"), System.IO.FileMode.Create), System.Drawing.Imaging.ImageFormat.Jpeg);


                // Fill the byte[] for the thumbnail from the new MemoryStream.  
                stream.Flush();

                //db.HRU_USER1_AVATAR(Convert.ToInt32(iduser), "avatar/" + nameday + "-" + namefile + ".png");
                Response.Redirect(Request.RawUrl, false);
                Context.ApplicationInstance.CompleteRequest();
            }

        }

        // Resize a Bitmap  
        private static Bitmap ResizeImage(Bitmap image, int width, int height)
        {
            Bitmap resizedImage = new Bitmap(width, height, System.Drawing.Imaging.PixelFormat.Format24bppRgb);
            using (Graphics gfx = Graphics.FromImage(resizedImage))
            {
                gfx.DrawImage(image, new Rectangle(0, 0, width, height),
                    new Rectangle(0, 0, image.Width, image.Height), GraphicsUnit.Pixel);
            }
            return resizedImage;
        }
    }
}