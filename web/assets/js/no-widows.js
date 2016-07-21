$.fn.noWidows = function() {
    
    return this.each(function(i, elem) {
        var str = $(elem).html();
        $(elem).html(str.replace(/ ([^\s]){1} /gi, ' $1\xa0'));
    });
    
};
