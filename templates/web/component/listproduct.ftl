<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <div class="row" id="child-product">
    	    <#if (products)??>
    	        <#list products as item>
                	<div class="col-md-2 child-product-item">
            	        <a href="${item.url}"><img style="max-width:100%; height:auto;" src="${item.avatar}" width="135" height="140"/></a>
            	        <p class="d-block text-center">${item.title}</p>
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