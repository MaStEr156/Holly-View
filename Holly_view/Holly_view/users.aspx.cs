using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class users : System.Web.UI.Page
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
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.Redirect("signin.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Redirect("users.aspx");
            }

            else
            {

                cn.Open();


                ListView1.DataSourceID = null;
                SqlCommand cm = new SqlCommand("SELECT * FROM users WHERE first_name LIKE '%' + @deceasedFirstName + '%' OR last_name LIKE '%' + @deceasedFirstName + '%' ", cn);
                cm.Parameters.Add("@deceasedFirstName", SqlDbType.NVarChar).Value = TextBox1.Text;
                SqlDataReader sdr = cm.ExecuteReader();

                if (sdr.HasRows)
                {
                    ListView1.DataSource = sdr;
                    ListView1.DataBind();
                    cn.Close();
                }

            }
        }
    }
}