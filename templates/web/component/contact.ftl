<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="container">
    <h4 class="text-uppercase">${contentModel.companyName_s}</h4>
    <p class="d-block">Trụ sở chính:</p>
    <p class="d-block">${contentModel.companyHeadquater_s}</p>
    <p>Điện thoại: ${contentModel.phoneNumber_s} - Fax: ${contentModel.fax_s} - Email: ${contentModel.email_s}</p>
    <form action="" method="POST">
        <div class="row">
            <label class="col-md-2">Họ tên</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="name" id="name"/>
            </div>
            <label class="col-md-2">Công ty</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="company" id="company"/>
            </div>
            <label class="col-md-2">Email</label>
            <div class="col-md-10">
                <input type="email" class="form-control" name="email" id="email"/>
            </div>
            <label class="col-md-2">Điện thoại</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="phone" id="phone"/>
            </div>
            <label class="col-md-2">Tiêu đề</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="title" id="title"/>
            </div>
            <label class="col-md-2">Nội dung</label>
            <div class="col-md-10">
                <textarea class="form-control" name="content" id="content"></textarea>
            </div>
            <div class="col-md-12 mb-1 mt-1">
                <p class="text-right">
                    <button class="btn btn-warning" type="submit">Gửi</button>
                    <button class="btn btn-warning" type="reset">Hủy</button>
                </p>
            </div>
            <label class="col-md-2"></label>
            <div class="col-md-10">
                ${contentModel.maps_html}
            </div>
        </div>
    </form>
</div>
<@studio.toolSupport />