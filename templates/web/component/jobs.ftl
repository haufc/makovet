<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <h3>${contentModel.title1_s}</h3>
	    <div id ="panigation-job">
            <#if (jobs)??>
            	<#list jobs as job>
                    <div class="job-item">
                        <a href="${job.url}" class="d-block">${job.title}</a>
                        <p>(${job.time})</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
	    <h3>${contentModel.title2_s}</h3>
	    <div class="row">
	        <div class="col-lg-6 col-md-6">
	            <img class="img-full" src="${contentModel.contentLeftImage_s}" />
	            <h4 class="violet-color font-weight-bold">${contentModel.contentLeftTitle_s}</h4>
	            <p class="mt-md-4 mt-lg-4 violet-color">${contentModel.contentLeftDesc_s}</p>
	            
	            <p class="mt-md-4 mt-lg-4 violet-colo"><a href="${contentModel.contentLeftURL_s}">Xem tiếp</a></p>
	        </div>
	        <div class="col-lg-6 col-md-6">
	            <img class="img-full" src="${contentModel.contentRightImage_s}" />
	            <h4 class="violet-color font-weight-bold">${contentModel.contentRightTitle_s}</h4>
	            <p class="mt-md-4 mt-lg-4 violet-color">${contentModel.contentRightDesc_s}</p>
	            
	            <p class="mt-md-4 mt-lg-4 violet-colo"><a href="${contentModel.contentRightURL_s}">Xem tiếp</a></p>
	        </div>
	    </div>
	</div>
<@studio.toolSupport />