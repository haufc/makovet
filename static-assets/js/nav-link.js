$(document).ready(function() {
    var url = window.location;
    $('#nav-content a').removeClass('active');
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).addClass('active');
    
});