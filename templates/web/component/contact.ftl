<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="container">
    <h4 class="text-uppercase font-weight-bold violet-color">${contentModel.companyName_s}</h4>
    <p class="d-block font-weight-bold violet-color">Trụ sở chính:</p>
    <p class="d-block font-weight-bold violet-color">${contentModel.companyHeadquater_s}</p>
    <p class="font-weight-bold violet-color mb-5">Điện thoại: ${contentModel.phoneNumber_s} - Fax: ${contentModel.fax_s} - Email: ${contentModel.email_s}</p>
    <form action="/api/1/services/contactUs.json" method="POST">
        <div class="row">
            <label class="col-md-2 mb-1">Họ tên</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="name" id="name" required/>
            </div>
            <label class="col-md-2 mb-1">Công ty</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="company" id="company" required/>
            </div>
            <label class="col-md-2 mb-1">Email</label>
            <div class="col-md-10 mb-1">
                <input type="email" class="form-control" name="email" id="email" required/>
            </div>
            <label class="col-md-2 mb-1">Điện thoại</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="phone" id="phone" required/>
            </div>
            <label class="col-md-2 mb-1">Tiêu đề</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="title" id="title" required/>
            </div>
            <label class="col-md-2 mb-1">Nội dung</label>
            <div class="col-md-10 mb-1">
                <textarea class="form-control" name="content" id="content"></textarea>
            </div>
            <div class="col-md-12 mb-1 mt-1">
                <p class="text-right">
                    <button onclick="openSpinner()" class="btn btn-warning font-weight-bold violet-color" type="submit">Gửi</button>
                    <button class="btn btn-warning font-weight-bold" type="reset violet-color">Hủy</button>
                </p>
            </div>
            <div class="col-md-12">
                ${contentModel.maps_html}
            </div>
        </div>
    </form>
</div>
<@studio.toolSupport />