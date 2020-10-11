/*
* Crook -Responsive One Page Parallax Template For landing, agency, portfolio, webStudio
* Build Date: apr 2020
* Author: creative minds
* Copyright (C) 2020 creative minds
*/



/*===============================================*/
/*  PRE LOADING
 /*===============================================*/
$(window).on('load', function () {
    $('.loader').delay(200).fadeOut('slow');
});


$(document).ready(function () {
    /*===============================================*/
    /* Smooth Scroll To Anchor
     /*===============================================*/

    $('a.nav-link[href^="#"]').on('click', function (event) {
        let $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });

    /*===============================================*/
    /*  STICKY HEADER
     /*===============================================*/
    $(window).on('scroll', function () {
        if ($(window).scrollTop() < 40) {
            $('.header').removeClass('sticky');
            $('#back-to-top').removeClass('active');
        } else {
            $('.header').addClass('sticky');
            $('#back-to-top').addClass('active');
        }
    });
    jQuery('a.has_sub_menu').on('click', function(e){
        if (window.matchMedia('(max-width: 992px)').matches){
            e.preventDefault();
            jQuery(this).toggleClass("active_menu");
            jQuery(this).next(jQuery('.sub_menu')).slideToggle();
        }
    });
    /*===============================================*/
    /*  Parallax
     /*===============================================*/
    $('.jarallax').jarallax({
        speed: 0.1
    });

    /*===============================================*/
    /*  waves buttons
     /*===============================================*/
    $('.btn').on('mouseenter', function(e) {
        let parentOffset = $(this).offset()
            , relX = e.pageX - parentOffset.left
            , relY = e.pageY - parentOffset.top;
        $(this).find('span').css({
            top: relY,
            left: relX
        })
    }).on('mouseout', function(e) {
        let parentOffset = $(this).offset()
            , relX = e.pageX - parentOffset.left
            , relY = e.pageY - parentOffset.top;
        $(this).find('span').css({
            top: relY,
            left: relX
        })

    });
    /*===============================================*/
    /*   progressbar JS
     /*===============================================*/
    $('.progress-bar').on('appear',function(event, $all_appeared_elements) {
        $(this).css('width', $(this).data('progress') + '%');
        $(this).parent().siblings('.progress-data').find('.precent').css('right', 100 - $(this).data('progress') + '%');
    });
    $.appear('.progress-bar',function() {
        $(this).css('width', $(this).data('progress') + '%');
        $(this).parent().siblings('.progress-data').find('.precent').css('right', 100 - $(this).data('progress') + '%');
    });

    /* ==============================================
       portfolio
       ============================================== */
    $('.portfolio-categories').on('click', 'li', function(e) {
        e.preventDefault();
        $('.portfolio-categories li').removeClass('active');
        $(this).closest('li').addClass('active');
    });
    let filterizd = $('.portfolio-container');
    if(filterizd.length > 0) {
        filterizd.imagesLoaded( function() {
            filterizd.filterizr({
                layout: 'sameWidth'
            });
        });
    }
    $('.grid').masonry({
        itemSelector: '.grid-item', // use a separate class for itemSelector, other than .col-
        columnWidth: '.grid-sizer',
        percentPosition: true
    });
    /* ==============================================
          pop up
         ============================================== */
    $('.filtr-container').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
        },
        image: {
            tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
            titleSrc: function(item) {
                return item.el.attr('title');
            }
        },
        zoom: {
            enabled: true,
            duration: 300, // don't foget to change the duration also in CSS
            opener: function (element) {
                return element.find('img');
            }
        }
    });
    $('.btn-video').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: true,
        fixedContentPos: false
    });
    /* ==============================================
      COUNTER JS
     ============================================== */
    const el = $( '.counter' );
    if(el.length > 0 ){
        let  counterUp = window.counterUp["default"];
        new Waypoint( {
            element: el,
            handler: function() {
                el.each(function (ignore, counter) {
                    counterUp(counter, {
                        duration: 1000,
                        delay: 16
                    });
                });
                this.destroy()
            },
            offset: 'bottom-in-view',
        } );
    }
//    countdown timer
    if($(".countdown-box").length){
        var gettingStarted = $(".countdown-box").data("count-down") || "oct 2, 2020 16:00:00" ;
        var countDownDate = new Date(gettingStarted).getTime();
        var x = setInterval(function() {
            var now = new Date().getTime();
            var distance = countDownDate - now;
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);
            $("#z-day").html(days);
            $("#z-hour").html(hours);
            $("#z-minuts").html(minutes);
            $("#z-second").html(seconds);
            if (distance < 0) {
                $("#z-day").html("00");
                $("#z-hour").html("00");
                $("#z-minuts").html("00");
                $("#z-second").html("00");
                clearInterval(x);
            }
        }, 1000);
        console.log(gettingStarted);
        console.log(countDownDate);
        console.log(now);
    }
    /*======================================================
    carousel
   =======================================================*/
    $(".testimonial-two").owlCarousel({
        loop:true,
        autoplay:false,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:true,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1

            },
            1000:{
                items:4

            }
        },
        items:2
    });
    $(".testimonial-one").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:true,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1

            },
            1000:{
                items:1

            }
        },
        items:1
    });
    $(".brand-carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:false,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:3

            },
            1000:{
                items:5

            }
        },
        items:5
    });
    $(".work-carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:false,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3

            },
            1000:{
                items:3

            }
        },
        items:3
    });
    $(".cover-slider").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:true,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1

            },
            1000:{
                items:1

            }
        },
        items:1
    });
    $(".services-carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:true,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3

            },
            1000:{
                items:3

            }
        },
        items:3
    });
    /*================================================================
     accordion
     =================================================================*/
    jQuery('.accordion-item').find('.accordion-title').on('click',function(){

        //Expand or collapse this panel
        jQuery(this).toggleClass('active');
        jQuery(this).next().slideToggle('fast');
        //Hide the other panels
        jQuery(".accordion-content").not(jQuery(this).next()).slideUp('fast');
        jQuery(".accordion-title").not(jQuery(this)).removeClass('active');
    });
    /*=========================================================================
       MAPS
       =========================================================================*/
    function map_one() {
        // The location of office
        let pyrmont = new google.maps.LatLng(29.97251,30.94470);
        // The map, centered at office
        let map_id = document.getElementById("map");
        let map_icon = $("#map").data('icon');
        let mapOptions = {
            zoom: 16,
            scrollwheel: false,
            navigationControl: false,
            mapTypeControl: false,
            scaleControl: false,
            center:pyrmont,

            styles: [
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e9e9e9"
                        },
                        {
                            "lightness": 17
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#f5f5f5"
                        },
                        {
                            "lightness": 20
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 17
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 29
                        },
                        {
                            "weight": 0.2
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 18
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 16
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#f5f5f5"
                        },
                        {
                            "lightness": 21
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#dedede"
                        },
                        {
                            "lightness": 21
                        }
                    ]
                },
                {
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 16
                        }
                    ]
                },
                {
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "saturation": 36
                        },
                        {
                            "color": "#333333"
                        },
                        {
                            "lightness": 40
                        }
                    ]
                },
                {
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#f2f2f2"
                        },
                        {
                            "lightness": 19
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#fefefe"
                        },
                        {
                            "lightness": 20
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#fefefe"
                        },
                        {
                            "lightness": 17
                        },
                        {
                            "weight": 1.2
                        }
                    ]
                }
            ]
        };
        let map = new google.maps.Map(
            map_id, mapOptions
        );
        // The marker, positioned at location
        let marker = new google.maps.Marker({
            position: pyrmont,
            map: map,
            mapTypeId: 'roadmap',
            icon:map_icon
        });
    }

    // initialize all the maps and apis
    function initialize(){
        if($("#map").length > 0){
            map_one();
        }
    }
    $(window).on('load',function() {
        initialize();
    });
});