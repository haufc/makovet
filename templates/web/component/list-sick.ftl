<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
	<div class="container">
	    <div id ="panigation-tech">
            <#if (techs)??>
            	<#list techs as tech>
                    <div class="tech-item">
                        <a class="violet-color font-weight-bold" style="font-size:20px;" href="${tech.url}" class="d-block">${tech.title}</a>
                        <p class="dim-grey-color">(${tech.time})</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi-tech justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
<@studio.toolSupport />