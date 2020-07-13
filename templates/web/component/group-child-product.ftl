<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container">
        <div class="row" style="margin-right: 0 !important;margin-left: 0 !important;">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 pl-md-0 pl-lg-0 babber-img-left">
                <img class="img-full" src="${contentModel.groupProductImg1_s}"/>
            </div>
            <#--banner-gr-child-pr, class="banner-img" -->
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 right-banner" style="background-color:#ffcb08;">
                <div class="banner-content" style="padding-top: 8%;">
                    <img style="width:40%;" class="img-center" src="${contentModel.groupProductImg2_s}"/>
                    <p style="font-size: 1.3em" class="font-weight-bold violet-color text-center mt-4 text--uppercase">${contentModel.rightTitle_s}</p>
                </div>
            </div>
        </div>
        <hr class="line-hozital" style="margin-bottom: 1%; margin-top: 3%;"/>
        <hr class="line-hozital"style="margin-bottom: 5%; margin-top: 0;"/>
        <div class="row">
            <#list contentModel.groupproductchild_o.item as item>
            	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
            	    <a href="${item.groupChildProductURL_s}"><img style="max-width:100%; height:auto;" src="${item.groupChildProductImage_s}"/></a>
            	    <p class="d-block text-center mt-3 violet-color font-weight-bold" style="font-size: 20px">${item.groupChildProductName_s}</p>
            	</div>
            </#list>
        </div>
    </div>
<@studio.toolSupport />