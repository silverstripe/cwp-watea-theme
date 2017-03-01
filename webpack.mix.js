let mix = require('laravel-mix').mix;

mix.setPublicPath('dist');

mix.sass('src/scss/main.scss', 'dist/css/main.css');
mix.js('src/js/main.js', 'dist/js/main.js');

mix.webpackConfig({
  externals: {
    'jquery': 'jquery'
  }
});
