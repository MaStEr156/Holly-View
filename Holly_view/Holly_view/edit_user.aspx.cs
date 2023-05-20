using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace Holly_view
{
    public partial class edit_user : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Write("<script>alert('login first')</script>");
                Response.Redirect("signin.aspx");
            }
            else
            {


                Label2.Text = Session["name"].ToString();
                cn = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
            }

        }
        protected void btn_save_Click(object sender, EventArgs e)
        {
            cn.Open();

            // Email is not found in the database, insert the new user
            SqlCommand submit = new SqlCommand("INSERT INTO users (first_name, last_name, email, password)" +
            " VALUES (@FirstName, @LastName, @Email, @HashedPassword);", cn);

            submit.Parameters.AddWithValue("@FirstName", txt_FirstName.Text);
            submit.Parameters.AddWithValue("@LastName", txt_LastName.Text);
            submit.Parameters.AddWithValue("@Email", txt_email.Text);
            submit.Parameters.AddWithValue("@HashedPassword", HashPassword(txt_pass.Text));
            submit.ExecuteNonQuery();

            Response.Write("<script>alert ('Added Successfully') </script>");
            txt_FirstName.Text = txt_LastName.Text = txt_email.Text = txt_pass.Text = null;

            cn.Close();
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

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.Redirect("signin.aspx");
        }
    }
}