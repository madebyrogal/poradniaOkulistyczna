//Cookie
var Cookie = function () {
    this.setCookie = function (name, value, expiresDay, path, theDomain, secure) {
        path = path || '/';
        value = escape(value);
        var today = new Date();
        var expires = new Date(today.getTime() + expiresDay * 86400000);
        var theCookie = name + "=" + value +
                ((expires) ? "; expires=" + expires.toGMTString() : "") +
                ((path) ? "; path=" + path : "") +
                ((theDomain) ? "; domain=" + theDomain : "") +
                ((secure) ? "; secure" : "");
        document.cookie = theCookie;
    };

    this.getCookie = function (name) {
        var search = name + "=";
        if (document.cookie.length > 0) { // if there are any cookies 
            var offset = document.cookie.indexOf(search);
            if (offset !== -1) { // if cookie exists 
                offset += search.length;
                // set index of beginning of value 
                var end = document.cookie.indexOf(";", offset);
                // set index of end of cookie value 
                if (end === -1)
                    end = document.cookie.length;
                return unescape(document.cookie.substring(offset, end));
            }
        }
    };

    this.deleteCookie = function (name, path, domain) {
        if (getCookie(name)) {
            document.cookie = name + "=" +
                    ((path) ? ";path=" + path : "") +
                    ((domain) ? ";domain=" + domain : "") +
                    ";expires=Thu, 01-Jan-70 00:00:01 GMT";
        }
    };
};

//Accept cookie-content
function acceptCookieConsent() {
    $('#cookie-consent #close-cookie').on('click', function (event) {
        event.preventDefault();
        var host = location.host;
        var cookie = new Cookie();
        if (host.split('.').length !== 1 && !validateIP(host)) {
            host = '.' + host;
        }
        cookie.setCookie('cookie-consent', '1', 365, '/', host);
        $('#cookie-consent').hide();
    });
}

//Validate IP adress
function validateIP(ipaddress)
{
    if (/^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/.test(ipaddress))
    {
        
        return (true);
    }
    
    return (false);
}
