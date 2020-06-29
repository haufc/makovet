<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mavinex">
        <div>
            <img src="${firstNew.image}" alt="" class="img--news" width="540" height="352">
            <a class="mt-3 rounded-0" href="${firstNew.url}">
            <h4 style="color: #322372; padding-top: 20px;"  style="padding-top:9px;">${firstNew.title}</h4>
            <p style="color: #828385; padding-top: 10px;" class="limit-text" max-length="50" class="firstnew-content">${firstNew.content}<p>
                <span class="mr-1 text--italic title-vn" style="color:#828385">Xem tiếp</span>
                <i class="fa fa-play text--red"></i>
            </a>
        </div>
    </div>
<@studio.toolSupport />
<script>
$('.firstnew-content').each(function (f) {
  var newstr = $(this).text().substring(0,20);
  $(this).text(newstr).append("...");
});
</script>