import Swiper from 'swiper';

(function () {

  Array.from(document.querySelectorAll('.swiper-container')).map((elem) => {

    let config = {};

    if (elem.id === 'swiper-banner') {
      config = {
        loop: true,
        autoplay: {
          delay: 6000,
        },
        pagination: {
          el: '.swiper-pagination',
          hideOnClick: false,
          clickable: true,
        },
      };

    } else if (
      elem.id === 'swiper-blog' ||
      elem.id === 'swiper-testimonials' ||
      elem.id === 'swiper-portfolio'
    ) {
      config = {
        autoplay: false,
        slidesPerView: 4,
        spaceBetween: 30,
        breakpoints: {
          480: {
            slidesPerView: 1,
            spaceBetween: 0,
          },
          768: {
            slidesPerView: 2,
            spaceBetween: 15,
          },
          992: {
            slidesPerView: 3,
          }
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      };

    } else if (elem.id === 'swiper-sales') {
      config = {
        autoplay: false,
        slidesPerView: 3,
        spaceBetween: 30,
        breakpoints: {
          480: {
            slidesPerView: 1,
            spaceBetween: 0,
          },
          768: {
            slidesPerView: 2,
            spaceBetween: 15,
          },
          992: {
            slidesPerView: 2,
          }
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      };

    } else if (-1 !== elem.id.indexOf('swiper-gallery')) {
      config = {
        autoplay: false,
        slidesPerView: 5,
        spaceBetween: 10,
        breakpoints: {
          480: {
            slidesPerView: 1,
            spaceBetween: 0,
          },
          768: {
            slidesPerView: 2,
            spaceBetween: 10,
          },
          992: {
            slidesPerView: 4,
            spaceBetween: 10,
          }
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      };

    }

    setTimeout(new Swiper('#' + elem.id, config), 100);
  });
})();