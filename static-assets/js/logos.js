$('.logos__container').owlCarousel({
    loop: true,
    margin: 0,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true,
    responsiveClass:true,
    responsive: {
        0: {
            items: 1
        },
        320: {
            items: 3
        },
        768: {
            items: 6
        },
        1400: {
            items: 8
        }
    }
});
$('.play').on('click',function(){
    owl.trigger('play.owl.autoplay', [1000])
})
$('.stop').on('click',function(){
    owl.trigger('stop.owl.autoplay')
})