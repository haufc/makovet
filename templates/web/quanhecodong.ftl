<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Công bố thông tin</h1>
        </div>
    </div>
    <div class="container">
	    <div id ="panigation-job">
            <#if (posts)??>
            	<#list posts as aPost>
                    <div class="job-item">
                        <a class="violet-color font-weight-bold" href="${aPost.url}" class="d-block">${aPost.title}</a>
                        <p class="violet-color">(${aPost.time?date?string('dd/MM/yyyy')})</p>
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
    
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">Đại hội đồng cổ đông</h1>
        </div>
    </div>
 

</div>
<@studio.toolSupport />