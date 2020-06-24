<#import "/templates/system/common/cstudio-support.ftl" as studio />
        <div class="container" style="padding-left:30px;">
            <h3 class="" style="color: #00549a; padding-top:20px;" >${contentModel.title_s}</h3>
            <img style=" padding-top:20px; " class="image-center img-responsive" src="${contentModel.image_s!""}" >
            <div style="color: #00549a; font-size: 16px; padding-top:30px;">${contentModel.content_html}</div>
        </div>
<@studio.toolSupport />