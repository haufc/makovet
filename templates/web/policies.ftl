<#import "/templates/system/common/cstudio-support.ftl" as studio />
        <section class="services">
                <div class="section-title">
                    <div class="section-title__content block">
                        <h1 class="section-title__content-text text--uppercase">CHÍNH SÁCH NHÂN SỰ</h1>
                    </div>
                </div>
        
        <div class="container" style="padding-left:30px;">
            <h3 class="" style="color: #000; padding-top:20px; font-size: 22px;" >${contentModel.title_s}</h3>
            <img style="padding-top:20px;" class="img-center img-responsive" src="${contentModel.image_s!""}" >
            <div style="color: #00549a; font-size: 16px; padding-top:30px;line-height: 1.5;">${contentModel.content_html}</div>
        </div>
        </section>
<@studio.toolSupport />