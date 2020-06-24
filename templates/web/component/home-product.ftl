<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="container">
        <div class="row">
            <#list contentModel.groupProduct_o.item as item>
                <div class="col-md-4">
                    <a href="${item.groupChildProductURL_s}"><img src="${item.groupProductIcon_s}" class="img-full"/></a>
                    <p class="d-block text-center">${item.groupProductName_s}</p>
                </div>
            </#list>
        </div>
        <div class="strike mt-5 mb-5">
            <span>SẢN PHẨM MỚI</span>
        </div>
        <div>
            <#if (products)??>
                <div class="col-md-12 d-flex" style="background-color: #FFCB08">
                	<#list products as product>
                        <div class="col-md product-item">
                            <img style="padding:24px;" class="img-full" src="${product.avatar}" />
                            <p class="d-block">${product.title}</p>
                        </div>
                    </#list>
                </div>
            </#if>
        </div>
    </div>
<@studio.toolSupport />