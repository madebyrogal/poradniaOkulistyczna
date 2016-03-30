$(document).ready(function () {
    toogleMenu();
    toogleDisease();
    disease();
    toogleMedicine();
});

$(window).resize(function () {
    
});

function toogleMenu() {
    $('#mobile-menu').on('click', function () {
        $('#menu').toggleClass('in');
    });
}

//Toogle disease on search page
function toogleDisease(){
    $('.disease .button-ext').click(function(){
        var disease = $(this).closest('.disease');
        disease.toggleClass('not-extend');
    });
}

//Toogle disease on disease page
function disease() {
    $('.disease-list li').click(function (e) {
        e.preventDefault();
        if ($(this).hasClass('active')) {
            $(this).next('.disease-content').slideUp();
            $(this).removeClass('active');
        } else {
            $('.disease-list li .disease-content').slideUp();
            $('.disease-list li').removeClass('active');
            $(this).addClass('active');
            $(this).next('.disease-content').slideDown();
        }
    });
}

//Toogle medicine on medicine page
function toogleMedicine(){
    $('.list-box li h2').click(function(){
        $(this).next().slideToggle();
    });
    
    $('.medicine-list li').click(function(){
        var medicine = $(this).data('medicine');
        
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.row').find('.border').removeClass('active');
        $('.'+medicine).addClass('active');
        
    });
}