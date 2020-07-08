<#import "/templates/system/common/cstudio-support.ftl" as studio />
<header>
    <section class="nav">
        <div class="nav__responsive" style="margin-left: auto">
        <div class="nav__container">
            <div class="nav__logo">
                <a href="/trang-chu"><img src="${contentModel.logo_s}" alt="Logo"></a>
            </div>

            <a class="nav__btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </a>

            <ul class="nav__tools flex">
                <li class="nav__tool-item">
                    <a href="/trang-chu" class="search_icon">
                        <img class="full-size" src="/static-assets/images/template/icon_home.png" alt="Home icon">
                    </a>
                </li>
                <li class="nav__tool-item">
                    <a href="#">
                        <img class="full-size" src="/static-assets/images/template/icon_flag.png" alt="Flag icon">
                    </a>
                </li>
                <#---------- Search Form ---------->
                <li class="nav__tool-item search-form">
                    <button class="nav__menu-link" toggleSearchBar()>
                        <i class="fas fa-search"></i>
                    </button>
                </li>
            </ul>

            <ul class="nav__menu" id="menu">
                <button class="nav__menu-btn" onclick="toggleNav()">
                    <i class="fas fa-times"></i>
                </button>
                <li class="nav__menu-item">
                    <div class="dropdown">
                        <a class="nav__menu-link dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="/gioi-thieu">Giới thiệu</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="nav__menu-link dropdown-item" href="/gioi-thieu-chung/lich-su-hinh-thanh">Lịch sử hình thành</a>
                            <a class="nav__menu-link dropdown-item" href="/gioi-thieu-chung/su-menh">Sứ mệnh tầm nhìn</a>
                            <a class="nav__menu-link dropdown-item" href="/gioi-thieu-chung/thanh-tich-dat-duoc">Thành tích đạt được</a>
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
                    <a class="nav__menu-link" href="/quan-he-co-dong">Quan hệ cổ đông</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/co-hoi-nghe-nghiep">Cơ hội nghề nghiệp</a>
                </li>
                <li class="nav__menu-item">
                    <a class="nav__menu-link" href="/lien-he">Liên hệ</a>
                </li>

              
            </div>
        </div>
        <div id="searchBar" class="search-bar">
            <div class="input-group">
                <input 
                    type="text" 
                    class="form-control rounded-0" 
                    placeholder="" 
                    id="txtSearch"
                    onfocus="this.placeholder=' '"
                    onblur="this.placeholder='Nhập từ khóa tìm kiếm!'"
                >
                <div class="input-group-append">
                  <button type="button" class="btn btn-secondary rounded-0" onclick="search()"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </div>
    </section>
</header>
<style>
    .search-bar{
        display:none;
    }
</style>
<@studio.toolSupport />