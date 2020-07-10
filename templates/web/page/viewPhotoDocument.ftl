<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="keywords" content="Mekovet, Cai Lậy, Dược thú y, Thuốc cho heo,Thuốc cho gia súc, Thuốc cho gia cầm, Thuốc cho thủy sản, Thuốc nhập khẩu, Thuốc xuất khẩu, Tin tức ngành chăn nuôi, Biến động thị trường, Tình hình dịch bệnh, tuyển dụng, việc làm">
        <meta name="revisit-after" content="1 days">
        <meta name="geo.placename" content="Khu 5, thị trấn Cai Lậy, huyện Cai Lậy, tỉnh Tiền Giang">
        <meta name="geo.position" content="21.021691;105.824931">
        <meta name="geo.region" content="VN-Hanoi">
        <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
        
        <!-- FontAwesome -->
        <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
		<title>Title Page</title>
        
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
        
		<!-- Bootstrap CSS -->
		<link href="/static-assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
		
		 <link rel="stylesheet" href="/static-assets/css/custom.css"/>
        <link rel="stylesheet" href="/static-assets/css/dtycl.css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style type="text/css">
			#magazine{
				max-width:1140px;
	            height:752px;
			}
			#magazine .turn-page{
				background-color:#ccc;
				background-size:100% 100%;
			}
			</style>
	</head>
	<body>
	    <@renderComponent component=contentModel.header_o.item />
		<#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">Thư viện tài liệu</h1>
            </div>
        </div>
		<main>
		    <div class="container">
		        <div class="sick-title" style="background-color:#FFCB08">
                    <h2 class="violet-color p-2 font-weight-bold" style="font-size: 30px;">${contentModel.title_s}</h2>
                </div>
		        <div id="magazine">
        			<#list contentModel.document_o.item as img>
                    	<div style="background-image:url(${img.imageDocument_s});"></div>
                    </#list>
        		</div>
        		<hr class="line-hozital" style="margin-bottom: 3%; margin-top: 7%;"/>
        		<a href="/thu-vien-tai-lieu"><i class="fa fa-arrow-left" aria-hidden="true"></i> Quay lại trang thư viện tài liệu</a>
		    </div>
		</main>
		
		<@renderComponent component=contentModel.slideLogo_o.item />
        <@renderComponent component=contentModel.footer_o.item />
		<!-- jQuery -->
		<script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="/static-assets/js/popper.min.js"></script>
		<script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
		<script type="text/javascript" src="/static-assets/plugins/turnjs-master/turn.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
        <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
        <script src="/static-assets/js/logos.js"></script>
        <script src="/static-assets/js/group-product.js"></script>
        <script src="/static-assets/js/logos.js"></script>
        <script src="/static-assets/js/slide.js"></script>
        <script src="/static-assets/js/nav.js"></script>
		
		<script type="text/javascript">

			$(window).ready(function() {
				$('#magazine').turn({
									display: 'single',
									acceleration: true,
									gradients: !$.isTouch,
									elevation:50,
									when: {
										turned: function(e, page) {
											/*console.log('Current view: ', $(this).turn('view'));*/
										}
									}
								});
			});
			
			
			$(window).bind('keydown', function(e){
				
				if (e.keyCode==37)
					$('#magazine').turn('previous');
				else if (e.keyCode==39)
					$('#magazine').turn('next');
					
			});
		
		</script>
	</body>
</html>
<@studio.toolSupport /> 



