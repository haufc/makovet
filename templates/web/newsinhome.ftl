<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="news">
            <div class="news__title section-title" id="newsTitle">
                <div class="news__title-container section-title__content block">
                    <h1 class="news__title-text section-title__content-text text--uppercase" id="tinNoiBoTitle">tin nội bộ</h1>
                    <h1 class="news__title-text section-title__content-text text--uppercase" id="tinNganhTitle">tin ngành</h1>
                </div>
            </div>

            <div class="news__container block">
                <section class="news__block" id="tinNoiBo">
                    <div class="news__block-title" id="tinNoiBoTitle">
                        <h1 class="text--uppercase">tin nội bộ</h1>
                    </div>

            <div class="news__block-content">
                <div class="news__block-img">
                    <img class="full-size" src="${firstNew.image}" alt="News image">
                </div>

                <div class="news__block-text">
                    <h3>${firstNew.title}</h3>
                    <p class="truncate-multi-line text--justify limit-text">
                        ${firstNew.content}}
                    </p>

                    <a class="view-more flex" href="${firstNew.url}">
                        <span>Xem thêm</span>
                        <img src="/static-assets/images/icon_arrow_yellow.png" alt="Arrow icon">
                    </a>
                </div>
            </div>
        </section>

            <section class="news__block" id="tinNganh">
                    <div class="news__block-title" id="tinNganhTitle">
                        <h1 class="text--uppercase">tin ngành</h1>
                    </div>

            <div class="news__block-content">
                <div class="news__block-img">
                    <a href="/tin-tuc"><img class="full-size" src="/static-assets/images/news_img_2.png" alt="News image"></a>
                </div>

                <ul class="news__block-links">
                    <li class="news__block-link">
                        <img src="/static-assets/images/news_img_3.png" alt="News image">

                        <a class="text--uppercase" href="#">thư viện ảnh</a>
                    </li>

                    <li class="news__block-link">
                        <img src="/static-assets/images/news_img_4.png" alt="News image">

                        <a class="text--uppercase" href="#">thư viện tư liệu</a>
                    </li>

                    <li class="news__block-link">
                        <img src="/static-assets/images/news_img_5.png" alt="News image">

                        <a class="text--uppercase" href="#">thư viện video</a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
</section>
<@studio.toolSupport />
<script>
$('.limit-text').each(function (f) {
  var newstr = $(this).text().substring(0,140);
  $(this).text(newstr).append("...");
});
</script>