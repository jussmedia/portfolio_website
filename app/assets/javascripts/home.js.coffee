
jQuery ($) ->
  $('#newscarousel').owlCarousel
    items: 2,
    itemsDesktop: [1199,2],
    itemsDesktopSmall: [979,1],
    navigation: true,
    pagination: false
    false

  $('#carousel_post').owlCarousel
    items: 3,
    itemsDesktop: [1199,2],
    itemsDesktopSmall: [979,1],
    navigation: true,
    pagination: false
    false

  $('#featured_work').owlCarousel
    items: 4,
    itemsDesktop: [1199,3],
    itemsDesktopSmall: [979,3],
    navigation: true,
    pagination: false
    false

  $('#main_slider').slick
    autoplay: true,
    autoplaySpeed: 3000,
    dots: true
