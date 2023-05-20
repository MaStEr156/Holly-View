<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="user_reviews.aspx.cs" Inherits="Holly_view.reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="own_style" runat="server">
    <link rel="stylesheet" href="css/review_style.css" />
    <link rel="shortcut icon" href="img/logo.png"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <div class="section">
        <div class="container">
            <div class="section-header">
                User Ratings
            </div>
            <asp:ListView runat="server" DataSourceID="SqlDataSourceReviews" ID="ctl00">
                <ItemTemplate>
                    <div class="comment-session">
     <div class="post-comment">

        <div class="list">
          <div class="user">
    
              <div class="user-image"><img src="img/pic.jpg" alt="image"></div> 
              <div class="user-meta">
    
                 <div class="user_name">
                     <%#Eval("first_name") + " " + Eval("last_name") %>
                     <i class='bx bxs-star'></i>
                     <asp:Label ID="rating_number" class="rating_number" runat="server"> <%# Eval("rating") %></asp:Label>
                 </div>
    
                 <div class="day"><%# Eval("days_since_added")%> days ago</div>
    
               </div>
    
          </div>
    
           <div class="comment-post"> <%# Eval("review_text") %> </div>
    
            </div>
    
        </div>
    
    </div>
                    </ItemTemplate>
            </asp:ListView>
            <asp:Label ID="empty_reviews" runat="server" Text="There are no reviews for this movie yet"></asp:Label>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceReviews" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>"></asp:SqlDataSource>
                <!--<asp:Label ID="ratings_empty" runat="server">There is no reviews yet!</asp:Label> -->
                
            </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="own_script" runat="server">
</asp:Content>
