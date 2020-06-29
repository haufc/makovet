<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <!-- products -->
    <section class="products">
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">sản phẩm</h1>
            </div>
        </div>
        <div class="products__container block">
            <div class="products__content">
                <section class="products__logos">
                    <div class="col-md-12 d-flex" style="background-color: #FFCB08">
                    	<#list contentModel.groupProduct_o.item as item>
                            <div class="products__logo text--center">
                                <a href="${item.url}">
                                    <img class="products__img" src="${item.avatar}" alt="Product logo" width="265" height="240">
                                    <h3 class="text--uppercase">${item.title}</h3>
                                </a>
                            </div>
                        </#list>
                    </div>
                </section>
                <section class="products__list">
                    <div class="products__list-title">
                        <h1 class="text--uppercase">sản phẩm mới</h1>
                    </div>
                    <div class="products__list-items">
                        <#if (products)??>
                            <div class="col-md-12 d-flex" style="background-color: #FFCB08">
                            	<#list products as product>
                                    <div class="products__list-item">
                                        <a href="${product.url}"><img class="products__img" src="${product.avatar}" alt="Product image" width="135" height="140"/></a>
                                        <p>${product.title}</p>
                                    </div>
                                </#list>
                            </div>
                        </#if>
                    </div>
                </section>
            </div>
    </section>
    <!-- products -->
<@studio.toolSupport />