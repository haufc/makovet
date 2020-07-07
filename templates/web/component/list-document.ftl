<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="container">
	    <div class="row">
	        <#if (docs)??>
                <#list docs as doc>
                	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6" style="position: relative;">
                	   <figure style="width: 100%; height: 256.757px;">
                          <a href="${doc.url}">
                            <img style="height: 100%;object-fit: cover;width: 100%;" src="${doc.avatar}"/>
                          </a>
                        </figure>
                        <div class="cap-content" style="background: #322372;left: 4%;bottom:0;position: absolute;width: 94%;">
                            <a  href="${doc.url}">
                                <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${doc.title}</h3>
                            </a>
                        </div>
                	</div>
                	
                </#list>
            </#if>
	    </div>
	</div>
<@studio.toolSupport />