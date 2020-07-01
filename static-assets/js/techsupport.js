 $(document).ready(function(){
      // Panigation
    var groupProductSize = $('#group-pr-length').val();
    var limitperPage = 3;
    
    for(let i = 0; i < groupProductSize; i++) {
        var numberOfGroupItem = $('.group-pr-'+i).find('.list-tech-sp-vn .item-pr a').length;
        var groupItem = $('.group-pr-'+i).find('.list-tech-sp-vn .item-pr a');
        var groupItemDiv = $('.group-pr-'+i).find('.list-tech-sp-vn .item-pr');
        $('.group-pr-'+i+' .paginate ul').attr('id', 'pagi-'+i);
        $('.group-pr-'+i+' .paginate ul').find('li').attr('id', 'prevous-item-'+i);
        
        // hiden element over limitperPage
        if (numberOfGroupItem > limitperPage) {
            for(let j = limitperPage; j <  numberOfGroupItem; j++) {
                $(groupItemDiv[j]).hide();
            }
            
            var totalPages;
            if ((numberOfGroupItem / limitperPage) % 2 == 0) {
               totalPages =  Math.round(numberOfGroupItem / limitperPage );
            } else {
                totalPages =  Math.round(numberOfGroupItem / limitperPage ) + 1;
            }
            
            $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page active'><a style='background-color: #322372 !important' class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
            
            for (let j=2; j<= totalPages;j++){
                 $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ j +"</a></li>");
            }   
            
            var strId = "next-page-"+i;
            $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li id='"+strId+"' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
        
            $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page').on("click", function(){
                if($(this).hasClass("active")){
                    return false;
                } else{
                    var currentPage = $(this).index();
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage)+')').children().removeAttr('style');
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                    $(this).addClass("active");
                    $(this).children().attr('style', 'background-color: #322372 !important');
                    $('.group-pr-'+i+' .list-tech-sp-vn .item-pr').hide();
                    var total = limitperPage * currentPage;
                    for(let z = total - limitperPage; z<total; z++){
                        $('.group-pr-'+ i +' .list-tech-sp-vn .item-pr').eq(z).show();
                    }
                }
            });
            
            $("#next-page-"+i).on("click", function() {
              var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
              if (currentPage === totalPages) {
                return false; 
              } else {
                $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage)+')').children().removeAttr('style');
                currentPage++; 
                $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                $('.group-pr-'+i+' .list-tech-sp-vn .item-pr').hide();
                var total = limitperPage * currentPage; 
                for(let z = total - limitperPage; z<total; z++){
                    $('.group-pr-'+ i +' .list-tech-sp-vn .item-pr').eq(z).show();
                }
                $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').children().attr('style', 'background-color: #322372 !important');
              }
            });
            
             $('#prevous-item-'+i).on("click", function() {
                  var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
                  if (currentPage === 1) {
                    return false; 
                  } else {
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage)+')').children().removeAttr('style');
                    currentPage--; 
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                    $('.group-pr-'+i+ ' .list-tech-sp-vn .item-pr').hide();
                    var grandTotal = limitperPage * currentPage; 
                    for (let z = grandTotal - limitperPage; z < grandTotal; z++) {
                       $('.group-pr-'+ i +' .list-tech-sp-vn .item-pr').eq(z).show();
                    }
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').children().attr('style', 'background-color: #322372 !important');
                  }
                });
        } else {
            $('.group-pr-' + i + ' .paginate #pagi-'+ i).hide();
        }
        
    }
 });