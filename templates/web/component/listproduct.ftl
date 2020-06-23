<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <div class="row">
    	    <#if (products)??>
    	        <#list products as item>
                	<div class="col-md-2">
            	        <a href="${item.url}"><img style="max-width:100%; height:auto;" src="${item.avatar}"/></a>
            	        <p class="d-block text-center">${item.title}</p>
            	    </div>
                </#list>
    	    </#if>
    	 </div>
	</div>
<@studio.toolSupport />