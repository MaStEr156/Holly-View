<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Holly_view.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="own_style" runat="server">
    <link rel="shortcut icon" href="img/logo.png"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <div class="section">
        <div class="container">
            <div class="section-header">
                <asp:Label ID="search_results_lbl" runat="server"></asp:Label>
            </div>
            <div class="movies-slide carousel-nav-center owl-carousel">
                <asp:ListView runat="server" DataSourceID="SqlDataSource1" ID="List_Watchlist" OnItemCommand="Movie_Click">
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
                <asp:Label ID="search_empty" runat="server">No Results!</asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="own_script" runat="server">
</asp:Content>
