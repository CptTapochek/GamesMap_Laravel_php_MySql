<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>@include('blocks.title')</title>
    @include('blocks.links')
    <meta name="description" content="Torrent Map - Тут вы можете скачать игры на пк через торрент просто бесплатно.">
</head>
<body>
    <div class="preloader">
        <img class="LogoLoad" src="assets/LightThemeLogo(CUT).gif" alt="">
    </div>
    <div class="wrapper_tot">
        <div class="content">
            @include('blocks.header')
            <div class="new_onsite" id="index_new"><img src="assets/anadir.png" /><p>Новое на сайте</p>
                <div class="dropdownSORT">
                    @include('blocks.sorting')
                </div>
            </div>
            <div class="main_content">
                <div class="HomeMenu">@include('blocks.menu')@include('posts.popular_block')</div>
                <div class="all_content" id="goods">
                    <div class="open_container" id="nave">
                        @foreach($posts as $post)
                            <a href="{{ route('posts.single', ['slug' => $post->slug]) }}" title="{{ $post->title }}">
                                <div class="item_img"><img src="{{ $post->getImage() }}" /></div>
                                <div class="item_text">{{ $post->title }}</div>
                                <div class="title_item">{{ $post->title }}</div>
                            </a>
                        @endforeach
                    </div>
                    <div class="home_paginate">{{ $posts->links('vendor.pagination.tm_pagination') }}</div>
                </div>
            </div>
            <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
        </div>
    </div>
    @include('blocks.footer')
    <script>
        window.onload = function () {
            document.body.classList.add('loaded_hiding');
            window.setTimeout(function () {
                document.body.classList.add('loaded');
                document.body.classList.remove('loaded_hiding');
            }, 100);
        }
    </script>
</body>
</html>


