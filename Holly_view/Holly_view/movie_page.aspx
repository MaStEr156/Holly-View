<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="movie_page.aspx.cs" Inherits="Holly_view.movie_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" runat="server">
    <title id="page_title" runat = server></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="own_style" runat="server">
    <link rel="stylesheet" href="css/Filmm.css">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="shortcut icon" href="img/logo.png"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    
    <div class="contentcontainer">

            <div class="big_cont">
                <!--movie text-->
                <span class="movietext">
                    <h2 ><asp:Label ID="movie_title_movie_page" runat="server" Text="Label"></asp:Label></h2> 
                </span>
            
           <!--Rating-->
                <span class="rating">
                    <i class='bx bxs-star'></i>
                    <span class="rat">
                        <asp:Label ID="movie_rating" runat="server"></asp:Label>
                    </span>
                </span>
            </div>
            
            
            <div class="genres">
                <span>
                    <asp:Label ID="movie_genre1" runat="server" Text="Label"></asp:Label>
                </span>
                <span>
                    <asp:Label ID="movie_genre2" runat="server" Text="Label"></asp:Label>
                </span>
                <span>
                    <asp:Label ID="movie_genre3" runat="server" Text="Label"></asp:Label>
                </span>
            </div>

            <!--film page -->
            <div class="moviephoto">
                <p class="t">
                    <asp:Label ID="movie_year_movie_page" runat="server"></asp:Label>
                    <asp:Label ID="movie_parent_guide_movie_page" runat="server"></asp:Label>
                    <asp:Label ID="movie_playtime_movie_page" runat="server"></asp:Label>
                    

                </p> 
                <asp:Image ID="poster_movie_page" class="image" style="float: left ; " runat="server" />
                <iframe id="trailer_movie_page" runat="server"  width="800" height="428.3" style="margin-top: 31.5px"  src="https://www.youtube-nocookie.com/embed/D9YZw_X5UzQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            
            </div>
            <br />
            <asp:Button ID="button_before" class="button1" runat="server" Text="Add To Watchlist" OnClick="button_before_Click" />
            <asp:Button ID="button_after" class="button2" runat="server" Text="Added Succesfully ✔" OnClick="button_after_Click" />

            <br />
            <br />

            <!--about-->        
            <div class="about">
                <h2>About</h2>
                <p>
                    <asp:Label ID="movie_story" runat="server"></asp:Label>
                </p>
            </div>

                <br>

                <!--cast-->
                <div class="castheading">
                    <h2>Movie Cast</h2>
                </div>

                
                    <div class="cast">
                        <div class="castbox">
                            <asp:Image ID="actor1_img"  runat="server" />
                            <span class="casttitle">
                                <asp:Label ID="actor1_name" runat="server"></asp:Label>
                            </span>
                        </div>
                        <div class="castbox">
                            <asp:Image ID="actor2_img" runat="server" />
                            <span class="casttitle">
                                <asp:Label ID="actor2_name" runat="server"></asp:Label>
                            </span>
                        </div>
                        <div class="castbox">
                            <asp:Image ID="actor3_img" runat="server" />
                            <span class="casttitle">
                                <asp:Label ID="actor3_name" runat="server"></asp:Label>
                            </span>
                        </div>
                        <div class="castbox">
                            <asp:Image ID="actor4_img" runat="server" />
                            <span class="casttitle">
                                <asp:Label ID="actor4_name" runat="server"></asp:Label>
                            </span>
                        </div>
                    </div>

                    <br>

                    <!--nominations-->
                    <div class="nominations">
                        <h2> Nominations and Awards: </h2>
                        <p>
                            <asp:Label ID="movie_nom_awa" runat="server"></asp:Label>
                        </p>
                    </div>

                    <br>

                    <!--trivia-->
                    <div class="trivia">
                        <h2> Trivia</h2>
                        <p>
                            <asp:Label ID="movie_trivia" runat="server"></asp:Label>
                        </p>
                        </div>
                    <div class="trivia">
                        <asp:LinkButton ID="user_reviews_label" runat="server" OnClick="user_reviews_label_Click"><h2 style="margin-top:20px;">User Reviews</h2></asp:LinkButton>
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
                        <div class="see_more">
                            <asp:LinkButton ID="see_more" runat="server" OnClick="see_more_Click" >See more 🡆</asp:LinkButton>
                        </div>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceReviews" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>"></asp:SqlDataSource>
                        <div class="add_review">
                            <h3>Add a Review</h3>
                            <div class="custom-select" style="width:200px;">
                                <asp:DropDownList ID="rating_dropdown" runat="server">
                                    <asp:ListItem Value="">Choose Rating</asp:ListItem>  
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:TextBox Class="review_box" placeholder="Write a review" ID="review_box" TextMode="MultiLine" Rows="8" Columns="110" runat="server"></asp:TextBox>
                            <div class="submit_review">
                                <asp:Button ID="submit_review" runat="server" Text="Submit Review" OnClick="submit_review_Click" />
                            </div>
                        </div>
                    </div>

    </div>     
    <!-- More Like This SECTION -->
    <div class="section" id="More_Like_This_section">
        <div class="container">
            <div class="section-header">
                More Like This
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource1" ID="More_Like_This" OnItemCommand="Movie_Click">
                    <ItemTemplate>
                <asp:LinkButton ID="movie_hylink" class="movie-item" runat="server" CommandName="Click_ID" CommandArgument='<%# Eval("id") %>'>
                    <img src='<%# Eval("poster") %>' alt='<%# Eval("name") %>'>
                    <div class="movie-item-content">
                        <div class="movie-item-title">
                            <asp:Label ID="movie_name" runat="server"><%# Eval("name") %></asp:Label>
                        </div>
                        <div class="movie-infos">
                            <div class="movie-info">
                                <i class="bx bxs-star"></i>
                                <span><%# Eval("rating") %></span>
                            </div>
                            <div class="movie-info">
                                <i class="bx bxs-time"></i>
                                <span><%# Eval("playtime") %></span>
                            </div>
                            <div class="movie-info">
                                <span><%# Eval("year")%></span>
                            </div>
                            <div class="movie-info">
                                <span><%# Eval("parent_guide") %></span>
                            </div>
                        </div>
                    </div>
                </asp:LinkButton>
                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" ProviderName="<%$
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <!-- END Drama SECTION -->

 <!-- -------------------------------------------------------------------------------------------------------------------------------------------- -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="own_script" runat="server">
</asp:Content>
