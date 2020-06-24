<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img class="img-full" src="${contentModel.groupProductImg1_s}"/>
            </div>
            <div class="col-md-6 banner-gr-child-pr">
                <img class="banner-img" src="${contentModel.groupProductImg2_s}"/>
            </div>
            <hr class="line-hozital col-md-12"/>
            <hr class="line-hozital col-md-12"/>
        </div>
        <div class="row">
            <#list contentModel.groupproductchild_o.item as item>
            	<div class="col-md-4">
            	    <a href="${item.groupChildProductURL_s}"><img style="max-width:100%; height:auto;" src="${item.groupChildProductImage_s}"/></a>
            	    <p class="d-block text-center">${item.groupChildProductName_s}</p>
            	</div>
            </#list>
        </div>
    </div>
<@studio.toolSupport />