const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.styles([
    'resources/css/app.css',
    'resources/css/detail.css',
    'resources/css/lightbox.css',
], 'public/css/app.css');

mix.styles([
    'resources/css/normalize.css',
    'resources/css/style.css',
], 'public/css/msg_style.css');

mix.styles(['resources/css/aPages.css',
    'resources/css/slimselect.min.css'
], 'public/css/aPages.css');

mix.scripts([
    'resources/js/jquery-3.5.1.min.js',
    'resources/js/jquery.nicescroll.min.js',
    'resources/js/index.js',
    'resources/js/accordion.js',
    'resources/js/lightbox.js',
], 'public/js/index.js');

mix.scripts(['resources/js/slimselect.min.js'], 'public/js/aPages.js');




