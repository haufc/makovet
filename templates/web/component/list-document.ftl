<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <div class="row">
	        <#if (docs)??>
                <#list docs as doc>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
                	   <a href="${doc.url}"><img src="${doc.avatar}"/></a>
                	</div>
                </#list>
            </#if>
	    </div>
	</div>
<@studio.toolSupport />