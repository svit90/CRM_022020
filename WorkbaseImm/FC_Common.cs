using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Dynamic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using RestSharp;
using Newtonsoft.Json.Linq;
using System.Threading.Tasks;
using System.Net.Http;

namespace WorkbaseImm
{
    public class FC_Common
    {
        DataClassesDataContext db = new DataClassesDataContext();

        //Encrypt pass
        public string Encrypt(string text)
        {
#pragma warning disable CS0618 // Type or member is obsolete
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(text.Trim(), "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete
        }

        public string EncryptPassword64(string txtPassword)
        {
            byte[] passBytes = System.Text.Encoding.Unicode.GetBytes(txtPassword);
            string encryptPassword = Convert.ToBase64String(passBytes);
            return encryptPassword;
        }

        public string DecryptPassword64(string encryptedPassword)
        {
            byte[] passByteData = Convert.FromBase64String(encryptedPassword);
            string originalPassword = System.Text.Encoding.Unicode.GetString(passByteData);
            return originalPassword;
        }

        public string NVL(object obj)
        {
            string revalue = "";
            if (obj != null)
            {
                revalue = obj.ToString();
            }
            else
            {
                revalue = "";
            }
            return revalue;
        }

        //General random character code
        public string GetUniqueKey(int maxSize)
        {
            char[] chars = new char[62];
            chars =
            "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
            byte[] data = new byte[1];
            using (RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider())
            {
                crypto.GetNonZeroBytes(data);
                data = new byte[maxSize];
                crypto.GetNonZeroBytes(data);
            }
            StringBuilder result = new StringBuilder(maxSize);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length)]);
            }
            return result.ToString();
        }

        public static string ConvertName(string text)
        {
            string name = "";
            for (int i = 32; i < 48; i++)
            {
                text = text.Replace(((char)i).ToString(), " ");
            }
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string strFormD = text.Normalize(System.Text.NormalizationForm.FormD);
            name = regex.Replace(strFormD, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D').ToLower();
            return name;
        }

        public static void SendMessageMailKit(string MailHeader, string SenderEmail, string SenderPassword, string ToEmail, string CcEmail, string BccEmail, string Subject, string BodyEmail)
        {
            var client = new RestClient("http://api.crm.imm.group/imm/api");
            var request = new RestRequest("sendmail-web", Method.POST);
            var sendData = new
            {
                MailHeader = MailHeader,
                SenderEmail = SenderEmail,
                SenderPassword = SenderPassword,
                ToEmail = ToEmail,
                CcEmail = CcEmail,
                BccEmail = BccEmail,
                Subject = Subject,
                BodyEmail = BodyEmail
            };
            request.AddJsonBody(sendData);
            var asyncHandle = client.ExecuteAsync(request, response =>
            {
                Console.WriteLine(response.Content);
            });
        }

        #region Template email
            public string SentImmCode(string app_pass)
            {
                string body = string.Empty;
                DateTime mmday = DateTime.Now;
                string format = "hh:mm:ss tt dd-MM-yyyy";
                string mday = mmday.ToString(format);
                using (StreamReader reader = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/email_templates/SendImmLoginCode.htm")))
                {
                    body = reader.ReadToEnd();
                }
                body = body.Replace("{IMMCODE}", app_pass);
                return body;
            }
        #endregion
    }

    public class RegexUtilities
    {
        bool invalid = false;

        public bool IsValidEmail(string strIn)
        {
            invalid = false;
            if (String.IsNullOrEmpty(strIn))
                return false;

            // Use IdnMapping class to convert Unicode domain names.
            try
            {
                strIn = Regex.Replace(strIn, @"(@)(.+)$", this.DomainMapper,
                                      RegexOptions.None);
            }
            catch (Exception)
            {
                return false;
            }

            if (invalid)
                return false;

            // Return true if strIn is in valid e-mail format.
            try
            {
                return Regex.IsMatch(strIn,
                        @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                        @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                        RegexOptions.IgnoreCase);
            }
            catch (Exception)
            {
                return false;
            }
        }

        private string DomainMapper(Match match)
        {
            // IdnMapping class with default property values.
            IdnMapping idn = new IdnMapping();

            string domainName = match.Groups[2].Value;
            try
            {
                domainName = idn.GetAscii(domainName);
            }
            catch (ArgumentException)
            {
                invalid = true;
            }
            return match.Groups[1].Value + domainName;
        }
    }

    public class DBHelper
    {
        public static SqlCommand cmd = new SqlCommand();
        public static SqlDataAdapter sda;
        public static SqlDataReader sdr;
        public static DataSet ds = new DataSet();
        public static SqlConnection con = new SqlConnection("Data Source=103.252.252.254;Initial Catalog=ImmiCRM;Persist Security Info=True;User ID=sa;Password=Mekongdelta@2018");
        public static DataTable dt = new DataTable();
        public static readonly string connectionString = "Data Source=103.252.252.254;Initial Catalog=ImmiCRM;Persist Security Info=True;User ID=sa;Password=Mekongdelta@2018";

        public static bool IsExist(string Query)
        {
            bool check = false;
            using (cmd = new SqlCommand(Query, con))
            {
                con.Open();
                sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                    check = true;
            }
            sdr.Close();
            con.Close();
            return check;

        }

        public static void ExecuteQuery(string Query)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                try
                {
                    using (cmd = new SqlCommand(Query, connection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public static string GetColumnVal(string Query, string ColumnName)
        {
            string RetVal = "";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                try
                {
                    using (cmd = new SqlCommand(Query, connection))
                    {
                        sdr = cmd.ExecuteReader();
                        while (sdr.Read())
                        {
                            RetVal = sdr[ColumnName].ToString();
                            break;
                        }
                    }
                }
                catch
                {
                }
                finally
                {
                    connection.Close();
                }
            }
            return RetVal;
        }

        public static string GetColumnVal(string Query, string ColumnName, System.Data.CommandType Type)
        {
            string RetVal = "";
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;
            con.Open();

            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                RetVal = sdr[ColumnName].ToString();
                break;
            }

            sdr.Close();
            con.Close();
            return RetVal;
        }

        public static string GetColumnVal(string Query, string ColumnName, Dictionary<string, string> Para, System.Data.CommandType Type)
        {
            string RetVal = "";
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;
            foreach (KeyValuePair<string, string> kvp in Para)
            {
                cmd.Parameters.AddWithValue(kvp.Key, kvp.Value);
            }
            con.Open();

            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                RetVal = sdr[ColumnName].ToString();
                break;
            }
            cmd.Parameters.Clear();
            sdr.Close();
            con.Close();
            return RetVal;
        }


        public static DataTable DB_ToDataTable(string Query)
        {
            DataTable dt = new DataTable();
            cmd.CommandText = Query;
            cmd.Connection = con;
            con.Open();
            dt.Load(sdr = cmd.ExecuteReader());
            sdr.Close();
            con.Close();
            return dt;
        }

        public static DataTable DB_ToDataTable(string Query, System.Data.CommandType Type)
        {
            DataTable dt = new DataTable();
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;
            con.Open();
            dt.Load(sdr = cmd.ExecuteReader());
            sdr.Close();
            con.Close();
            return dt;
        }

        public static DataTable DB_ToDataTable(string Query, Dictionary<string, string> Para, System.Data.CommandType Type)
        {
            DataTable dt = new DataTable();
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;
            foreach (KeyValuePair<string, string> kvp in Para)
            {
                cmd.Parameters.AddWithValue(kvp.Key, kvp.Value);
            }
            con.Open();
            dt.Load(sdr = cmd.ExecuteReader());
            cmd.Parameters.Clear();
            sdr.Close();
            con.Close();
            return dt;
        }

        public static List<dynamic> DB_ToDynamicList(string Query, System.Data.CommandType Type)
        {
            var dynamicDt = new List<dynamic>();
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;
            con.Open();

            SqlDataReader sqlReader = cmd.ExecuteReader();
            //DataTable schemaTable = sqlReader.GetSchemaTable();
            DataTable dt = new DataTable();
            dt.Load(sqlReader);
            foreach (DataRow row in dt.Rows)
            {
                dynamic dyn = new ExpandoObject();
                dynamicDt.Add(dyn);
                foreach (DataColumn column in dt.Columns)
                {
                    var dic = (IDictionary<string, object>)dyn;
                    //dic[column.ColumnName] = row[column];
                }
            }

            con.Close();
            return dynamicDt;
        }

        public static List<dynamic> DB_ToDynamicList(string Query, Dictionary<string, string> Para, System.Data.CommandType Type)
        {
            var dynamicDt = new List<dynamic>();
            cmd.CommandText = Query;
            cmd.Connection = con;
            cmd.CommandType = Type;

            foreach (KeyValuePair<string, string> kvp in Para)
            {
                cmd.Parameters.AddWithValue(kvp.Key, kvp.Value);
            }

            con.Open();

            SqlDataReader sqlReader = cmd.ExecuteReader();
            //DataTable schemaTable = sqlReader.GetSchemaTable();
            DataTable dt = new DataTable();
            dt.Load(sqlReader);
            foreach (DataRow row in dt.Rows)
            {
                dynamic dyn = new ExpandoObject();
                dynamicDt.Add(dyn);
                foreach (DataColumn column in dt.Columns)
                {
                    var dic = (IDictionary<string, object>)dyn;
                    dic[column.ColumnName] = row[column];
                }
            }
            cmd.Parameters.Clear();
            sdr.Close();
            con.Close();
            return dynamicDt;
        }
    }

    public static class DataTableExtensions
    {
        public static List<dynamic> ToDynamic(this DataTable dt)
        {
            var dynamicDt = new List<dynamic>();
            foreach (DataRow row in dt.Rows)
            {
                dynamic dyn = new ExpandoObject();
                dynamicDt.Add(dyn);
                //--------- change from here
                foreach (DataColumn column in dt.Columns)
                {
                    var dic = (IDictionary<string, object>)dyn;
                    dic[column.ColumnName] = row[column];
                }
                //--------- change up to here
            }
            return dynamicDt;
        }
    }

    public static class HashSecurityKey
    {
        public static string EncryptString(string stringToSecret)
        {
            byte[] passBytes = System.Text.Encoding.Unicode.GetBytes(stringToSecret);
            string EncryptedString = Convert.ToBase64String(passBytes);
            return EncryptedString;
        }

        public static string DecryptString(string EncryptedString)
        {
            byte[] passByteData = Convert.FromBase64String(EncryptedString);
            string originalString = System.Text.Encoding.Unicode.GetString(passByteData);
            return originalString;
        }

        public static string ToHexString(string str)
        {
            var sb = new StringBuilder();

            var bytes = Encoding.Unicode.GetBytes(str);
            foreach (var t in bytes)
            {
                sb.Append(t.ToString("X2"));
            }

            return sb.ToString();
        }

        public static string FromHexString(string hexString)
        {
            var bytes = new byte[hexString.Length / 2];
            for (var i = 0; i < bytes.Length; i++)
            {
                bytes[i] = Convert.ToByte(hexString.Substring(i * 2, 2), 16);
            }

            return Encoding.Unicode.GetString(bytes);
        }
    }

    public static class Lib
    {
        public static bool CheckClientIp()
        {
            var result = GetClientIp().Result;
            JObject jObject = JObject.Parse(result);
            string ip = jObject["ip"].ToString();
            if (ip == "118.69.224.243" || ip == "115.73.214.199" || ip == "118.69.224.168" || ip == "118.70.171.215")
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        private static async Task<string> GetClientIp()
        {
            var url = "https://jsonip.com";

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(url);

                HttpResponseMessage response = await client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    string strResult = await response.Content.ReadAsStringAsync();

                    return strResult;
                }
                else
                {
                    return null;
                }
            }
        }


    }

    public static class Error
    {
        public static string Show(string _language, string _ErrorCode)
        {
            string mes = "";
            string sql = "SELECT MESSAGE_CONTENT FROM M_MESSAGE WHERE MES_PRI_KEY = '" + _language + "' AND MES_SEC_KEY = '" + _ErrorCode + "'";
            mes = DBHelper.GetColumnVal(sql, "MESSAGE_CONTENT", CommandType.Text);
            return mes;
        }
    }
}