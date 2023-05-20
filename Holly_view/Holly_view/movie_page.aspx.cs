using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class movie_page : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-F8061GP;Initial Catalog=Holly_View;Integrated Security=True");
            con.Open();

            empty_reviews.Visible = false;
            string movie_id = Request.QueryString["movie_id"];

            SqlCommand checkReviewsCount = new SqlCommand("SELECT COUNT(*) FROM reviews where movie_id = @movie_id", con);
            checkReviewsCount.Parameters.AddWithValue("@movie_id", movie_id);
            int countReviews = Convert.ToInt32(checkReviewsCount.ExecuteScalar());
            if(countReviews == 0)
            {
                empty_reviews.Visible = true;
            }


            SqlDataSourceReviews.SelectCommand = "SELECT TOP 3 review_text, rating, DATEDIFF(DAY, time_stamp, GETDATE()) AS days_since_added, first_name, last_name FROM reviews JOIN users ON user_id = userID WHERE movie_id = @movie_id;";
            SqlDataSourceReviews.SelectParameters.Add("movie_id", movie_id);

            
            if (Session["user_id"] != null)
            {
                SqlCommand checkWatchlist = new SqlCommand("SELECT COUNT(*) FROM watchlist WHERE user_id = @user_id and movie_id = @movie_id;", con);
                checkWatchlist.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
                checkWatchlist.Parameters.AddWithValue("@movie_id", movie_id);
                int countWatchlist = Convert.ToInt32(checkWatchlist.ExecuteScalar());
                if (countWatchlist > 0)
                {
                    button_before.Visible = false;
                    button_after.Visible = true;
                }
                else
                {
                    button_before.Visible = true;
                    button_after.Visible = false;
                }
            }
            else
            {
                button_before.Visible = true;
                button_after.Visible = false;
            }
            

            SqlCommand cmd_name = new SqlCommand("select name from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_playtime = new SqlCommand("select playtime from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_year = new SqlCommand("select year from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_parent_guide = new SqlCommand("select parent_guide from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_trailer = new SqlCommand("select trailer_link from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor1 = new SqlCommand("select actor1 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor2 = new SqlCommand("select actor2 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor3 = new SqlCommand("select actor3 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor4 = new SqlCommand("select actor4 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_story = new SqlCommand("select story from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_nom_awa = new SqlCommand("select nom_awa from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_trivia = new SqlCommand("select trivia from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_rating = new SqlCommand("select rating from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_genre1 = new SqlCommand("select genre1 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_genre2 = new SqlCommand("select genre2 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_genre3 = new SqlCommand("select genre3 from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_poster_img = new SqlCommand("select poster from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor1_img = new SqlCommand("select actor1_img from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor2_img = new SqlCommand("select actor2_img from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor3_img = new SqlCommand("select actor3_img from movies where id ='" + movie_id + "'", con);
            SqlCommand cmd_actor4_img = new SqlCommand("select actor4_img from movies where id ='" + movie_id + "'", con);


            SqlDataSource1.SelectCommand = "SELECT * from movies WHERE genre1 = @genre1 or genre1 = @genre2" +
                " or genre2 = @genre1 or genre2 = @genre2" +
                " or genre3 = @genre1 or genre3 = @genre2 ORDER BY rating DESC";
            SqlDataSource1.SelectParameters.Add("genre1", cmd_genre1.ExecuteScalar().ToString());
            SqlDataSource1.SelectParameters.Add("genre2", cmd_genre2.ExecuteScalar().ToString());


            //Get poster image

            //Retrieve and Show poster image in pposter image tag from database
            poster_movie_page.ImageUrl = "./"+cmd_poster_img.ExecuteScalar().ToString();

            //Retrieve and Show actors images in actor image tags from database
            actor1_img.ImageUrl = "./"+cmd_actor1_img.ExecuteScalar().ToString();
                       
            actor2_img.ImageUrl = "./"+cmd_actor2_img.ExecuteScalar().ToString();

            actor3_img.ImageUrl = "./"+cmd_actor3_img.ExecuteScalar().ToString();

            actor4_img.ImageUrl = "./"+cmd_actor4_img.ExecuteScalar().ToString();


            movie_title_movie_page.Text = cmd_name.ExecuteScalar().ToString();
            movie_playtime_movie_page.Text = cmd_playtime.ExecuteScalar().ToString();
            movie_year_movie_page.Text = cmd_year.ExecuteScalar().ToString()+"  .  ";
            movie_parent_guide_movie_page.Text = cmd_parent_guide.ExecuteScalar().ToString()+"  .  ";
            actor1_name.Text = cmd_actor1.ExecuteScalar().ToString();
            actor2_name.Text = cmd_actor2.ExecuteScalar().ToString();
            actor3_name.Text = cmd_actor3.ExecuteScalar().ToString();
            actor4_name.Text = cmd_actor4.ExecuteScalar().ToString();
            movie_story.Text = cmd_story.ExecuteScalar().ToString();
            movie_nom_awa.Text = cmd_nom_awa.ExecuteScalar().ToString();
            movie_trivia.Text = cmd_trivia.ExecuteScalar().ToString();
            movie_rating.Text = cmd_rating.ExecuteScalar().ToString();
            movie_genre1.Text = cmd_genre1.ExecuteScalar().ToString();
            movie_genre2.Text = cmd_genre2.ExecuteScalar().ToString();
            movie_genre3.Text = cmd_genre3.ExecuteScalar().ToString();

            poster_movie_page.Attributes["alt"] = cmd_name.ExecuteScalar().ToString() + " poster";
            trailer_movie_page.Attributes["src"] = cmd_trailer.ExecuteScalar().ToString();

            page_title.InnerText = cmd_name.ExecuteScalar().ToString();


            con.Close();
        }

        protected void button_before_Click(object sender, EventArgs e)
        {
            if (Session["user_id"]!= null)
            {
                string movie_id = Request.QueryString["movie_id"];
                con.Open();

                SqlCommand insert_movie = new SqlCommand("INSERT INTO watchlist(movie_id, user_id) VALUES(@movie_id, @user_id);", con);
                insert_movie.Parameters.AddWithValue("@movie_id", movie_id);
                insert_movie.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
                insert_movie.ExecuteNonQuery();
                con.Close();

                button_before.Visible = false;
                button_after.Visible = true;
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
            
        }

        protected void button_after_Click(object sender, EventArgs e)
        {
            string movie_id = Request.QueryString["movie_id"];
            con.Open();

            SqlCommand delete_movie = new SqlCommand("DELETE FROM watchlist WHERE user_id = @user_id and movie_id = @movie_id", con);
            delete_movie.Parameters.AddWithValue("@movie_id", movie_id);
            delete_movie.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
            delete_movie.ExecuteNonQuery();
            con.Close();

            button_before.Visible = true;
            button_after.Visible = false;
        }

        protected void user_reviews_label_Click(object sender, EventArgs e)
        {
            string movie_id = Request.QueryString["movie_id"];
            Response.Redirect("user_reviews.aspx?movie_id="+movie_id);
        }

        protected void submit_review_Click(object sender, EventArgs e)
        {
            string movie_id = Request.QueryString["movie_id"];
            if (rating_dropdown.SelectedValue == "")
            {
                Response.Write("<script>alert('Please Choose Rating!')</script>");
            }
            else if(review_box.Text == "")
            {
                Response.Write("<script>alert('Please Write a Review!')</script>");
            }
            else if(Session["user_id"] == null)
            {
                Response.Redirect("signin.aspx");
            }
            else
            {
                con.Open();
                SqlCommand checkReview = new SqlCommand("SELECT COUNT(*) FROM reviews where user_id = @user_id and movie_id = @movie_id", con);
                checkReview.Parameters.AddWithValue("@user_id", Session["user_id"]);
                checkReview.Parameters.AddWithValue("@movie_id", movie_id);
                int countReview = Convert.ToInt32(checkReview.ExecuteScalar());
                if(countReview > 0)
                {
                    Response.Write("<script>alert('You Already Submitted a Review!')</script>");
                }
                else
                {
                    

                    SqlCommand review_insert = new SqlCommand("INSERT INTO reviews (movie_id, user_id, review_text, rating) VALUES(@movie_id, @user_id, @review_text, @rating)", con);
                    review_insert.Parameters.AddWithValue("@movie_id", movie_id);
                    review_insert.Parameters.AddWithValue("@user_id", Session["user_id"]);
                    review_insert.Parameters.AddWithValue("@review_text", review_box.Text.ToString());
                    review_insert.Parameters.AddWithValue("@rating", rating_dropdown.SelectedValue.ToString());

                    review_insert.ExecuteNonQuery();
                }

                con.Close();
            }
        }

        protected void see_more_Click(object sender, EventArgs e)
        {
            string movie_id = Request.QueryString["movie_id"];
            Response.Redirect("user_reviews.aspx?movie_id=" + movie_id);
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