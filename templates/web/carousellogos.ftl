<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="logos">
    <div class="logos__container content-block owl-carousel owl-theme">
        <#list contentModel. as value>
            <div class="logos__item item">
                <img class="full-size" src="../settings/images/logo_duoc_thu_y_cai_lay.jpg" alt="Logo">
            </div>
        </#list>
    </div>
</section>
<@studio.toolSupport/>