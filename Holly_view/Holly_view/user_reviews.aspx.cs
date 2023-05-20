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
    public partial class reviews : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string movie_id = Request.QueryString["movie_id"];
            SqlDataSourceReviews.SelectCommand = "SELECT review_text, rating, DATEDIFF(DAY, time_stamp, GETDATE()) AS days_since_added, first_name, last_name FROM reviews JOIN users ON user_id = userID WHERE movie_id = @movie_id;";
            SqlDataSourceReviews.SelectParameters.Add("movie_id", movie_id);
            empty_reviews.Visible = false;

            con = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
            con.Open();

            SqlCommand checkReviewsCount = new SqlCommand("SELECT COUNT(*) FROM reviews where movie_id = @movie_id", con);
            checkReviewsCount.Parameters.AddWithValue("@movie_id", movie_id);
            int countReviews = Convert.ToInt32(checkReviewsCount.ExecuteScalar());
            if (countReviews == 0)
            {
                empty_reviews.Visible = true;
            }

            con.Close();
        }

    }
}