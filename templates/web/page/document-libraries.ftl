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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css">
    
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <script src="/static-assets/js/pagination.js"></script>
    <style>
        .play-icon {
            background: #FEBD11;
            border-radius: 50%;
            color: #00559a;
            display: block;
            font-size: 25px;
            height: 45px;
            left: 50%;
            line-height: 45px;
            position: absolute;
            text-align: center;
            top: 40%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            width: 45px;
        }
    </style>
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
                    <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
                </div>
            </div>
            <div class="container">
                <div class="row" id ="panigation-photo">
                    <#list contentModel.pDF_o.item as pdf>
                    	<#assign file =  pdf.key />
                    	${file}
                    </#list>
                   <#list contentModel.document_o.item as doc>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 mb-5 photo-item">
                            <div class="item-box" style="position: relative;">
                                <figure style="width: 100%; height: 256.757px;">
                                  <a href="#">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" id="img-${doc?index}" src="${doc.banner_s}" alt="${doc.documentName_s}"/>
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 0;bottom:0;position: absolute;width: 100%;">
                                    <a  href="#">
                                        <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${doc.documentName_s}</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </#list>
                </div>
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagi justify-content-center">
                        <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </main>
  
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/video.js"></script>
  </body>
</html>
<@studio.toolSupport /> 
