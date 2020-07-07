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
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="font-size: 20px;position: absolute;top: 35%">${contentModel.photoTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img" style="width:100%; height: 100%;" src="${contentModel.photoAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img" style="width:100%; height: 100%;" src="${contentModel.photoAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a style="position: absolute;top: 40%;font-size: 30px;" href="${contentModel.photoURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items" style="">
                        <div class="col-md-1">
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="font-size: 20px;position: absolute;top: 35%">${contentModel.videoTitle_s}</h3>
                        </div>
                        <div class="col-md-5" style="position: relative;">
                                <figure style="width: 100%; height: 256.757px;">
                                  <a data-fancybox data-small-btn="true" href="${contentModel.videoURL1_s}">
                                    <span class="play-icon"><i class="fa fa-play-circle text-white"></i></span>
                                  </a>
                                  <a data-fancybox data-small-btn="true" href="${contentModel.videoURL1_s}">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" src="${contentModel.videoBanner_s}"/>
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 3%;bottom:0;position: absolute;width: 93.5%;">
                                    <a data-fancybox data-small-btn="true" href="${contentModel.videoURL1_s}">
                                        <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${contentModel.namesVideo1_s}</h3>
                                    </a>
                                </div>
                        </div>
                        <div class="col-md-5">
                           <figure style="width: 100%; height: 256.757px;">
                                  <a data-fancybox data-small-btn="true" href="${contentModel.videoURL2_s}">
                                    <span class="play-icon"><i class="fa fa-play-circle text-white"></i></span>
                                  </a>
                                  <a data-fancybox data-small-btn="true" href="${contentModel.videoURL2_s}">
                                    <img style="height: 100%;object-fit: cover;width: 100%;" src="${contentModel.videoBanner2_s}"/>
                                  </a>
                                </figure>
                                <div class="cap-content" style="background: #322372;left: 3%;bottom:0;position: absolute;width: 93.5%;">
                                    <a data-fancybox data-small-btn="true" href="${contentModel.videoURL2_s}">
                                        <h3 style="margin-bottom: 0 !important; padding: 12px;font-size:16px;" class="video-name text-white text--uppercase" style="fon">${contentModel.namesVideo2_s}</h3>
                                    </a>
                                </div>
                        </div>
                        <div class="col-md-1">
                            <a style="position: absolute;top: 40%;font-size: 30px;" href="${contentModel.videoURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
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
                            <h3 class="text--center violet-color text--uppercase font-weight-bold" style="font-size: 20px;position: absolute;top: 35%">${contentModel.documentTitle_s}</h3>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img " style="width:100%; height: 100%;" src="${contentModel.documentAvatar1_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-5">
                            <img class="products__img " style="width:100%; height: 100%;" src="${contentModel.documentAvatar2_s}" alt="Product image"/>
                        </div>
                        <div class="col-md-1">
                            <a style="position: absolute;top: 40%;font-size: 30px;" href="${contentModel.documentURL_s}"><i class="fa fa-play text-white" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <input id="srcVideo1" value="${contentModel.video1_s}" hidden/>
        <input id="srcVideo2" value="${contentModel.video2_s}" hidden/>
    </section>
    <!-- products -->
<@studio.toolSupport />