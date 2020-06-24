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
        <hr class="line-hozital"/>
        <hr class="line-hozital"/>
        
        <div class="row" id ="panigation-product">
            <#if (products)??>
            	<#list products as product>
                    <div class="col-md-2 product-item">
                        <img class="img-full" src="${product.avatar}" />
                        <p class="d-block">${product.title}</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
<@studio.toolSupport />