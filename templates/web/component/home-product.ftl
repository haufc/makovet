<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <!-- products -->
    <section class="products">
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">sản phẩm</h1>
            </div>
        </div>
        <div class="products__container block p-lg-0 p-md-0">
            <div class="products__content">
                <section class="products__logos">
                	<#list contentModel.groupProduct_o.item as item>
                        <div class="products__logo text--center">
                            <a href="${item.groupChildProductURL_s}">
                                <img class="products__img" style="width: 100%; height:auto;" src="${item.groupProductIcon_s}" alt="Product logo" width="265" height="240">
                                <h3 class="text--uppercase violet-color" style="font-size: 20px;">${item.groupProductName_s}</h3>
                            </a>
                        </div>
                    </#list>
                </section>
                <section class="products__list">
                    <div class="products__list-title">
                        <h1 class="text--uppercase violet-color">sản phẩm mới</h1>
                    </div>
                    <div class="products__list-items">
                        <#if (products)??>
                        	<#list products as product>
                                <div class="products__list-item">
                                    <a href="${product.url}"><img class="products__img" src="${product.avatar}" alt="Product image" width="135" height="140"/></a>
                                    <p class="text--center">${product.title}</p>
                                </div>
                            </#list>
                        </#if>
                    </div>
                </section>
            </div>
    </section>
    <!-- products -->
<@studio.toolSupport />