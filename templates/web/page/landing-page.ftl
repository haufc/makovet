<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
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
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <script src="/static-assets/js/pagination.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <style>

        #myImg {
          border-radius: 5px;
          cursor: pointer;
          transition: 0.3s;
        }
        
        #myImg:hover {opacity: 0.7;}
        
        /* The Modal (background) */
        .modal {
          display: none; /* Hidden by default */
          position: fixed; /* Stay in place */
          z-index: 1; /* Sit on top */
          padding-top: 100px; /* Location of the box */
          left: 0;
          top: 0;
          width: 100%; /* Full width */
          height: 100%; /* Full height */
          overflow: auto; /* Enable scroll if needed */
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }
        
        /* Modal Content (image) */
        .modal-content {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
        }
        
        /* Caption of Modal Image */
        #caption {
          margin: auto;
          display: block;
          width: 80%;
          max-width: 700px;
          text-align: center;
          color: #ccc;
          padding: 10px 0;
          height: 150px;
        }
        
        /* Add Animation */
        .modal-content, #caption {  
          -webkit-animation-name: zoom;
          -webkit-animation-duration: 0.6s;
          animation-name: zoom;
          animation-duration: 0.6s;
        }
        
        @-webkit-keyframes zoom {
          from {-webkit-transform:scale(0)} 
          to {-webkit-transform:scale(1)}
        }
        
        @keyframes zoom {
          from {transform:scale(0)} 
          to {transform:scale(1)}
        }
        
        /* The Close Button */
        .close {
          position: absolute;
          top: 15px;
          right: 35px;
          color: #f1f1f1;
          font-size: 40px;
          font-weight: bold;
          transition: 0.3s;
        }
        
        .close:hover,
        .close:focus {
          color: #bbb;
          text-decoration: none;
          cursor: pointer;
        }
        
        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 700px){
          .modal-content {
            width: 100%;
          }
        }
    </style>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
         <!-- =========================
        MODAL DIALOGS
        ============================== -->
        
        <div class="modal fade" id="success-dialog" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header text-left mb-2 bg-success text-white">
                        <#--<button type="button" class="close" data-dismiss="modal">&times;</button> 
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="fa fa-times" aria-hidden="true"></i>
                            <span class="close"></span>
                        </button>-->
                        <h3 id="success-dialog-header" class="modal-title" style="font-size: 20px;">Cảm ơn!</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="success-dialog-message" class="modal-main-message">Yêu cầu của bạn đã được xử lý!</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-info" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="fail-dialog" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 id="fail-dialog-header" class="modal-title">Error</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="fail-dialog-message" class="modal-main-message">Unable to process your request. </br>Please try again later.</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- =========================
        MODAL SPINNERS
        ============================== -->
        <div class="modal fade" id="modal-spinner" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered justify-content-center" role="document">
            <span class="fa fa-spinner fa-spin fa-3x"></span>
        </div>
        
        <!--Modal Video-->
        <div id="videoModal" class="modal">
          <span class="close">&times;</span>
          <video class="modal-content" controls id="video01">
              
          </video>
        </div>
    </main>
    
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/group-product.js"></script>
    <#--<script src="/static-assets/js/group-child-product.js"></script>-->
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/contact.js"></script>
    <script src="/static-assets/js/video-modal.js"></script>
    <script>
        // set width for google map
        $('iframe').attr('width','83%');
    </script>
    <script>
        $(document).ready(function(){
            var modal = $('#videoModal');
            var modalVideo = $('#video01');
            var srcvideo1 = $('#srcVideo1').val();
            var srcvideo2 = $('#srcVideo2').val();
            
            $('#video-1').click(function() {
                $(modal).css('display', 'block');
                $(modalVideo).find("source").attr("src", srcvideo1);
                $('.logos').css('display', 'none');
                $(modalVideo).html('<source src="'+ srcvideo1 +'" type="video/mp4"></source>' );
            });
            
            var spanClose = $('.close');
            $(spanClose).click(function() {
                $(modal).css('display', 'none');
                $('.logos').css('display', 'block');
            });
        });
    </script>
  </body>
</html>
<@studio.toolSupport /> 
