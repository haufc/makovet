<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <span class="d-inline">
                <span class="section-title__content-text text--uppercase">Thư viện tài liệu</span>
            </span>
        </div>
    </div>
	<div class="container">
	    <div class="row mb-5" id="panigation-doc">
	        <#if (docs)??>
                <#list docs as doc>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 doc-item" style="position: relative;">
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${doc.url}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${doc.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 92%;">
                            <a  href="${doc.url}">
                                <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${doc.title}</h3>
                            </a>
                        </div>
                	</div>
                </#list>
                <#list docsPDF as docPdf>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 doc-item" style="position: relative;">
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${docPdf.url}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${docPdf.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 92%;">
                            <a  href="${docPdf.url}">
                                <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${docPdf.title}</h3>
                            </a>
                        </div>
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