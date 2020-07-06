<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="products">
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="products__container block">
        <div class="products__content">
            <section class="products__logos container-fluid">
        	    <#list contentModel.groupProduct_o.item as item>
        	        <div class="products__logo text--center">
                        <a href="${item.groupChildProductURL_s}">
                            <img class="products__img" src="${item.groupProductIcon_s}" alt="Product logo" width="265" height="240">
                            <h3 class="text--uppercase violet-color" style="font-size:20px;">${item.groupProductName_s}</h3>
                        </a>
                    </div>
            	</#list>
            </section>
        </div>
    </div>
    <div class="container">
        <hr class="line-hozital" style="margin-bottom: 1%; margin-top: 0;"/>
        <hr class="line-hozital"style="margin-bottom: 5%; margin-top: 0;"/>
        
        <div class="row row-cols-5" id ="panigation-product">
            <#if (products)??>
            	<#list products as product>
                    <div class="col product-item mb-3">
                        <a href="${product.url}"><img class="img-full" src="${product.avatar}" width="135" height="140"/></a>
                        <p class="d-block text-md-center text-lg-center violet-color mt-1">${product.title}</p>
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
</section>
<@studio.toolSupport />