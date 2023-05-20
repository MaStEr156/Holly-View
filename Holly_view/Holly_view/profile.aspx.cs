using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Holly_view
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
            if (Session["name"] == null)
            {
                Response.Write("<script>alert('login first')</script>");
                Response.Redirect("signin.aspx");
            }
            else
            {
                if (!IsPostBack)
                {

                    Label1.Text = Session["user_first_name"].ToString()+" " + Session["user_last_name"].ToString();
                    string id = Session["user_id"].ToString();
                    txt_FirstName.Text = Session["user_first_name"].ToString();
                    txt_LastName.Text = Session["user_last_name"].ToString();
                    txt_email.Text = Session["name"].ToString();
                    //txt_oldpass.Text = Session["password"].ToString();



                }
            }

        }
        protected void btn_updateInfo_Click(object sender, EventArgs e)
        {

            cn.Open();

            string id = Session["user_id"].ToString();

            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[users] SET first_name = '" + txt_FirstName.Text + "', last_name= '" + txt_LastName.Text + "', email='" + txt_email.Text + "' WHERE userID = '" + id + "';", cn);
            cmd.ExecuteNonQuery();

            SqlCommand cm = new SqlCommand("select * from [dbo].[users] where email='" + txt_email.Text + "'", cn);
            SqlDataReader sd = cm.ExecuteReader();

            sd.Read();
            Session["user_first_name"] = sd["first_name"];
            Session["user_last_name"] = sd["last_name"];
            Session["name"] = sd["email"];


            txt_FirstName.Text = Session["user_first_name"].ToString();
            txt_LastName.Text = Session["user_last_name"].ToString();
            Label1.Text = Session["user_first_name"].ToString() + " " + Session["user_last_name"].ToString(); ;



            Response.Write("<script>alert ('updated Successfully') </script>");

            cn.Close();

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }

        protected void btn_updatepass_Click(object sender, EventArgs e)
        {
            cn.Open();

            string id = Session["user_id"].ToString();
            SqlCommand cm = new SqlCommand("select * from [dbo].[users] where userID='" + id + "' ", cn);
            SqlDataReader sdr = cm.ExecuteReader();



            sdr.Read();
            if (sdr.HasRows == true)
            {

                if (VerifyHashedPassword(txt_oldpass.Text, sdr["password"].ToString()))
                {
                    cn.Close();
                    cn.Open();

                    SqlCommand cd = new SqlCommand("UPDATE [dbo].[users] SET password =  @HashedPassword WHERE userID = '" + id + "' ", cn);
                    cd.Parameters.AddWithValue("@HashedPassword",
                    HashPassword(txt_newpass.Text));
                    cd.ExecuteNonQuery();

                    Response.Write("<script>alert ('updated Successfully') </script>");
                    txt_newpass.Text = txt_oldpass.Text = null;

                    cn.Close();
                }
                else
                {

                    Response.Write("<script>alert('wrong password')</script>");


                }
            }
        }


        protected void btn_cancelpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }

        private bool VerifyHashedPassword(string password, string
               hashedPassword)
        {
            string hashedInput = HashPassword(password);
            return StringComparer.OrdinalIgnoreCase.Compare(hashedInput,
              hashedPassword) == 0;
        }
        private string HashPassword(string password)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(password);
            using (var hash = System.Security.Cryptography.SHA256.Create())
            {
                byte[] hashedBytes = hash.ComputeHash(bytes);
                return BitConverter.ToString(hashedBytes).Replace("-",
                "").ToLower();
            }
        }
    }
}