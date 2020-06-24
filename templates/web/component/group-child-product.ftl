<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img class="img-full" src="${contentModel.groupProductImg1_s}"/>
            </div>
            <div class="col-md-6" style="background-color: #FFCB08;">
                <img src="${contentModel.groupProductImg2_s}"/>
            </div>
        </div>
        <hr class="line-hozital"/>
        <hr class="line-hozital"/>
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