<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="footer" <@studio.iceAttr component=contentModel/> style="background-image: url('${contentModel.backgroundImage_s}');">
    <div class="footer__container block flex">
        <!-- address -->
        <section class="footer__item" id="address">
            <h3 class="text--uppercase">công ty cổ phần dược thú y cai lậy</h3>
            <p>Địa chỉ trụ sở chính: Khu phố 1, phường 5, thị xã Cai Lậy, tỉnh Tiền Giang</p>
            <p>Điện thoại: (0273)3826462 - Fax: 3826363</p>
            <p>Email: info@cailayvetco.com</p>
        </section>
        <!-- /address -->

        <!-- social -->
        <section class="footer__item text--center" id="social">
            <p class="footer__item-title text--uppercase">kết nối với cailayvetco</p>
            <ul class="footer__item-btns flex">
                <li><a href="#"><img src="../settings/images/btn_facebook.png" alt="Facebook"></a></li>
                <li><a href="#"><img src="../settings/images/btn_twitter.png" alt="Twitter"></a></li>
                <li><a href="#"><img src="../settings/images/btn_youtube.png" alt="Youtube"></a></li>
                <li><a href="#"><img src="../settings/images/btn_linkedin.png" alt="Linkedin"></a></li>
            </ul>
        </section>
        <!-- /social -->

        <!-- dấu xác nhận đã đăng ký của bộ công thương -->
        <section class="footer__item" id="bct">
            <img class="footer__item-img" src="../settings/images/bct_logo.png" alt="Bộ Công thương">
            <p>Bản quyền thuộc về Công ty CP Dược Thú y Cai Lậy 2020</p>
        </section>
        <!-- /dấu xác nhận đã đăng ký của bộ công thương -->
    </div>
</footer>
<@studio.toolSupport />