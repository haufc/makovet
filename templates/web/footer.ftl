<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="footer" <@studio.iceAttr component=contentModel/>>
    <div class="footer__container block flex">
        <!-- address -->
        <section class="footer__item" id="address">
            <h3 class="text--uppercase">${contentModel.name_s}</h3>
            <p>${contentModel.address_s}</p>
            <p>Điện thoại: ${contentModel.phone_s} - Fax: ${contentModel.fax_s}</p>
            <p>Email: ${contentModel.email_s}</p>
        </section>
        <!-- /address -->

        <!-- social -->
        <section class="footer__item text--center" id="social">
            <p class="footer__item-title text--uppercase">kết nối với cailayvetco</p>
            <ul class="footer__item-btns flex">
                <li><a href="${contentModel.fburl_s}"><img src="/static-assets/images/btn_facebook.png" alt="Facebook"></a></li>
                <li><a href="${contentModel.twitterurl_s}"><img src="/static-assets/images/btn_twitter.png" alt="Twitter"></a></li>
                <li><a href="${contentModel.youtubeurl_s}"><img src="/static-assets/images/btn_youtube.png" alt="Youtube"></a></li>
                <li><a href="${contentModel.linkedinurl_s}"><img src="/static-assets/images/btn_linkedin.png" alt="Linkedin"></a></li>
            </ul>
        </section>
        <!-- /social -->
        
        <!-- links -->
        <section class="footer__item text--center" id="social">
            <ul class="footer__item-links flex">
                <li><a class="text--uppercase" href="#">chính sách bảo mật thông tin</a></li>
                <li><a class="text--uppercase" href="#">chính sách website</a></li>
                <li><a class="text--uppercase" href="#">quy ước sử dụng website</a></li>
            </ul>
        </section>

        <!-- dấu xác nhận đã đăng ký của bộ công thương -->
        <section class="footer__item" id="bct">
            <img class="footer__item-img" src="${contentModel.tick_s}" alt="Bộ Công thương">
            <p>${contentModel.copyrighted_s}</p>
        </section>
        <!-- /dấu xác nhận đã đăng ký của bộ công thương -->
    </div>
</footer>
<@studio.toolSupport />