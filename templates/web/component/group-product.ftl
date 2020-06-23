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
    </div>
<@studio.toolSupport />