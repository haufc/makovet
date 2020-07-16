<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <style>
        .product-header__name {
            position : relative;
        }
        .product-header__name--content {
            position : absolute;
            top: 45%;
            left: 35%;
            font-size: 30px;
        }
    </style>
    <script src="/static-assets/js/pagination.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="content">
            <div class="section-title">
                <div class="section-title__content block">
                    <span class="d-inline">
                        <span class="section-title__content-text text--uppercase" id="parent-title"></span>
                        <span class="text-white" id="child-title" style="font-size: 30px;"></span>
                    </span>
                </div>
            </div>
            <div class="container">
                 <#--<div class="d-flex mb-4" style="background-color: #ffcb0c;">
                        <div class="product-info m-auto product-name"><h1 class="font-weight-bold violet-color text-center" style="font-size: 20px; margin-top: 13%;">${contentModel.productName_s}</h1></div>
                        <div class="product-info product-image" style="padding: 3%;"><img class="img-center" src="${contentModel.productImage_s}" width="254" height="262"/></div>
                        <div class="product-info text-center m-auto product-book"><a href="/lien-he"><span class="product-buy text-white font-weight-bold">Đặt mua</span></a></div>
                </div> -->
                <div class="product-header row" style="background-color: #ffcb0c;">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 product-header__name"><h1 class="font-weight-bold violet-color text--uppercase product-header__name--content">${contentModel.productName_s}</h1></div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 product-header__img" style="padding: 3%;"><img class="product-header__content" src="${contentModel.productImage_s}" width="254" height="262"/></div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><a href="/lien-he"><span class="text-white font-weight-bold">Đặt mua</span></a></div>
                </div>
                <div class="col-md-12 p-lg-0 p-md-0 mb-3">
                    ${contentModel.productDescription_html}
                </div>
                <div class="products__list-title">
                    <h1 class="text--uppercase violet-color diffrence-product">sản phẩm khác</h1>
                </div>
                <div class="mt-4">
                     <div class="row" id="panigation-product">
                        <#if (productOther)??>
                        	<#list productOther as product>
                                <div class="col-lg-2 col-md-2 col-sm-6 product-item mb-3">
                                    <a href="${product.url}"><img  class="img-100" src="${product.avatar}" width="120" height="83"/></a>
                                    <p style="font-size: 23px;" class="d-block font-weight-bold violet-color mt-3">${product.title}</p>
                                </div>
                            </#list>
                        </#if>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagi justify-content-center">
                            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/product-detail.js"></script>
    <script src="/static-assets/js/search.js"></script>
    <input hidden value="${contentModel.productgrouplv1_o.item.key}" id="category"/>
    <input hidden value="${contentModel.productgrouplv2_o.item.key}" id="child-category"/>
    <div id="lst-categories">
        <#list categories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <div id="child-cate">
        <#list childCategories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <script>
    $(document).ready(function(){
        var lstCate = $('#lst-categories').children();
        var childCate = $('#child-cate').children();
        
        for (let i = 0; i< lstCate.length; i++) {
           let strSplit = $(lstCate[i]).val().split('/');
           if (strSplit[0] == $('#category').val()) {
               $('#parent-title').text(strSplit[1] + "/");
           }
        }
        
        for (let i = 0; i< childCate.length; i++) {
           let strSplit = $(childCate[i]).val().split('/');
           if (strSplit[0] == $('#child-category').val()) {
               $('#child-title').text(strSplit[1])
           }
        }
        
        var url = window.location.href;
        if (url.indexOf('/en') > -1) {
            $('.diffrence-product').text('other products');
        }
    });
    
    $('body').find('strong').addClass('violet-color');
    $('body').find('strong').parent('span').children().removeClass('violet-color');
    
  </script>
  </body>
</html>
<@studio.toolSupport /> 
