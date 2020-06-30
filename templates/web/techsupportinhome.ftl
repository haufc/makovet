            <section class="services">
                <div class="section-title">
                    <div class="section-title__content block">
                        <h1 class="section-title__content-text text--uppercase">điều trị bệnh</h1>
                    </div>
                </div>

    <div class="services__container block flex">
        <section class="services__img">
            <img class="full-size" src="/static-assets/images/services_img.png" alt="Services image">
        </section>

        <section class="services__content">
            <#if (firstItem)??>
                <div class="services__content-text">
                    <h3 class="text--uppercase">${firstItem.title}</h3>
                    <p class="truncate-multi-line text--justify limit-text">
                        ${firstItem.desc}
                    </p>
                </div>
                <a class="view-more flex" href="${firstItem.url}">
                    <span>Xem thêm</span>
                    <img src="/static-assets/images/icon_arrow_white.png" alt="Arrow icon">
                </a>
            </#if>
            <div class="line"></div>

            <a class="services__link" href="#"><h3>Bệnh viêm gan</h3></a>
            <a class="services__link" href="#"><h3>Bệnh nấm diều</h3></a>
            <a class="services__link" href="#"><h3>Bệnh thương hàn trên cút</h3></a>
            <a class="services__link" href="#"><h3>Bệnh bại huyết trên vịt</h3></a>
        </section>
    </div>
</section>