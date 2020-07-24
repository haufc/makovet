$(document).ready(function() {
    var url = window.location;
    $('#nav-content a').removeClass('active');
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).addClass('active');
    
    // if (url.href.indexOf('/gioi-thieu-chung') > -1) {
    // $('#nav-content a').filter(function() {
    //     return this.href == getContextPath()+"/gioithieu";
    // }).addClass('active');
    // }
    
    if (url.href.indexOf('/san-pham-1') > -1) {
    $('#menu a').filter(function() {
        console.log(this.href);
        return this.href == getContextPath()+"/san-pham";
    }).addClass('active');
    }
    
});