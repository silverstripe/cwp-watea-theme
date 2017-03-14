/* eslint-disable */
import $ from 'jquery';
/* eslint-enable */

export default function () {
  // Carousel Documentation: https://paypal.github.io/bootstrap-accessibility-plugin/demo.html#carousel

  const $carousel = $('.carousel');
  const $carouselPause = $('#carousel-pause');
  const $carouselPlay = $('#carousel-play');

  $carousel.carousel({
    wrap: true,
    interval: 10000,
  });

  $carouselPause.click(() => {
    $carousel.carousel('pause');
    $carouselPause.hide();
    $carouselPlay.show().focus();
  });

  $carouselPlay.click(() => {
    $carousel.carousel('cycle');
    $carouselPlay.hide();
    $carouselPause.show().focus();
  });
}
