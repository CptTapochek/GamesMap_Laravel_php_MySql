<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>@include('en.blocks.title')</title>
    @include('en.blocks.links')
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('en.blocks.header')
        <div class="new_onsite" id="index_new"><img src="assets/anadir.png" /><p>{{ $category->title }}</p>
            <div class="dropdownSORT">
                @include('en.blocks.sorting')
            </div>
        </div>
        <div class="main_content">
            <div class="HomeMenu">@include('en.blocks.menu')@include('en.posts.popular_block')</div>
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

        <a id="button" title="Up"><img src="assets/13173007341556279780-128.png" /> </a>
    </div>
</div>
@include('en.blocks.footer')
</body>
</html>
