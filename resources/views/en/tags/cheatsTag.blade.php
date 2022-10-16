<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>@include('en.blocks.title')</title>
    @include('en.blocks.links')
    <meta name="description" content="Torrent Map - Here you can download games to your pc via torrent just for free.">
    <link rel="search" type="application/opensearchdescription+xml" href="torrent-map.site/public/TorrentMapSearch.xml" title="Torrent-Map - Here you can download games to your pc via torrent just for free">
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('en.blocks.header')
        <div class="new_onsite" id="index_new"><img src="/assets/anadir.png" /><p>{{ $tag->en_title }}</p>
            <div class="dropdownSORT">
                @include('en.blocks.sorting')
            </div>
        </div>
        <div class="main_content">
            <div class="HomeMenu">@include('en.blocks.menu')@include('posts.popular_block')</div>
            <div class="Cheets_content" id="goods">
                <div class="Cheets_container" id="nave">
                    @foreach($posts as $post)
                        <div class="Open_cheet">
                            <div class="Cheet_Img"><img src="{{ $post->getImage() }}" /></div>
                            <article>
                                <div class="Cheet_Title">{{ $post->title }}</div>
                                <a class="Cheet_btn" href="{{ route('posts.single', ['slug' => $post->slug]) }}">Открыть</a>
                                <div class="LikeDislike" id="ForCover">
                                    <div class="like like3" title="Like"><img src="/assets/like1.svg"><p style="margin-right: -50px">{{$likes->where('post_id', $post->id)->count()}}<p></div>
                                    <div class="dislike dislike3" title="Dislike"><img src="/assets/dislike1.svg"><p>{{$dislikes->where('post_id', $post->id)->count()}}</p></div>
                                </div>
                                <div class="stat menu_stat">
                                    <div class="view_num"><img src="/assets/eye.svg" /><p>{{ $post->views }}</p></div>
                                    <div class="comm_num"><img src="/assets/comm.svg" /><p>{{ $post->count_comment }}</p></div>
                                    <div class="download_count"><img src="/assets/download.svg" /><p>{{ $post->downloads }}</p></div>
                                </div>
                            </article>

                        </div>
                    @endforeach
                </div>
                <div class="home_paginate">{{ $posts->links('vendor.pagination.tm_pagination') }}</div>
            </div>
        </div>

        <a id="button" title="Наверх"><img src="/assets/13173007341556279780-128.png" /> </a>
    </div>
</div>
@include('en.blocks.footer')
</body>
</html>
