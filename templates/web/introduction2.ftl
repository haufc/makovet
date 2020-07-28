<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="introduce">
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container">
    <section class="introduce">
        <div class="introduce__item" style="background-image: url(${contentModel.introduction_s});">
            <a class="introduce__item-link" href="${contentModel.urlintro_s}"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase font-bold" style="font-size: 18px;">${contentModel.titleintro_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.history_s});">
            <a class="introduce__item-link" href="${contentModel.urlhistory_s}"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase font-bold" style="font-size: 18px;">${contentModel.titlehistory_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.vision_s});">
            <a class="introduce__item-link" href="${contentModel.urlvision_s}"></a>
            <p class="introduce__item-text introduce__item-text--purple text--uppercase font-bold" style="font-size: 18px;">${contentModel.titlevision_s}</p>
        </div>

        <div class="introduce__item" style="background-image: url(${contentModel.award_s});">
            <a class="introduce__item-link" href="${contentModel.urlaward_s}"></a>
            <p class="introduce__item-text introduce__item-text--yellow text--uppercase font-bold" style="font-size: 18px;">${contentModel.titleaward_s}</p>
        </div>
    </section>
    </div>
    <div class="container">
        <section class="introduce">
            <div class="introduce__item">
                <a class="introduce__item-link" href="#"></a>
                <p class="introduce__item-text introduce__item-text--purple text--uppercase">giới thiệu chung</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img" src="../settings/images/introduce_img_1.png" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="#"></a>
                <p class="introduce__item-text introduce__item-text--yellow text--uppercase">lịch sử hình thành</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img" src="../settings/images/introduce_img_2.png" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="#"></a>
                <p class="introduce__item-text introduce__item-text--purple text--uppercase">tầm nhìn - sứ mệnh</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_yellow.png" alt="Introduce background">
                <img class="introduce__item-img" src="../settings/images/introduce_img_3.png" alt="Introduce image">
            </div>

            <div class="introduce__item">
                <a class="introduce__item-link" href="#"></a>
                <p class="introduce__item-text introduce__item-text--yellow text--uppercase">giải thưởng - thành tích</p>
                <img class="introduce__item-bg" src="/static-assets/images/slides/introduce_bg_purple.png" alt="Introduce background">
                <img class="introduce__item-img" src="../settings/images/introduce_img_4.png" alt="Introduce image">
            </div>
        </section>
    </div>
</div>
</section>

<@studio.toolSupport />