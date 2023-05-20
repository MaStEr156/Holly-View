<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Holly_view.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="own_style" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <link rel="stylesheet" href="css/stylesheet.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_content" runat="server">
    <section class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="card swiper-slide">
                <div class="card-image">
                    <img src="images/us/ahmed.jpg" alt="card image">
                </div>
<div class="card-content">
    <span class="cardname">Ahmed Abdelrahim</span>
    <span class="cardtitle"> Backend Developer</span>
    
        
            <div class="social-list">  <a href="#" class="social-item"><i class="fa-brands fa-facebook"> </i></a>
           
            <a href="#" class="social-item">
                <i class="fa-brands fa-instagram"></i>
            </a>
            <a href="#" class="social-item">
            
                <i class="fa-brands fa-github"></i>
            </a>
            <a href="#" class="social-item">
            
                <i class="fa-brands fa-linkedin"></i>
            </a>
                </div>
  
</div>
            </div>
         
                    <div class="card swiper-slide">
                        <div class="card-image">
                            <img src="images/us/maram1.jpg" alt="card image">
                        </div>
        <div class="card-content">
            <span class="cardname">Maram Mohamed</span>
            <span class="cardtitle"> Frontend Developer</span>
            <div class="social-list">  <a href="#" class="social-item"><i class="fa-brands fa-facebook"> </i></a>
           
                <a href="#" class="social-item">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-github"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-linkedin"></i>
                </a>
                    </div>
            
            
        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="card-image">
                            <img src="images/us/soha1.jpg" alt="card image">
                        </div>
        <div class="card-content">
            <span class="cardname">Soha Ahmed</span>
            <span class="cardtitle"> Frontend Developer</span>
            <div class="social-list">  <a href="#" class="social-item"><i class="fa-brands fa-facebook"> </i></a>
           
                <a href="#" class="social-item">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-github"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-linkedin"></i>
                </a>
                    </div>
            
            
        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="card-image">
                            <img src="images/us/khaled.jpg" alt="card image">
                        </div>
        <div class="card-content">
            <span class="cardname">Khaled Abdelhafez</span>
            <span class="cardtitle"> Frontend Developer</span>
            <div class="social-list">  <a href="#" class="social-item"><i class="fa-brands fa-facebook"> </i></a>
           
                <a href="#" class="social-item">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-github"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-linkedin"></i>
                </a>
                    </div>
            
            
        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="card-image">
                            <img src="images/us/asmaa1.jpg" alt="card image">
                        </div>
        <div class="card-content">
            <span class="cardname">Asmaa Ayad</span>
            <span class="cardtitle"> Backend Developer</span>
            <div class="social-list">  <a href="#" class="social-item"><i class="fa-brands fa-facebook"> </i></a>
           
                <a href="#" class="social-item">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-github"></i>
                </a>
                <a href="#" class="social-item">
                
                    <i class="fa-brands fa-linkedin"></i>
                </a>
                    </div>
            
            
        </div>
                    </div>
               
        </div>
    </section>
  
    <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

     <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: "auto",
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
      },
    });
  </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="own_script" runat="server">
</asp:Content>
