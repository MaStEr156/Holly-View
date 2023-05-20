using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace Holly_view
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Movie_Click(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Click_ID")
            {
                Response.Redirect("movie_page.aspx?movie_id="+ e.CommandArgument.ToString()+"");
            }
        }
    }
}