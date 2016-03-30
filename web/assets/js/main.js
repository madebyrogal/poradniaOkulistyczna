$(document).ready(function () {
    toogleMenu();
    toogleDisease();
    disease();
});

$(window).resize(function () {
    
});

function toogleMenu() {
    $('#mobile-menu').on('click', function () {
        $('#menu').toggleClass('in');
    });
}

function toogleDisease(){
    $('.disease .button-ext').click(function(){
        var disease = $(this).closest('.disease');
        disease.toggleClass('not-extend');
    });
}

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