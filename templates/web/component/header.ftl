<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header>
    <section class="nav">
        <div class="nav__container">
            <div class="nav__logo">
                <img src="/static-assets/images/template/logo.png" alt="Logo">
            </div>

            <a class="nav__btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </a>

            <ul class="nav__tools flex">
                <li class="nav__tool-item">
                    <a href="#">
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
                    <a class="nav__menu-link" href="#">Giới thiệu</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link active" href="#">Sản phẩm</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="#">Tin tức - Sự kiện</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="#">Hỗ trợ kỹ thuật</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="#">Quan hệ cổ đông</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="#">Cơ hội nghề nghiệp</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="#">Liên hệ</a>
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
    </section>
</header>
<@studio.toolSupport />