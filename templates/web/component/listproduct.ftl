<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <#--<div class="row row-cols-lg-5 row-cols-md-5" id="child-product">
    	    <#if (products)??>
    	        <#list products as item>
                	<div class="col-lg col-md col-sm-6 col-xs-6 child-product-item mb-3">
            	        <a href="${item.url}"><img style="max-width:100%; height:auto;display: block;margin-left: auto;margin-right: auto;" src="${item.avatar}" width="150" height="155"/></a>
            	        <p class="d-block text-center violet-color mt-3">${item.title}</p>
            	    </div>
                </#list>
    	    </#if>
    	 </div> -->
    	 <div class="row" id="child-product">
            <#if (products)??>
            	<#list products as product>
                    <div class="col-lg-2 col-md-2 col-sm-6 product-item mb-3">
                        <a href="${product.url}"><img  class="img-100" src="${product.avatar}" width="120" height="83"/></a>
                        <p style="font-size: 23px;" class="d-block font-weight-bold violet-color mt-3">${product.title}</p>
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
	<input hidden value="${contentModel.productgrouplevel1_s}" id="group-pr"/>
	<input hidden value="${contentModel.productgrouplevel2_s}" id="group-cpr"/>
	<div id="lst-categories">
        <#list categories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <div id="child-cate">
        <#list childCategories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
<@studio.toolSupport />