<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="col-md-4">
	    <img src="${contentModel.avatar_s}" class="img-full"/>
	    <p class="violet-color font-weight-bold">${contentModel.title_s}</p>
	    <div class="paginate">
	        <div class="list-tech-sp-vn">
        	    <#if (supportTech)??>
                    <#list supportTech as item>
                    	<div class="item-pr"><a style="font-size: 16px;" class="text-white d-block pn-pr-vn" href="${productVN.url}">${productVN.title}</a></div>
                    </#list>
                </#if>
            </div>
        </div>
	</div>
<@studio.toolSupport />