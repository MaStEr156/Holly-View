using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class watchlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con;
            if (Session["user_id"] == null)
            {
                Response.Redirect("signin.aspx");
            }

            string movie_id = Request.QueryString["movie_id"];
            con = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
            con.Open();
            SqlCommand checkWatchlist = new SqlCommand("SELECT COUNT(*) FROM watchlist WHERE user_id = @user_id", con);
            checkWatchlist.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
            int count = Convert.ToInt32(checkWatchlist.ExecuteScalar());
            if(count == 0)
            {
                watchlist_empty.Visible = true;
            }
            else
            {
                watchlist_empty.Visible = false;
            }
            con.Close();

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