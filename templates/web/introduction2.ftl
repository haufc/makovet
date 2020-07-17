<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="container">
    <section class="introduce">
        <div class="introduce__item" style="background-image: url(${contentModel.introduction_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase">${contentModel.titleintro_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.history_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase">${contentModel.titlehistory_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.vision_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase">${contentModel.titlevision_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.award_s});">
            <a class="introduce__item-link" href="#"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase">${contentModel.titleaward_s}</p>
        </div>
    </section>
</div>
<@studio.toolSupport />