
jQuery ($) ->
  $('#newscarousel').owlCarousel
    items: 2,
    loop: true,
    nav:true,
    navText: ["<span class='glyphicon glyphicon-chevron-left'></span>","<span class='glyphicon glyphicon-chevron-right'></span>"],
    dots: false,
    responsiveClass: true,
    responsive:
      0:
        items: 1

      979:
        items: 2
        nav: true

      1199:
        items: 2
        loop: true

  $('#carousel_post').owlCarousel
    items: 3,
    loop: true,
    nav: true,
    navText: ["<span class='glyphicon glyphicon-chevron-left'></span>","<span class='glyphicon glyphicon-chevron-right'></span>"],
    margin: 10,
    responsiveClass: true,
    dots: false,
    responsive:
      0:
        items: 1
        nav: true

      600:
        items: 2
        nav: false

      1000:
        items: 3
        nav: true
        loop: true

  $('#featured_work').owlCarousel
    items: 4,
    nav: true,
    navText: ["<span class='glyphicon glyphicon-chevron-left'></span>","<span class='glyphicon glyphicon-chevron-right'></span>"],
    dots: false,
    responsiveClass: true,
    responsive:
      0:
        items: 1
        nav: true

      979:
        items: 3
        nav: false

      1199:
        items: 3
        loop: true

  $('#main_slider').slick
    autoplay: true,
    autoplaySpeed: 3000,
    dots: true
