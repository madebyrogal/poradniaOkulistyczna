$(document).ready(function () {
    toogleMenu();
    toogleDisease();
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