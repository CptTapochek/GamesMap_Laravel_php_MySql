<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>@include('blocks.title')</title>
    @include('blocks.links')
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="new_onsite"><img src="assets/buscar.png" /><p>Поиск: {{ $search }}</p>
            <div class="dropdownSORT">
                @include('blocks.sorting')
            </div>
        </div>
        <div class="main_content">
            <div class="HomeMenu">@include('blocks.menu')@include('posts.popular_block')</div>
            <div class="all_content" id="goods">
                <div class="open_container" id="nave">
                    @if($posts->count())
                        @foreach($posts as $post)
                            <a href="{{ route('posts.single', ['slug' => $post->slug]) }}" title="{{ $post->title }}">
                                <div class="item_img"><img src="{{ $post->getImage() }}" /></div>
                                <div class="item_text">{{ $post->title }}</div>
                                <div class="title_item">{{ $post->title }}</div>
                            </a>
                        @endforeach
                    @else
                        <h3 class="ErrorSearch">По вашему запросу ничего не найдено!</h3>
                    @endif
                </div>
                <div class="home_paginate">{{ $posts->appends(['search' => request()->search])->links('vendor.pagination.tm_pagination') }}</div>
            </div>
        </div>

        <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
    </div>
</div>
@include('blocks.footer')
</body>
</html>
