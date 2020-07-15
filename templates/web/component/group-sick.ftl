<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="lst-sick mb-3">
	    <img src="${contentModel.avatar_s}" class="img-full"/>
	    <p class="violet-color font-weight-bold text-center mt-3 text-uppercase" style="font-size: 26px;">${contentModel.title_s}</p>
	    <div class="paginate mt-5">
	        <div class="list-tech-sp-vn mb-3" style="line-height: 1.5;">
        	    <#if (supportTech)??>
                    <#list supportTech as item>
                    	<div class="item-pr"><a style="font-size: 16px;" class="violet-color d-block pn-pr-vn" href="${item.url}">${item.title}</a></div>
                    </#list>
                </#if>
            </div>
            <a href="#">Xem tiếp</a>
        </div>
	</div>
<@studio.toolSupport />