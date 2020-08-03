<#import "/templates/system/common/cstudio-support.ftl" as studio />
<style>
    .nav {
        position: relative;
    }
    .btn-search {
        border: none;
        background: transparent;
    }
    .search-bar {
        position: absolute;
        bottom: -10%;
        left: -100%;
        z-index: 5;
        width: 100%;
        max-width: 500px;
        padding: 5px;
        display: flex;
        background-color: #322372;
        transition: 0.5s ease-in-out;
    }
    .search-bar.show {
        left: 15%;
    }
    .search-bar > input,
    .search-bar > i {
        border: none;
    }
    .search-bar > input {
        padding: 5px;
        width: 100%;
    }
    .search-bar > input:focus {
        border: none;
    }
    .search-bar > i {
        padding: 5px;
        cursor: pointer;
        background-color: #fff;
    }
    .nav__menu-search-btn{
        border: none;
        background: #fff;
    }
    .nav__menu:hover .nav__sub-menu {
        display: block;
    }

    .nav__sub-menu {
        position: absolute;
        bottom: -150px;
        z-index: 10;
        width: 160px;
        display: none;
        background: #ddd;
        -webkit-transition: 0.3s;
        transition: 0.3s;
    }

    .nav__sub-menu-item {
        margin: 15px;
    }
</style>
<header>
    <section class="nav">   
        <div class="search-bar" id="searchBar">
            <input type="text" id="txtSearch">
            <button onclick="search()">
                <i class="fas fa-search"></i>
            </button>
        </div>
        <div class="nav__responsive" style="margin-left: auto">
        <div class="nav__container" id="nav-content">
            <div class="nav__logo">
                <a href="/trang-chu"><img src="${contentModel.logo_s}" alt="Logo"></a>
            </div>
            
            <!-- 29/07/2020 -->
            <div class="nav__hotline">
                <p class="font-title font-bold" >Hotline: <span class="hotline-span" >0273 382 6462</span></p>
            </div>
            
            <a class="nav__btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </a>

            <ul class="nav__tools flex">
                <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="icon-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                </li>
                <li class="nav__tool-item">
                    <a href="/en/home">
                        <img class="icon-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                    </a>
                </li>
                <#---------- Search Form ---------->
                <li class="nav__tool-item search-form">
                    <button class="nav__menu-search-btn" onclick="toggleSearchBar()">
                        <i class="fas fa-search" style="color: #322372; font-size: 21px;"></i>
                    </button>
                </li>
            </ul>

            <ul class="nav__menu" id="menu">
                <button class="nav__menu-btn" onclick="toggleNav()">
                    <i class="fas fa-times"></i>
                </button>
                <li class="nav__menu-item dropdown">
                    <a class="nav__menu-link font-title" href="/gioithieu">Giới thiệu</a>
                    <ul class="nav__sub-menu">
                    <li class="nav__sub-menu-item">
                        <a href="#">Giới thiệu chung</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a href="#">Tầm nhìn sứ mệnh</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a href="#">Lịch sử hìn hình thành</a>
                    </li>
                    <li class="nav__sub-menu-item">
                        <a href="#">Thành tích đạt được</a>
                    </li>
                </ul>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/san-pham">Sản phẩm</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/tin-tuc">Tin tức - Sự kiện</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/ho-tro-ky-thuat/benh-va-dieu-tri">Thông tin kỹ thuật</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/quan-he-co-dong">Quan hệ cổ đông</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/co-hoi-nghe-nghiep">Cơ hội nghề nghiệp</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/lien-he">Liên hệ</a>
                </li>
                <ul class="nav__menu-tools">
                    <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                    </li>
                    <li class="nav__tool-item">
                    <a href="/en/home">
                        <img class="full-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                    </a>
                    </li>
                    <#---------- Search Form ---------->
                    <li class="nav__tool-item search-form">
                    <button class="nav__menu-search-btn" onclick="toggleSearchBar()">
                        <i class="fas fa-search"></i>
                    </button>
                    </li>
                </ul>
                </ul>
            </div>
        </div>
    </section>
</header>
<@studio.toolSupport />