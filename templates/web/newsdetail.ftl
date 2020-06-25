<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${contentModel.title_s}</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/Owlcarousel/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/makovet.css"/>
    <style>
    table {
        width: 100%;
    }
    table, tr, td {
        border: 1px solid #333;
    }
    </style>
  </head>
  <body>
    <main>
        <@renderComponent component=contentModel.slideImage_o.item />
        <div class="content">
            <div class="content__title">
            <div class="container" style="padding-left:30px;">
                <#if contentModel.categories_o.item.key = "internalnews" >
                    <h2 style="color:red">Tin nội bộ</h2>
                </#if>
                <#if contentModel.categories_o.item.key ="industrynews" >
                    <h2 style="color:red">Tin ngành</h2>
                </#if>
                <h3>${contentModel.title_s}</h3>
                <img src="${contentModel.image_s!""}" >
                <div>${contentModel.content_html}</div>
                <span class="mr-1 text--italic" style="color: #00549a;">Quay lại trang tin tức</span>
                </a>
            </div>
          </div>
        </div>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <script src="/static-assets/plugins/jquery/jquery.js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/logos.js"></script> 
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/Owlcarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src="/static-assets/js/script.js"></script>
    <script src="/static-assets/js/language.js"></script>
  </body>
</html>
<@studio.toolSupport />