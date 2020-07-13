<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Company news</h1>
        </div>
    </div>
    <div class="container">
        <div class="row data-container" id="mavinex-news">
                <#list news as aNews>
                <#if aNews.category = "internalnews">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mavinex">
                    <div>
                        <img src="${aNews.image}" alt="" class="img-responsive" width="540" height="352">
                        <a class="mt-3 rounded-0" href="${aNews.url}">
                        <h3 class="text--uppercase" style="color: #322372; padding-top: 20px; font-weight: bold; font-size: 20px;">${aNews.title}</h3>
                        <p style="color: #636466; padding-top: 10px; line-height: 1.5; font-size: 14px; font-weight: 100;" class="limit-text" max-length="50">${aNews.content}<p>
                            <span class="mr-1 text--italic title-vn" style="color:#322372; font-weight: bold; font-size: 14px;">See more</span>
                            <i class="fa fa-play text--red"></i>
                        </a>
                    </div>
                </div>
                </#if>
                </#list>
        </div>
        <nav aria-label="Page navigation example" style="margin-bottom: 40px;">
          <ul class="pagination pagi1 justify-content-center">
            <li id="previous-page1" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Agriculture News</h1>
        </div>
    </div>
    <div class="content__details container">
        <div class="row data-container" id="field-news">
                <#list news as aNews>
                <#if aNews.category = "industrynews">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 fields" style="">
                    <div>
                        <img src="${aNews.image}" alt="" class="img-responsive" width="540" height="352">
                        <a class="mt-3 rounded-0" href="${aNews.url}">
                        <h3  class="text--uppercase" style="color: #322372; padding-top: 20px; font-weight: bold; font-size: 20px;">${aNews.title}</h3>
                        <p style="color: #636466; padding-top: 10px; line-height: 1.5; font-size: 14px; font-weight: 100" class="limit-text">${aNews.content}<p>
                            <span class="mr-1 text--italic title-vn" style="color:#322372; font-weight: bold; font-size: 14px;">See more</span>
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
<@studio.toolSupport />