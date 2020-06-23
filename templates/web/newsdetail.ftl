<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <head>
  </head>
  <body>
    <div class="content">
        <@renderComponent component=contentModel.slideImage_o.item />
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
<@studio.toolSupport />