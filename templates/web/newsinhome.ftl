<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#list news as aNews>
    <#if aNews.category = "internalnews">
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mavinex">
        <div>
            <img src="${aNews.[1].image}" alt="" class="img--news" width="540" height="352">
            <a class="mt-3 rounded-0" href="${aNews.[1].url}">
            <h4 style="color: #322372; padding-top: 20px;"  style="padding-top:9px;">${aNews.[1].title}</h4>
            <p style="color: #828385; padding-top: 10px;" class="limit-text" max-length="50">${aNews.[1].content}<p>
                <span class="mr-1 text--italic title-vn" style="color:#828385">Xem tiếp</span>
                <i class="fa fa-play text--red"></i>
            </a>
        </div>
    </div>
    </#if>
    </#if>
</#list>
<@studio.toolSupport />