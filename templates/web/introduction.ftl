        <section class="services">
                <div class="section-title">
                    <div class="section-title__content block">
                        <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
                    </div>
                </div>
        
        <div class="container" style="padding-left:30px;">
            <img style=" padding-top:20px;" class="img-responsive" src="${contentModel.image_s!""}" >
            <div class="img-responsive new-detail__content" style="color: #636466; font-size: 18px; padding-top:30px;line-height: 1.5; padding-bottom: 60px; font-weight:400">${contentModel.content_html}</div>
            <section class="foot__introduction">
                    <section class="foot__introduction-item intro-first">
                        <a class="button font-bold" href="${contentModel.url1_s}" >${contentModel.button1_s}</a>
                    </section>
                    <section class="foot__introduction-item intro-mid">
                        <a class="button font-bold" href="${contentModel.url2_s}">${contentModel.button2_s}</a>
                    </section>
                    <section class="foot__introduction-item intro-last">
                        <a class="button font-bold" href="${contentModel.url3_s}">${contentModel.button3_s}</a>
                    </section>
                </section>
        </div>
        </section>