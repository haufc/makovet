<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- products -->
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">sản phẩm</h1>
        </div>
    </div>
    <section class="products">
        <div class="products__container block">
            <div class="products__content">
                <section class="products__list">
                    <div class="products__list-items">
                        <#--<#if (products)??> 
                        	<#list products as product>-->
                                <div class="products__list-item">
                                    <a href="#"><img class="products__img" src="" alt="Product image" width="135" height="140"/></a>
                                    <p class="text--center"></p>
                                </div>
                            <#--</#list>
                        </#if> -->
                    </div>
                </section>
            </div>
    </section>
    <!-- products -->
<@studio.toolSupport />