<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header>
    <section class="nav">
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
                        <a class="nav__menu-link" href="/gioi-thieu">Giới thiệu</a>
                        <div class="dropdown-menu">
                            <a class="mavinex-nav__link dropdown-item" href="/introduction/lich-su-hinh-thanh">Lịch sử hình thành</a>
                            <a class="mavinex-nav__link dropdown-item" href="/introduction/su-menh">Sứ mệnh tầm nhìn</a>
                            <a class="mavinex-nav__link dropdown-item" href="/introduction/thanh-tich-dat-duoc">Thành tích đạt được</a>
                        </div>
                    </div>
                    
                    
                 <#-- <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown link
                  </a>
    
                      <div class="" aria-labelledby="dropdownMenuLink">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </div> -->
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
    </section>
</header>
<@studio.toolSupport />