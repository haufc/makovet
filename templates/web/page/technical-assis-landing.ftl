<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <#--<link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>-->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel/dist/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <script src="https://ajax.googleapis.`com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="content">
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="container">
            <div class="row">
                <#if (contentModel.technicalAssistanceCompoent_o.item)?? && contentModel.section_o??>
                    <#list (contentModel.technicalAssistanceCompoent_o.item)![] as section>
                        <div class="group-pr-${section?index}">
                            <@renderComponent parent=contentModel component=section />
                        </div>
                    </#list>
                </#if>
            </div>
        </div>
        
        <div style="background-color: #FFCB08; height: 15px;"></div>
        <div class="container">
            <div class="row mt-3">
                <div class="col-md-6">
                    <img src="${contentModel.supportCustomerImage_s}" class="img-full"/>
                </div>
                <div class="col-md-6 violet-color">
                    ${contentModel.supportCustomerContent_html}
                    <div class="d-flex">
                        <button class="btn-desc violet-color font-weight-bold" style="width: 49%; margin-right: 2%; background-color: #FFCB08;">${contentModel.phoneNumber_s}</button>
                        <button class="btn-desc report-price font-weight-bold text-white" href="#" style="width: 49%; background-color: #322372;">Email</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel/dist/owl.carousel.min.js"></script>
  </body>
</html>
<@studio.toolSupport />