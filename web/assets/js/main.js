$(document).ready(function () {
    toogleMenu();
    toogleDiseaseInSearch();
    toogleDisease();
    toogleMedicine();
    openDiseaseFromLocation();
    clikOnFooterDisease();
    searchAutoComplet();
});

$(window).resize(function () {
    
});

function searchAutoComplet(){
    //Autocomplete
    $('#symptom').keyup(function(){
        var url = $('#symptomURL').val();
        var data = {
            'symptom': $(this).val()
        };
        $.ajax({
            url: url,
            data: data,
            type: 'GET',
            success: function(response){
                var symptoms = response;
                var ulCon = $('.symptomsAutoComplete ul');
                $(ulCon).html('');
                symptoms.forEach(function(elem){
                    $(ulCon).append($('<li>').html(elem.name));
                });
                if(symptoms.length){
                    ulCon.show();
                } else {
                    ulCon.hide();
                }
            }
        });
    });
    
    //Select autocomplete word
    $('.symptomsAutoComplete ul').on('click', 'li', function(){
        var symptom = $(this).html();
        $('#symptom').val(symptom);
        $('.symptomsAutoComplete ul').hide();
    });
    
    $('#symptom').focusout(function(){
        setTimeout(function(){
            $('.symptomsAutoComplete ul').hide()
        }, 200);
    });
}

function toogleMenu() {
    $('#mobile-menu').on('click', function () {
        $('#menu').toggleClass('in');
    });
}

//Toogle disease on search page
function toogleDiseaseInSearch(){
    $('.disease .button-ext').click(function(){
        var disease = $(this).closest('.disease');
        disease.toggleClass('not-extend');
    });
}

//Toogle disease on disease page
function toogleDisease() {
    $('.disease-list > li .name').click(function (e) {
        $(this).toggleClass('active').next('.disease-content').slideToggle();
    });
    
    $('.menu-disease li').click(function(){
        var disease = $(this).data('disease');
        
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.disease-content').find('.more-disease').removeClass('active');
        $('.'+disease).addClass('active');
        
    });
}

//Open disease when referer is from footer menu
function openDiseaseFromLocation(loc){
    //From clickOnFooterDisease()
    var loc = loc || null;
    //Open Disease on hash in location
    if(!loc) loc = location.href;
    var locArray = loc.split('#');
    
    if(typeof locArray[1] !== 'undefined'){
        var disease = $(".menu-disease li[data-disease='"+locArray[1]+"']");
        disease.addClass('active').siblings('li').removeClass('active');
        disease.closest('.disease-content').slideDown().find('.more-disease').removeClass('active');
        $('.'+locArray[1]).addClass('active');
        $('html,body').animate({scrollTop: disease.closest('.disease-content').prev().offset().top},'slow');
    }
}

//Additional action when klick foonter and is in Deasease page
function clikOnFooterDisease(){
    $('.footer-disease a').click(function(){
        openDiseaseFromLocation($(this).attr('href'));
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