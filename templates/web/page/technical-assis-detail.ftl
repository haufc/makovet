<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <#--<link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>-->
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
            <div class="sick-title" style="background-color:#FFCB08">
                <h4 class="violet-color p-1">${contentModel.diseaseName_s}</h4>
            </div>
            <div class="sick-content">
                ${contentModel.diseaseContent_html}
            </div>
            <hr class="line-hozital"/>
            
             <div class="row" id ="panigation-techsp">
                <#if (supportTech)??>
                	<#list supportTech as item>
                        <div class="col-md-2 techsp-item">
                            <p class="d-block">${item.title}</p>
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
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/techsp-detail.js"></script>
  </body>
</html>
<@studio.toolSupport />