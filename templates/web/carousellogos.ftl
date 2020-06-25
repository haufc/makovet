<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="logos">
    <div class="logos__container content-block owl-carousel owl-theme">
        <#list contentModel.logo_o.item as element>
            <div class="logos__item item">
                <img class="full-size" src="${element.}" alt="Logo">
            </div>
        </#list>
    </div>
</section>
<@studio.toolSupport/>