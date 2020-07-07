<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- products -->
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <section class="products">
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.photoTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.photoAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.photoURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.videoTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img id="video-1" class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                           <img id="video-2" class="products__img img-full" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.videoURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="margin-top: 150%;font-size: 20px;">${contentModel.documentTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.documentAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img img-full" src="${contentModel.documentAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a href="${contentModel.documentURL_s}">Xem</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
    <!-- products -->
<@studio.toolSupport />