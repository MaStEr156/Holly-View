<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Holly_view.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" runat="server">
    <title>Holly View</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="own_style" runat="server">
    <link rel="shortcut icon" href="img/logo.png"/>
    <link rel="stylesheet" href="css/anistyle.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <!-- Start Section Loading-->

        <section class="loading-overlay">
            <div class="wrapper">
                <div class="focus">
                  Holly View
                </div>
                <div class="mask">
                  <div class="text">Holly View</div>
                </div>
            </div>
        </section>
    
        <!-- End Section Loading-->

    <!-- HERO SECTION -->
    <div class="hero-section">
        <!-- HERO SLIDE -->
        <div class="hero-slide">
            <div class="owl-carousel carousel-nav-center" id="hero-carousel">
                 <!-- SLIDE ITEM -->
                <div class="hero-slide-item">
                    <img src="./images/posters/spiderman-across-the-spider-verse-wide-2.jpg" alt="spiderman across the spider verse poster">
                    <div class="overlay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wraper">
                            <div class="item-content-title top-down">
                                Spider-Man: Across the Spider-Verse
                            </div>
                            <div class="movie-infos top-down delay-2">
                                <div class="movie-info">
                                    <i class="bx bxs-star"></i>
                                    <span>Coming Soon</span>
                                </div>
                                <div class="movie-info">
                                    <span>2023</span>
                                </div>
                                <div class="movie-info">
                                    <span>PG-13</span>
                                </div>
                            </div>
                            <div class="item-content-description top-down delay-4">
                                Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.
                            </div>
                            <div class="item-action top-down delay-6">
                                <a href="https://www.youtube.com/watch?v=cqGjhVJWtEg" class="btn btn-hover" target="_blank">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Watch Trailer</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END SLIDE ITEM -->

                <!-- SLIDE ITEM -->
                <div class="hero-slide-item">
                    <img src="./images/posters/John-Wick-Wide-3.jpg" alt="John Wich Chapter 4 Poster">
                    <div class="overlay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wraper">
                            <div class="item-content-title top-down">
                                John Wick: Chapter 4
                            </div>
                            <div class="movie-infos top-down delay-2">
                                <div class="movie-info">
                                    <i class="bx bxs-star"></i>
                                    <span>8.2</span>
                                </div>
                                <div class="movie-info">
                                    <i class="bx bxs-time"></i>
                                    <span>2h 49m</span>
                                </div>
                                <div class="movie-info">
                                    <span>2023</span>
                                </div>
                                <div class="movie-info">
                                    <span>R</span>
                                </div>
                            </div>
                            <div class="item-content-description top-down delay-4">
                                John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.
                            </div>
                            <div class="item-action top-down delay-6">
                                <a href="https://www.youtube.com/watch?v=qEVUtrk8_B4" class="btn btn-hover" target="_blank">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Watch Trailer</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END SLIDE ITEM -->

                 <!-- SLIDE ITEM -->
                <div class="hero-slide-item">
                    <img src="./images/posters/oppenheimer-wide.jpg" alt="oppenheimer poster">
                    <div class="overlay"></div>
                    <div class="hero-slide-item-content">
                        <div class="item-content-wraper">
                            <div class="item-content-title top-down">
                                Oppenheimer
                            </div>
                            <div class="movie-infos top-down delay-2">
                                <div class="movie-info">
                                    <i class="bx bxs-star"></i>
                                    <span>Coming Soon</span>
                                </div>
                                <div class="movie-info">
                                    <span>2023</span>
                                </div>
                                <div class="movie-info">
                                    <span>R</span>
                                </div>
                            </div>
                            <div class="item-content-description top-down delay-4">
                                The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.
                            </div>
                            <div class="item-action top-down delay-6">
                                <a href="https://www.youtube.com/watch?v=bK6ldnjE3Y0" class="btn btn-hover" target="_blank">
                                    <i class="bx bxs-right-arrow"></i>
                                    <span>Watch Trailer</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END SLIDE ITEM -->

            </div>
        </div>
        <!-- END HERO SLIDE -->
        
    </div>
    <!-- END HERO SECTION -->

    <!-- Drama SECTION -->
    <div class="section" id="Drama_section">
        <div class="container">
            <div class="section-header">
                Drama
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource1" ID="List_Drama" OnItemCommand="Movie_Click">
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
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [movies] where genre1='Drama' or genre2='Drama' or genre3='Drama' ORDER BY rating DESC">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <!-- END Drama SECTION -->


    <!-- Adventure SECTION -->
   
     <div class="section" id="Adventure_section">
        <div class="container">
            <div class="section-header">
                Adventure
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource3" ID="List_Adventure" OnItemCommand="Movie_Click">
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
                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" ProviderName="<%$
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [movies] where genre1='Adventure' or genre2='Adventure' or genre3='Adventure'">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>           

    <!-- END Adventure SECTION -->
    <!-- Comedy SECTION -->
   
     <div class="section" id="Comedy_section">
        <div class="container">
            <div class="section-header">
                Comedy
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource4" ID="List_comedy" OnItemCommand="Movie_Click">
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
                <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" ProviderName="<%$
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [movies] where genre1='Comedy' or genre2='Comedy' or genre3='Comedy' ORDER BY year DESC">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>           

    <!-- END Comedy SECTION -->
    <!-- Comedy SECTION -->
   
     <div class="section" id="Comedy_section">
        <div class="container">
            <div class="section-header">
                Action
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource6" ID="List_ِAction" OnItemCommand="Movie_Click">
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
                <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" ProviderName="<%$
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [movies] where genre1='Action' or genre2='Action' or genre3='Action'">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>           

    <!-- END Comedy SECTION -->
     <!-- Animation SECTION -->
    <div class="section" id="Animation_section">
        <div class="container">
            <div class="section-header">
                Aniamtion
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource2" ID="List_Animation" OnItemCommand="Movie_Click">
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
                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:Holly_ViewConnectionString %>" ProviderName="<%$
                    ConnectionStrings:Holly_ViewConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [movies] where genre1='Animation' or genre2='Animation' or genre3='Animation'">

                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <!-- END Animation SECTION -->

    <!-- SPECIAL MOVIE SECTION -->
    <div class="section">
        <div class="hero-slide-item">
            <img src="./images/transformer-banner.jpg" alt="">
            <div class="overlay"></div>
            <div class="hero-slide-item-content">
                <div class="item-content-wraper">
                    <div class="item-content-title">
                        Transformer
                    </div>
                    <div class="movie-infos">
                        <div class="movie-info">
                            <i class="bx bxs-star"></i>
                            <span>9.5</span>
                        </div>
                        <div class="movie-info">
                            <i class="bx bxs-time"></i>
                            <span>120 mins</span>
                        </div>
                        <div class="movie-info">
                            <span>HD</span>
                        </div>
                        <div class="movie-info">
                            <span>16+</span>
                        </div>
                    </div>
                    <div class="item-content-description">
                        An ancient struggle between two Cybertronian races, the heroic Autobots and the evil Decepticons, comes to Earth, with a clue to the ultimate power held by a teenager.             

                    </div>
                    <div class="item-action">
                        <a href="https://www.youtube.com/watch?v=WWWDskI46Js" class="btn btn-hover">
                            <i class="bx bxs-right-arrow"></i>
                            <span>Watch Trailer</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SPECIAL MOVIE SECTION -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="own_script" runat="server">
</asp:Content>
