$(document).ready(function () {
    toogleMenu();
});

$(window).resize(function () {
    
});

function toogleMenu() {
    $('#mobileMenu').on('click', function () {
        $('#menu').toggleClass('in');
    });
}