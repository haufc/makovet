<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="col-md-4">
	    <img src="${contentModel.avatar_s}" class="img-full"/>
	    <p class="violet-color font-weight-bold">${contentModel.title_s}</p>
	    <div class="paginate">
	        <div class="list-tech-sp-vn">
        	    <#if (supportTech)??>
                    <#list supportTech as item>
                    	<div class="item-pr"><a style="font-size: 16px;" class="violet-color d-block pn-pr-vn" href="${item.url}">${item.title}</a></div>
                    </#list>
                </#if>
            </div>
            <ul class="pagination pagi pg-vn mt-3" >
                <li class="page-item previous-page"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
            </ul>
        </div>
	</div>
<@studio.toolSupport />