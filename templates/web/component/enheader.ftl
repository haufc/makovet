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
                    <a class="nav__menu-link" href="/en/introduction/about-makovet">Introduction</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link active" href="/en/products">Product</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/en/news">News - Events</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/en/disease-treatment">Customer Support</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/en/investor-relation">Investor Relation</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/en/career-opportunities">Career</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/en/contact">Contact</a>
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