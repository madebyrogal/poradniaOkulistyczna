$(document).ready(function () {
    toogleMenu();
    toogleDiseaseRecommendation();
    toogleDisease();
    toogleMedicine();
    openDiseaseFromLocation();
    clikOnFooterDisease();
    searchAutoComplet();
    changeOptionDisease();
    niceSelect();
    removeWidow();
});

$(window).resize(function () {

});
function removeWidow(){
    $('.no-widows li, h1, h2, h3, h4, h5, h6, p').noWidows();
}

//Funtion of nice select
function niceSelect() {
    //Container
    $(".select-wraper").on('click', function () {
        $("#select-data").html('');
        $('#select-disease option').each(function (i, elem) {
            $("#select-data").append('<li data-option="' + $(elem).val() + '">' + $(elem).html() + '</li>');
        });
        $("#select-data").show();
    }).on('focusout', function () {
        setTimeout(function () {
            $("#select-data").hide()
        }, 100);
    });

    //Select data from container
    $('#select-data').on('click', 'li', function () {
        
        $('#search-disease').val($(this).data('option'));
        $("#select-wraper span").html($(this).html());
        //Clear write by hand symptoms
        $('#symptom').val('');
    });
}

function clearNiceSelect() {
    $("#select-wraper span").html('');
    $("#search-disease").val('0');
}

//Change option in select disease after change patient type
function changeOptionDisease() {
    $('.change-option').change(function () {
        var url = $('#diseaseOptionURL').val();
        var data = {
            'patient': $(this).val(),
            'selectDisease': $('#search-disease').val()
        };
        //Clear niceSelects
        clearNiceSelect();
        $.ajax({
            url: url,
            data: data,
            type: 'GET',
            success: function (response) {
                var diseases = response.diseases;
                var selectDisease = response.selectDisease;
                var select = $('#select-disease');
                $(select).html('');
                $(select).append($('<option>').html('').val(''));
                diseases.forEach(function (elem) {
                    if(selectDisease === elem.id){
                        $('#search-disease').val(selectDisease);
                        $('#select-wraper span').html(elem.name);
                    }
                    $(select).append($('<option>').html(elem.name).val(elem.id));
                });


            }
        });
    });
}

function searchAutoComplet() {
    //Autocomplete
    $('#symptom').keyup(function () {
        var url = $('#symptomURL').val();
        var data = {
            'symptom': $(this).val(),
            'patient': $(".nice-radio input[type='radio']:checked").val()
        };
        $.ajax({
            url: url,
            data: data,
            type: 'GET',
            success: function (response) {
                var symptoms = response;
                var ulCon = $('.symptomsAutoComplete ul');
                $(ulCon).html('');
                symptoms.forEach(function (elem) {
                    $(ulCon).append($('<li>').html(elem.name));
                });
                if (symptoms.length) {
                    ulCon.show();
                } else {
                    ulCon.hide();
                }
            }
        });
    });

    //Select autocomplete word
    $('.symptomsAutoComplete ul').on('click', 'li', function () {
        var symptom = $(this).html();
        $('#symptom').val(symptom);
        $('.symptomsAutoComplete ul').hide();
    });

    $('#symptom').focusout(function () {
        setTimeout(function () {
            $('.symptomsAutoComplete ul').hide()
        }, 200);
    });
}

function toogleMenu() {
    $('#mobile-menu, #mobile-close').on('click', function () {
        $('#menu').toggleClass('in');
        $('body').toggleClass('slide-right');
    });
}

//Toogle disease extend recomendationon search page
function toogleDiseaseRecommendation() {
    $('.disease .button-ext').click(function () {
        var disease = $(this).closest('.disease');
        disease.toggleClass('not-extend');
    });

    $('.more-disease .button-ext').click(function () {
        var disease = $(this).closest('.more-disease');
        disease.toggleClass('not-extend');
    });
}

//Toogle disease on disease page
function toogleDisease() {
    $('.disease-list > li .name').click(function (e) {
        $(this).toggleClass('active').next('.disease-content').slideToggle();
    });

    $('.menu-disease li').click(function () {
        var disease = $(this).data('disease');

        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.disease-content').find('.more-disease').removeClass('active');
        $('.' + disease).addClass('active');

    });
}

//Open disease when referer is from footer menu
function openDiseaseFromLocation(loc) {
    //From clickOnFooterDisease()
    var loc = loc || null;
    //Open Disease on hash in location
    if (!loc)
        loc = location.href;
    var locArray = loc.split('#');

    if (typeof locArray[1] !== 'undefined') {
        var disease = $(".menu-disease li[data-disease='" + locArray[1] + "']");
        disease.addClass('active').siblings('li').removeClass('active');
        disease.closest('.disease-content').slideDown().find('.more-disease').removeClass('active');
        $('.' + locArray[1]).addClass('active');
        $('html,body').animate({scrollTop: disease.closest('.disease-content').prev().offset().top}, 'slow');
    }
}

//Additional action when klick foonter and is in Deasease page
function clikOnFooterDisease() {
    $('.footer-disease a').click(function () {
        openDiseaseFromLocation($(this).attr('href'));
    });
}

//Toogle medicine on medicine page
function toogleMedicine() {
    $('.list-box li h2').click(function () {
        $(this).next().slideToggle();
        $(this).toggleClass('active');
    });

    $('.medicine-list li').click(function () {
        var medicine = $(this).data('medicine');

        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.row').find('.border').removeClass('active');
        $('.' + medicine).addClass('active');

    });
}