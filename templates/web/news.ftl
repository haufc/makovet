<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                  <h1 class="text--red title-vn">Tin nội bộ</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row data-container" id="mavinex-news">
                <#list news as aNews>
                <#if aNews.category = "internalnews">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mavinex">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--news" width="540" height="352">
                        <a class="mt-3 rounded-0" href="${aNews.url}">
                        <h4 style="color: #322372; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h4>
                        <p style="color: #828385; padding-top: 10px;" class="limit-text" max-length="50">${aNews.content}<p>
                            <span class="mr-1 text--italic title-vn" style="color:#828385">Xem tiếp</span>
                            <i class="fa fa-play text--red"></i>
                        </a>
                    </div>
                </div>
                </#if>
                </#list>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi1 justify-content-center">
            <li id="previous-page1" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
    <div class="content__title">
            <div class="container">
                <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                          <h1 class="text--red title-vn">Tin ngành</h1>
                        </div>
                </div>
            </div>
    </div>
    <div class="content__details container">
        <div class="row data-container" id="field-news">
                <#list news as aNews>
                <#if aNews.category = "industrynews">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 fields" style="">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--news" width="540" height="352">
                        <a class="mt-3 rounded-0" href="${aNews.url}">
                        <h4 style="color: #322372; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h4>
                        <p style="color: #828385; padding-top: 10px;" class="limit-text">${aNews.content}<p>
                            <span class="mr-1 text--italic title-vn" style="color:#828385">Xem tiếp</span>
                            <i class="fa fa-play text--red"></i>
                        </a>
                    </div>
                </div>
                </#if>
                </#list>
                
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi2 justify-content-center">
            <li id="previous-page2" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>

</div>
<style>
.page-link{
    border-radius :50% !important;
    margin: 0 5px;
}
</style>
<script>
    $('.limit-text').each(function (f) {
      var newstr = $(this).text().substring(0,300);
      $(this).text(newstr).append("...");
    });
    
    var numberOfFieldsNews = $("#field-news .fields").length;
    var numberOfMavinexNews = $("#mavinex-news .mavinex").length;
    
    var limitPerPage = 2;
    
    $("#mavinex-news .mavinex:gt(" + (limitPerPage -1 )+")").hide();
    $("#field-news .fields:gt(" + (limitPerPage -1 )+")").hide();
    
    var totalPages1 = Math.round(numberOfMavinexNews / limitPerPage );
    var totalPages2 = Math.round(numberOfFieldsNews / limitPerPage );
    
    $('.pagi1').append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    $('.pagi2').append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages1;i++){
        $(".pagi1").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    for (let i=2; i<= totalPages2;i++){
        $(".pagi2").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagi1').append("<li id='next-page1' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    $('.pagi2').append("<li id='next-page2' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
    
    
    $('.pagi1 li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            var currentPage = $(this).index();
            $('.pagi1 li').removeClass("active");
            $(this).addClass("active");
            $("#mavinex-news .mavinex").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#mavinex-news .mavinex:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page1").on("click", function() {
      var currentPage = $(".pagination li.active").index(); 
      if (currentPage === totalPages1) {
        return false; 
      } else {
        currentPage++; 
        $(".pagi1 li").removeClass('active'); 
        $("#mavinex-news .mavinex").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#mavinex-news .mavinex:eq(" + i + ")").show(); 
        }
    
        $(".pagi1 li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
      }
    });


    $("#previous-page1").on("click", function() {
          var currentPage = $(".pagi1 li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            currentPage--; 
            $(".pagi1 li").removeClass('active'); 
            $("#mavinex-news .mavinex").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#mavinex-news .mavinex:eq(" + i + ")").show();
            }
            $(".pagi1 li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
          }
        });
        
    $('.pagi2 li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            var currentPage = $(this).index();
            $('.pagi2 li').removeClass("active");
            $(this).addClass("active");
            $("#field-news .fields").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#field-news .fields:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page2").on("click", function() {
      var currentPage = $(".pagi2 li.active").index(); 
      if (currentPage === totalPages2) {
        return false; 
      } else {
        currentPage++; 
        $(".pagi2 li").removeClass('active'); 
        $("#field-news .fields").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#field-news .fields:eq(" + i + ")").show(); 
        }
    
        $(".pagi2 li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
      }
    });


    $("#previous-page2").on("click", function() {
          var currentPage = $(".pagi2 li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            currentPage--; 
            $(".pagi2 li").removeClass('active'); 
            $("#field-news .fields").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#field-news .fields:eq(" + i + ")").show();
            }
            $(".pagi2 li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
          }
        });    
</script>  
<@studio.toolSupport />