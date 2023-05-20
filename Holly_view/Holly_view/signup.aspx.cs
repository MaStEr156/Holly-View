using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand checkEmail = new SqlCommand("SELECT COUNT(*) FROM users WHERE email=@Email;", con);
            checkEmail.Parameters.AddWithValue("@Email", txt_email.Text);
            int count = Convert.ToInt32(checkEmail.ExecuteScalar());
            if (count > 0)
            {
                // Email already exists, display an error message
                Response.Write("<script>alert('Email is already used!')</script>");
            }
            else
            {
                if(CheckBox1.Checked == true)
                {
                    // Email is not found in the database, insert the new user
                    SqlCommand submit = new SqlCommand("INSERT INTO users (first_name, last_name, email, password)" +
                    " VALUES (@FirstName, @LastName, @Email, @HashedPassword);", con);

                    submit.Parameters.AddWithValue("@FirstName", txt_FirstName.Text);
                    submit.Parameters.AddWithValue("@LastName", txt_LastName.Text);
                    submit.Parameters.AddWithValue("@Email", txt_email.Text);
                    submit.Parameters.AddWithValue("@HashedPassword", HashPassword(txt_pass.Text));
                    submit.ExecuteNonQuery();
                    Response.Redirect("signin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('You must agree to Terms of Service & Privacy Policy')</script>");
                }
                
            }


            con.Close();
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