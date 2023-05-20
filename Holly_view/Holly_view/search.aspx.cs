using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class search : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string search = Request.QueryString["search"];
            search_results_lbl.Text = "Search Results for '" + search + "'";

            con = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");

            con.Open();
            SqlCommand checkSearch = new SqlCommand("SELECT COUNT(*) FROM movies WHERE name LIKE '%' + @search + '%'", con);
            checkSearch.Parameters.AddWithValue("@search", search);
            int count = Convert.ToInt32(checkSearch.ExecuteScalar());
            con.Close();

            if (count == 0)
            {
                search_empty.Visible = true;
            }
            else
            {
                search_empty.Visible = false;

                SqlDataSource1.SelectCommand = "SELECT * FROM movies WHERE name LIKE '%' + @deceasedSearch + '%' ";
                SqlDataSource1.SelectParameters.Add("deceasedSearch", search);
            }
            

        }
        protected void Movie_Click(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Click_ID")
            {
                Response.Redirect("movie_page.aspx?movie_id=" + e.CommandArgument.ToString() + "");
            }
        }
    }
}