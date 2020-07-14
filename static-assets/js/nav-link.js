$(document).ready(function() {
    var url = window.location;
    
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).css('font-family', 'UVF-DINPro Bold');
    
});