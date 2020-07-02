<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header>
    <section class="nav">
        <div class="nav__responsive">
            <div class="nav__container">
                <div class="nav__logo">
                    <a href="/trang-chu"><img src="${contentModel.logo_s}" alt="Logo"></a>
                </div>
    
                <a class="nav__btn" onclick="toggleNav()">
                    <i class="fas fa-bars"></i>
                </a>
    
                <ul class="nav__tools flex">
                    <li class="nav__tool-item">
                        <a href="/trang-chu">
                            <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                        </a>
                    </li>
                    <li class="nav__tool-item">
                        <a href="#">
                            <img class="full-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                        </a>
                    </li>
                    <li class="nav__tool-item">
                        <a href="#">
                            <img class="full-size" src="/static-assets/images/template/icon_search.png" alt="Search icon">
                        </a>
                    </li>
                </ul>
    
                <ul class="nav__menu" id="menu">
                    <button class="nav__menu-btn" onclick="toggleNav()">
                        <i class="fas fa-times"></i>
                    </button>
    
                    <li class="nav__menu-item">
                        <div class="dropdown">
                            <a class="nav__menu-link" href="#">Giới thiệu</a>
                            <div class="dropdown-content">
                                <a class="mavinex-nav__link" href="/introducts/gioi-thieu-chung">Giới thiệu chung</a>
                                <a class="mavinex-nav__link" href="/introducts/lich-su-hinh-thanh">Lịch sử hình thành</a>
                                <a class="mavinex-nav__link" href="/introducts/linh-vuc-hoat-dong">Lĩnh vực hoạt động</a>
                                <a class="mavinex-nav__link" href="/introducts/doi-tac-chien-luoc">Đối tác chiến lược</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link active" href="/san-pham">Sản phẩm</a>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link" href="/tin-tuc">Tin tức - Sự kiện</a>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link" href="/ho-tro-ky-thuat/benh-va-dieu-tri">Hỗ trợ kỹ thuật</a>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link" href="#">Quan hệ cổ đông</a>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link" href="/co-hoi-nghe-nghiep">Cơ hội nghề nghiệp</a>
                    </li>
                    <li class="nav__menu-item">
                        <a class="nav__menu-link" href="/lien-he">Liên hệ</a>
                    </li>
    
                    <ul class="nav__menu-tools">
                        <li>
                            <a href="#">
                                <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="full-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="full-size" src="/static-assets/images/template/icon_search.png" alt="Search icon">
                            </a>
                        </li>
                    </ul>
                </ul>
            </div>
        </div>
    </section>
</header>
<@studio.toolSupport />