<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link href="/static-assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style type="text/css">
			#magazine{
				width:576px;
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
		<h1 class="text-center">Hello World</h1>
		<div id="magazine">
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/01.jpg);"></div>
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/02.jpg);"></div>
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/03.jpg);"></div>
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/04.jpg);"></div>
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/05.jpg);"></div>
			<div style="background-image:url(/static-assets/plugins/turnjs-master/pages/06.jpg);"></div>
		</div>
		
		<@renderComponent component=contentModel.slideLogo_o.item />
        <@renderComponent component=contentModel.footer_o.item />
		<!-- jQuery -->
		<script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/static-assets/plugins/turnjs-master/turn.js"></script>
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



