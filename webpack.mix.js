const mix = require('laravel-mix').mix;

mix
  .js('src/js/main.js', 'dist/js/main.js')
  .sass('src/scss/main.scss', 'dist/css/main.css')
  .sass('src/scss/editor.scss', 'dist/css/editor.css')
  .options({ processCssUrls: false });

mix.webpackConfig({
  externals: {
    jquery: 'jQuery'
  }
});
