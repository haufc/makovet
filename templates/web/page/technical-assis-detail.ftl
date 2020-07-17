<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="Mekovet, Cai Lậy, Dược thú y, Thuốc cho heo,Thuốc cho gia súc, Thuốc cho gia cầm, Thuốc cho thủy sản, Thuốc nhập khẩu, Thuốc xuất khẩu, Tin tức ngành chăn nuôi, Biến động thị trường, Tình hình dịch bệnh, tuyển dụng, việc làm">
    <meta name="revisit-after" content="1 days">
    <meta name="geo.placename" content="Khu 5, thị trấn Cai Lậy, huyện Cai Lậy, tỉnh Tiền Giang">
    <meta name="geo.position" content="21.021691;105.824931">
    <meta name="geo.region" content="VN-Hanoi">
    
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
        .sick-content {
            font-family: Roboto;
            font-weight: 500;
            font-size: 18px;
        }
    </style>
    <script src="https://ajax.googleapis.`com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content">
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase" id="parent-title"></h1>
            </div>
        </div>
        <div class="container pl-lg-0 pl-md-0">
            <div class="sick-title" style="background-color:#FFCB08">
                <h2 class="violet-color p-2 font-weight-bold" style="font-size: 30px;">${contentModel.diseaseName_s}</h2>
            </div>
            <div class="sick-content">
                ${contentModel.diseaseContent_html}
            </div>
            <hr class="line-hozital"/>
            
             <div id ="panigation-techsp" class="mb-3" style="line-height: 2;">
                <#if (supportTech)??>
                	<#list supportTech as item>
                        <div class="techsp-item">
                            <a class="d-block violet-color font-weight-bold noDecoration" href="${item.url}">${item.title}</a>
                        </div>
                    </#list>
                </#if>
            </div>
            <a href="${contentModel.parentURL_s}"><span class="mr-1 violet-color view-more font-weight-bold">Xem tiếp</span><i class="fa fa-play orange-color"></i></a>
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
    <script src="/static-assets/js/techsp-detail.js"></script>
    <script src="/static-assets/js/search.js"></script>
    <input hidden value="${contentModel.technicalAssistance_o.item.key}" id="txt-key"/>
    <div id="lst-cate">
        <#list categories.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
  </body>
  <script>
    $(document).ready(function(){
        var lstCate = $('#lst-cate').children();
        for (let i = 0; i< lstCate.length; i++) {
           let strSplit = $(lstCate[i]).val().split('/');
           if (strSplit[0] == $('#txt-key').val()) {
               $('#parent-title').text(strSplit[1]);
           }
        }
        var url = window.location.href;
        if(url.indexOf('/en') > -1) {
            $('.view-more')text('See more');
        }
    });
  </script>
</html>
<@studio.toolSupport />