<div id="slide" class="" data-ride="carousel" <@studio.iceAttr component=contentModel/>>
    <div class="">
        <#if (contentModel.slide_o.item)??>
        <#assign first = true>
        <#list contentModel.image_o.item as element>
            <#if first>
                <img class="carousel-item active" src="${element.image_s!""}" alt="Slide Image">
            <#assign first = false>
            <#else>
                <img class="carousel-item" src="${element.image_s!""}" alt="Slide Image">
            </#if>
        </#list>
    </#if>
    </div>
</div>