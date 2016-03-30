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
    $('.disease-list > li .name').click(function (e) {
        $(this).next('.disease-content').slideToggle();
    });
    
    $('.menu-disease li').click(function(){
        var disease = $(this).data('disease');
        
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.disease-content').find('.more-disease').removeClass('active');
        $('.'+disease).addClass('active');
        
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