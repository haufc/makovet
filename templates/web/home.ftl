<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${contentModel.title_s}</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>

    <!-- Keysoft CSS -->
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.sections_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
    </main>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
     <!-- jQuery -->
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>

    <!-- Owl Carousel JS -->
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    </body>
</html>
<@studio.toolSupport />