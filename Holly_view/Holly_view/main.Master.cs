using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holly_view
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                signin_btn.Visible = false;
                signup_nav.Visible = false;
                user_nav.Visible = true;
                watchlist_nav.Visible = true;
                logout_nav.Visible = true;
                user_nav.Text = Session["user_first_name"].ToString();
            }
            else
            {
                user_nav.Visible = false;
                logout_nav.Visible = false;
                signin_btn.Visible = true;
                signup_nav.Visible = true;
                watchlist_nav.Visible = false;
            }
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session["user_first_name"] = null;
            Session["user_last_name"] = null;
            Session["user_last_name"] = null;
            Session["user_id"] = null;
            Response.Redirect("signin.aspx");
        }
        
        protected void user_nav_click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx?" + Session["user_first_name"] + Session["user_last_name"]);
        }

        protected void search_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx?search="+ search_box.Text);
        }

    }
}