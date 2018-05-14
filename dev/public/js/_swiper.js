import Swiper from 'swiper';

const defaultSwiper = {};

let elems = document.querySelectorAll('.swiper-container');

if (elems !== null) {
  [].forEach.call(elems, (elem) => {

    let config = {};

    switch (elem.id) {
      case 'swiper-banner':
        config = Object.assign({}, defaultSwiper, {
          loop: false,
          autoplay: {
            delay: 5000,
            disableOnInteraction: true,
          },
          pagination:{
            el: '.swiper-pagination',
            hideOnClick: false,
            clickable: true,
          },
        });
        break;
      case 'swiper-blog':
      case 'swiper-testimonials':
      case 'swiper-portfolio':
        config = Object.assign({}, defaultSwiper, {
          loop: false,
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
        });
        break;
      case 'swiper-sales':
        config = Object.assign({}, defaultSwiper, {
          loop: false,
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
        });
        break;
      default: config = Object.assign({}, defaultSwiper);
    }

    setTimeout(new Swiper(`#${elem.id}`, config),100);
  });
}