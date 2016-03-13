$(document).ready(function () {
    toogleMenu();
});

$(window).resize(function () {
    
});

function toogleMenu() {
    $('#mobile-menu').on('click', function () {
        $('#menu').toggleClass('in');
    });
}