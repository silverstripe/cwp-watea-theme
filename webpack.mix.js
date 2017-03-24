let mix = require('laravel-mix').mix;
let path = require('path');

//this fixes an API change introduced at //https://github.com/webpack/webpack/issues/4549
mix.setPublicPath(
  path.resolve(__dirname, 'dist')
);

mix.sass('src/scss/main.scss', 'css/main.css');
mix.js('src/js/main.js', 'js/main.js');

mix.webpackConfig({
  externals: {
    jquery: 'jQuery'
  }
});
