$.fn.noWidows = function() {
    
    return this.each(function(i, elem) {
        var str = $(elem).text();
        $(elem).text(str.replace(/ ([^\s]){1} /gi, ' $1\xa0'));
    });
    
};
