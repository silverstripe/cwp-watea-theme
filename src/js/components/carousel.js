/* eslint-disable */
import $ from 'jquery';
/* eslint-enable */

export default function () {
  // Carousel Documentation: https://paypal.github.io/bootstrap-accessibility-plugin/demo.html#carousel

  const $carousel = $('.carousel');
  const $carouselPause = $('#carousel-pause');
  const $carouselPlay = $('#carousel-play');
  const $carouselSlideTitle = $('#carousel-slide-title');

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

  const $carouselControlButtons = $('.carousel-controls button, .carousel-indicators button');

  $carouselControlButtons.click(() => {
    $carousel.one('slide.bs.carousel', (event) => {
      $carouselSlideTitle.text($(event.relatedTarget).data('title'));
    });
  });
}
