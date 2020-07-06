<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container">
        <div class="d-flex">
            <div class="col-lg-6 col-md-6 p-left-0">
                <img class="img-full" src="${contentModel.groupProductImg1_s}"/>
            </div>
            <div class="col-lg-6 col-md-6 banner-gr-child-pr">
                <img class="banner-img" src="${contentModel.groupProductImg2_s}"/>
            </div>
        </div>
        <hr class="line-hozital" style="margin-bottom: 1%; margin-top: 4%;"/>
        <hr class="line-hozital"style="margin-bottom: 4%; margin-top: 0;"/>
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