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
    .nav__sub-menu {
    position: absolute;
    padding-top: 10px;
    z-index: 10;
    width: 160px;
    display: none;
    background: #fff;
    -webkit-transition: 0.3s;
    transition: 0.3s;
    }

    .nav__sub-menu-item {
    position: relative;
    }

    .nav__sub-menu-item:hover .nav__dropdown {
    display: block;
    }

    .nav__sub-link {
    display: block;
    width: 100%;
    padding: 5px;
    }

    .nav__sub-link:hover {
    color: #fff;
    background: #333;
    }

    .nav__dropdown {
    position: absolute;
    top: 0;
    right: -160px;
    width: 160px;
    display: none;
    background: #f6f6f6;
    }   
    .nav__sub-menu-item {
    padding: 10px 15px;
    }
    .nav__dropdown-item{
    margin: 10px;
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
        <div class="nav__container">
            <div class="nav__logo">
                <a href="/en/home"><img src="${contentModel.logo_s}" alt="Logo"></a>
            </div>
            
             <div class="nav__hotline">
                <p class="font-title font-bold" style="font-size: 13px; color: #322372;">Hotline: <span style="font-size:13px;">0273 382 6462</span></p>
            </div>

            <a class="nav__btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </a>

            <ul class="nav__tools flex">
                <li class="nav__tool-item">
                    <a href="/en/home" class="search_icon">
                        <img class="icon-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                </li>
                <li class="nav__tool-item">
                    <a href="/trang-chu">
                        <img class="icon-size" src="/static-assets/images/template/vietnam-flag-icon-32.png" alt="Flag icon">
                    </a>
                </li>
                <#---------- Search Form ---------->
                <li class="nav__tool-item search-form">
                    <button class="nav__menu-search-btn" onclick="toggleSearchEnBar()">
                        <i class="fas fa-search" style="color: #322372; font-size: 21px;"></i>
                    </button>
                </li>
            </ul>

            <ul class="nav__menu" id="menu">
                <button class="nav__menu-btn" onclick="toggleNav()">
                    <i class="fas fa-times"></i>
                </button>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/introduction">Introduction</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/products">Product</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/news">News - Events</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/disease-treatment">Customer Support</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/investor-relation">Investor Relation</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/career-opportunities">Career</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link font-title" href="/en/contact">Contact</a>
                </li>
                <ul class="nav__menu-tools">
                    <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                    </li>
                    <li class="nav__tool-item">
                    <a href="/trang-chu">
                        <img class="full-size" src="/static-assets/images/template/vietnam-flag-icon-32.png" alt="Flag icon">
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