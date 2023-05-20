$(document).ready(function() {
    "use strict"; 

    /* Menu*/
    $('.header__btn').on('click', function() {
        $(this).toggleClass('header__btn--active');
        $('.header').toggleClass('header--active');
        $('.sidebar').toggleClass('sidebar--active');
    });
    
    /*Modal*/
    $('.open-modal').magnificPopup({
        fixedContentPos: true,
        fixedBgPos: true,
        overflowY: 'auto',
        type: 'inline',
        preloader: false,
        focus: '#username',
        modal: false,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in',
    });

    $('.modal__btn--dismiss').on('click', function(e) {
        e.preventDefault();
        $.magnificPopup.close();
    });

    /*Select2*/
   
    $('#genre').select2({
        placeholder: "Choose genre / genres"
    });

    /* Upload cover*/
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#form__img').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $('#form__img-upload').on('change', function() {
        readURL(this);
    });

    
    /*Scrollbar*/
    var Scrollbar = window.Scrollbar;

    if ($('.sidebar__nav').length) {
        Scrollbar.init(document.querySelector('.sidebar__nav'), {
            damping: 0.1,
            renderByPixels: true,
            alwaysShowTracks: true,
            continuousScrolling: true
        });
    }
 

    if ($('.main__table-wrap').length) {
        Scrollbar.init(document.querySelector('.main__table-wrap'), {
            damping: 0.1,
            renderByPixels: true,
            alwaysShowTracks: true,
            continuousScrolling: true
        });
    }

});