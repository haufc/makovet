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
    <link rel="stylesheet" href="/static-assets/css/dtycl.css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="section-title">
            <div class="section-title__content block">
                <span class="d-inline"><span class="section-title__content-text text--uppercase" id="parent-title"></span>
                <span class="text-white" style="font-size: 30px;" id="child-pr"></span></span>
            </div>
        </div>
        <div class="container mb-md-5">
            <div class="d-flex mb-md-5">
                <div class="col-md-6 p-left-0">
                    <img class="img-full" src="${contentModel.leftImage_s}"/>
                </div>
                <div class="col-md-6 banner-gr-child-pr">
                    <img class="banner-img" src="${contentModel.rightimage_s}"/>
                </div>
            </div>
            
            <hr class="line-hozital" style="margin-bottom: 1%; margin-top: 0;"/>
            <hr class="line-hozital"style="margin-bottom: 5%; margin-top: 0;"/>
        </div>
         <#if (contentModel.productChildgroup_o.item)??>
            <#list (contentModel.productChildgroup_o.item)![] as section>
                <div>
                    <@renderComponent parent=contentModel component=section />
                </div>
            </#list>
        </#if>
    </main>
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
    <script src="/static-assets/js/group-child-product.js"></script>
    <script>
        $(document).ready(function(){
           // var title = "";
            var lstCate = $('#lst-categories').children();
            var childCate = $('#child-cate').children();
            
            for (let i = 0; i< lstCate.length; i++) {
               let strSplit = $(lstCate[i]).val().split('/');
               if (strSplit[0] == $('#group-pr').val()) {
                  // title += (strSplit[1] + "/");
                   $('#parent-title').text(strSplit[1] + "/");
               }
            }
            
            for (let i = 0; i< childCate.length; i++) {
               let strSplit = $(childCate[i]).val().split('/');
               if (strSplit[0] == $('#group-cpr').val()) {
                   //title += strSplit[1];
                   $('#child-pr').text(strSplit[1]);
               }
            }

           // $('#child-title').text(title);
        });
    </script>
  </body>
</html>
<@studio.toolSupport />