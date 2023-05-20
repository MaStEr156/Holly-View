using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;


namespace Holly_view
{
    public partial class add_item : System.Web.UI.Page
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
        protected void btn_publish_Click(object sender, EventArgs e)
        {

            string actors = txt_cast.Text;
            String[] subactor = new String[3];
            subactor = actors.Split(new string[] { "," }, StringSplitOptions.None);


            List<string> l1 = new List<string>();
            foreach (ListItem item in genre.Items)
            {
                if (item.Selected)
                {
                    l1.Add(item.Text);
                }
            }

            cn.Open();


            if (l1.Count == 3 && subactor.Length == 4)
            {
                if (FileUpload.HasFile && FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile && FileUpload4.HasFile)
                {
                    string file_name = FileUpload.PostedFile.FileName;
                    string file_path = "images/posters/" + FileUpload.FileName;
                    FileUpload.PostedFile.SaveAs(Server.MapPath("~/images/posters/") + file_name);


                    string file_name1 = FileUpload1.PostedFile.FileName;
                    string file_path1 = "images/Actors/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/Actors/") + file_name1);

                    string file_name2 = FileUpload2.PostedFile.FileName;
                    string file_path2 = "images/Actors/" + FileUpload2.FileName;
                    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images/Actors/") + file_name2);

                    string file_name3 = FileUpload3.PostedFile.FileName;
                    string file_path3 = "images/Actors/" + FileUpload3.FileName;
                    FileUpload3.PostedFile.SaveAs(Server.MapPath("~/images/Actors/") + file_name3);

                    string file_name4 = FileUpload4.PostedFile.FileName;
                    string file_path4 = "images/Actors/" + FileUpload4.FileName;
                    FileUpload4.PostedFile.SaveAs(Server.MapPath("~/images/Actors/") + file_name4);

                    SqlCommand cmd = new SqlCommand("insert into[dbo].[movies](name,story,actor1,actor2,actor3,actor4,nom_awa,trivia,genre1,genre2,genre3,trailer_link,year,rating,playtime,parent_guide,director,poster,actor1_img,actor2_img,actor3_img,actor4_img)values" +
                    " ( @title , @story ,'" + subactor[0] + "' , '" + subactor[1] + "','" + subactor[2] + "' , '" + subactor[3] + "' , @nominations , @trivia ,'" + l1[0] + "','" + l1[1] + "','" + l1[2] + "' ,@trailer, @year, @rating, @playtime, @parent, @director, '" + file_path + "', '" + file_path1 + "','" + file_path2 + "','" + file_path3 + "','" + file_path4 + "' )", cn);
                    cmd.Parameters.AddWithValue("@title", txt_title.Text);
                    cmd.Parameters.AddWithValue("@story", txt_deccription.Text);
                    cmd.Parameters.AddWithValue("@nominations", txt_nominations.Text);
                    cmd.Parameters.AddWithValue("@trivia", txt_trivia.Text);
                    cmd.Parameters.AddWithValue("@trailer", txt_link.Text);
                    cmd.Parameters.AddWithValue("@year", txt_year.Text);
                    cmd.Parameters.AddWithValue("@rating", txt_rating.Text);
                    cmd.Parameters.AddWithValue("@playtime", txt_playtime.Text);
                    cmd.Parameters.AddWithValue("@parent", txt_parent.Text);
                    cmd.Parameters.AddWithValue("@director", txt_director.Text);

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert ('added Successfully') </script>");
                    genre.Text = txt_title.Text = txt_deccription.Text = txt_cast.Text = txt_nominations.Text = txt_trivia.Text = txt_link.Text = txt_year.Text = txt_rating.Text = txt_playtime.Text = txt_parent.Text = txt_director.Text = null;
                    cn.Close();
                }
                else
                {
                    Response.Write("<script>alert ('add the poster and the photos first') </script>");
                    cn.Close();
                }

            }
            else
            {
                Response.Write("<script>alert ('you must add 4 actors and 3 genres') </script>");
                cn.Close();
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.Redirect("signin.aspx");
        }
    }
}