<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="container">
        <div class="row">
            <#list contentModel.groupProduct_o.item as item>
                <div class="col-md-4">
                    <a href="${item.groupChildProductURL_s}"><img src="${item.groupProductIcon_s}" class="img-responsive"/></a>
                    <p class="d-block text-center">${item.groupProductName_s}</p>
                </div>
            </#list>
        </div>
        <hr class="line-hozital"/>
        <hr class="line-hozital"/>
        
        <div class="row">
            <#if (products)??>
            	<#list products as product>
                    <div class="col-md-2">
                        <img class="img-full" src="${product.avatar}" />
                        <p class="d-block">${product.title}</p>
                    </div>
                </#list>
            </#if>
        </div>
    </div>
<@studio.toolSupport />