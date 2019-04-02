const mix = require('laravel-mix');

mix.webpackConfig({
  externals: {
    jquery: 'jQuery'
  }
});

mix.js('src/js/main.js', 'dist/js');

mix
  .sass('src/scss/main.scss', 'dist/css')
  .sass('src/scss/editor.scss', 'dist/css')
  .options({ processCssUrls: false });
