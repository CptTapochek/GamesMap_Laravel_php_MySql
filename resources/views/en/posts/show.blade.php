@section('show')
    <div class="all_content" id="goods">
        <div class="open_container" id="nave">
            @foreach($posts as $post)
                <a href="{{ route('posts.single', ['slug' => $post->slug]) }}">
                    <div class="item_img"><img src="{{ $post->getImage() }}" /></div>
                    <div class="item_text">{{ $post->title }}</div>
                    <div class="title_item">{{ $post->title }}</div>
                </a>
            @endforeach
        </div>
        <div class="home_paginate">{{ $posts->links('vendor.pagination.tm_pagination') }}</div>
    </div>
