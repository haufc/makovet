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
    <script src="https://ajax.googleapis.`com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="content">
        <@renderComponent component=contentModel.header_o.item />
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <#if (contentModel.technicalAssistanceCompoent_o.item)?? && contentModel.section_o??>
                    <#list (contentModel.technicalAssistanceCompoent_o.item)![] as section>
                        <div class="group-pr-${section?index} col-lg-4 col-md-4 col-sm-6 col-xs-6">
                            <@renderComponent parent=contentModel component=section />
                        </div>
                    </#list>
                </#if>
            </div>
        </div>
        
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">hỗ trợ khách hàng</h1>
            </div>
        </div>
        <div class="container">
            <div class="row mt-3">
                <div class="col-md-6">
                    <img src="${contentModel.supportCustomerImage_s}" class="img-full"/>
                </div>
                <div class="col-md-6" style="line-height: 1.5;">
                    ${contentModel.supportCustomerContent_html}
                    <div class="d-flex">
                        <button class="btn-desc violet-color font-weight-bold" style="width: 49%; margin-right: 2%; background-color: #FFCB08;">${contentModel.phoneNumber_s}</button>
                        <button data-toggle="modal" data-target="#exampleModal" class="btn-desc report-price font-weight-bold text-white" href="#" style="width: 49%; background-color: #322372;">Email</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="/api/1/services/contactUs.json" method="POST">
                <div class="row">
                    <label class="col-md-2 mb-1 mt-5">Họ tên</label>
                    <div class="col-md-10 mb-1 mt-md-5">
                        <input type="text" class="form-control" name="name" id="name" required/>
                    </div>
                    <label class="col-md-2 mb-1">Công ty</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="company" id="company" required/>
                    </div>
                    <label class="col-md-2 mb-1">Email</label>
                    <div class="col-md-10 mb-1">
                        <input type="email" class="form-control" name="email" id="email" required/>
                    </div>
                    <label class="col-md-2 mb-1">Điện thoại</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="phone" id="phone" required/>
                    </div>
                    <label class="col-md-2 mb-1">Tiêu đề</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="title" id="title" required/>
                    </div>
                    <label class="col-md-2 mb-1">Nội dung</label>
                    <div class="col-md-10 mb-1">
                        <textarea class="form-control" name="content" id="content"></textarea>
                    </div>
                    <div class="col-md-12 mb-1 mt-1">
                        <p class="text-right">
                            <button onclick="openSpinner()" class="btn btn-warning font-weight-bold violet-color" type="submit">Gửi</button>
                            <button class="btn btn-warning font-weight-bold violet-color" type="reset">Hủy</button>
                        </p>
                    </div>
                    <div class="col-md-12">
                        ${contentModel.mapsFrame_s}
                    </div>
                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <input hidden value="${contentModel.technicalAssistanceCompoent_o.item?size}" id="group-pr-length"/>
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
    <script src="/static-assets/js/techsupport.js"></script>
    <script src="/static-assets/js/search.js"></script>
  </body>
</html>
<@studio.toolSupport />