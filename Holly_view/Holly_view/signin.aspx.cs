using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Holly_view
{
    public partial class signin : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
        }

        protected void btn_sign_Click(object sender, EventArgs e)
        {
            Session["name"] = txt_email.Text;

            cn.Open();
            SqlCommand cm = new SqlCommand("select * from [dbo].[Admins] where email='" + txt_email.Text + "' and password = '" + txt_pass.Text + "' ", cn);
            SqlDataReader sd = cm.ExecuteReader();
            sd.Read();
            if (sd.HasRows == true)
            {
                Response.Redirect("add_item.aspx");
                cn.Close();
            }
            else
            {

                cn.Close();

                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from [dbo].[users] where email='" + txt_email.Text + "'", cn);
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows == true)
                {
                    if (VerifyHashedPassword(txt_pass.Text, sdr["password"].ToString()))
                    {
                        // Password is correct, set session variables and redirect to default page
                        Session["user_first_name"] = sdr["first_name"];
                        Session["user_last_name"] = sdr["last_name"];
                        Session["user_id"] = sdr["userID"];
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        // Password is incorrect, display error message
                        Response.Write("<script>alert('Wrong Email or Password')</script>");
                    }
                }
                else
                {
                    // User not found, display error message
                    Response.Write("<script>alert('Wrong Email or Password')</script>");
                }


                cn.Close();



            }

        }
        private bool VerifyHashedPassword(string password, string hashedPassword)
        {
            string hashedInput = HashPassword(password);
            return StringComparer.OrdinalIgnoreCase.Compare(hashedInput, hashedPassword) == 0;
        }

        private string HashPassword(string password)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(password);
            using (var hash = System.Security.Cryptography.SHA256.Create())
            {
                byte[] hashedBytes = hash.ComputeHash(bytes);
                return BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
            }
        }

    }
}