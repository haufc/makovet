$(document).ready(function(){
    // Panigation list product
    
    var numberOfRelation1 = $("#panigation-relation1 .relation1").length;
    var limitPerPage = 5;
    
    $("#panigation-relation1 .relation1:gt(" + (limitPerPage -1 )+")").hide();
    
    var totalPages;
    if ((numberOfRelation1 / limitPerPage) % 2 == 0) {
       totalPages1 =  Math.round(numberOfRelation1 / limitPerPage );
    } else {
        totalPages1 =  Math.round(numberOfRelation1 / limitPerPage ) + 1;
    }
    
    $('.pagi1').append("<li class='page-item current-page active'><a a style='background-color: #322372 !important' class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages1;i++){
        $(".pagi1").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagi1').append("<li id='next-page1' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    
    $('.pagi1 li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            $('.pagi1 *').removeAttr('style');
            var currentPage = $(this).index();
            $('.pagi1 li').removeClass("active");
            $(this).addClass("active");
            $(this).children().attr('style', 'background-color: #322372 !important');
            $("#panigation-relation1 .relation1").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#panigation-relation1 .relation1:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page1").on("click", function() {
      var currentPage = $(".pagination li.active").index(); 
      if (currentPage === totalPages) {
        return false; 
      } else {
        $('.pagi1 *').removeAttr('style');
        currentPage++; 
        $(".pagi1 li").removeClass('active'); 
        $("#panigation-relation1 .relation1").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#panigation-relation1 .relation1:eq(" + i + ")").show(); 
        }
    
        $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
        $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").children().attr('style', 'background-color: #322372 !important');
      }
    });
    
    $("#previous-page1").on("click", function() {
          var currentPage = $(".pagi1 li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            $('.pagi1 *').removeAttr('style');
            currentPage--; 
            $(".pagi1 li").removeClass('active'); 
            $("#panigation-relation1 .relation1").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#panigation-relation1 .relation1:eq(" + i + ")").show();
            }
            $(".pagi1 li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
            $(".pagi1 li.current-page:eq(" + (currentPage - 1) + ")").children().attr('style', 'background-color: #322372 !important');
          }
    });
    
});