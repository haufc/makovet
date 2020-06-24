$(document).ready(function(){
    // Panigation list product
    
    var numberOfProducts = $("#panigation-product .product-item").length;
    var limitPerPage = 4;
    
    $("#panigation-product .product-item:gt(" + (limitPerPage -1 )+")").hide();
});