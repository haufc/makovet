<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <#--<link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>-->
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <#--<link rel="stylesheet" href="/static-assets/css/styles.css"/>
    <script src="/static-assets/js/pagination.js"></script>-->
    <link rel="stylesheet" href="/static-assets/css/custom.css">
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <script src="https://ajax.googleapis.`com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
     <#list (contentModel.section_o.item)![] as section>
        <@renderComponent parent=contentModel component=section />
    </#list>
    <div class="container">
         <div class="row">
            <div class="col-md-4" style="padding-right:0">
                <p>${contentModel.productName_s}</p>
            </div>
            <div class="col-md-4" style="padding:0">
                <img src="${contentModel.productImage_s}"/>
            </div>
            <div class="col-md-4" style="padding-right:0">
                <p>Đặt mua</p>
            </div>
         </div>
         <div class="col-md-12">
            ${contentModel.productDescription_html}
         <div>
         <hr/>
         <h4>SẢN PHẨM TƯƠNG TỰ</h4>
         <div class="col-md-12 row"> 
            <#if (productOther)??>
                <#list productOther as item>
                    <div class="col-md-2">
                        <a href="${item.url}"><img style="max-width:100%; height:auto;" src="${item.avatar}"/></a>
                        <p class="text-center">${item.title}</p>
                    </div>
                </#list>
            </#if>
         </div>
    </div>
    </div>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
  </body>
</html>
<@studio.toolSupport />