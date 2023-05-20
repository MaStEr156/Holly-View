$(document).ready(() => {
    $('#hamburger-menu').click(() => {
        $('#hamburger-menu').toggleClass('active')
        $('#nav-menu').toggleClass('active')
    })

    // setting owl carousel

    let navText = ["<i class='bx bx-chevron-left'></i>", "<i class='bx bx-chevron-right'></i>"]

    $('#hero-carousel').owlCarousel({
        items: 1,
        dots: false,
        loop: true,
        nav:true,
        navText: navText,
        autoplay: true,
        autoplayHoverPause: true
    })

    $('.movies-slide').owlCarousel({
        items: 2,
        dots: false,
        nav:true,
        navText: navText,
        margin: 15,
        responsive: {
            500: {
                items: 2
            },
            1280: {
                items: 4
            },
            1600: {
                items: 6
            }
        }
    })
})

// go to section

  function goTomovies_section() {
    var element = document.getElementById("movies_section");
    element.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
  }

  function goToupcoming_section() {
    var element = document.getElementById("upcoming_section");
    element.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
  }
  
  function goTocartoons_section() {
    var element = document.getElementById("cartoons_section");
    element.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
  }
// Loading Screen

$(window).on("load", function () {

    $(".wrapper").fadeOut(500, "linear",
        function () {
            $(".loading-overlay").fadeOut(400);
        });


});