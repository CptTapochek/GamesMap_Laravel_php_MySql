<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>@include('blocks.title')&raquo; {{ $post->title }}</title>
    @include('blocks.links')
    <meta name="keywords" content="{{$post->key_words}}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body>
    <div class="wrapper_tot">
        <div class="content">
            @include('blocks.header')
            <div class="main_content">
                <div class="post_menu">@include('blocks.menu')@include('posts.popular_block')
                    <!--<div class="AD_Block"><div class="AD_Block_2">AD</div></div><br>
                    <div class="AD_Block"><div class="AD_Block_2">AD</div></div><br>
                    <div class="AD_Block"><div class="AD_Block_2">AD</div></div><br>
                    <div class="AD_Block"><div class="AD_Block_2">AD</div></div><br>-->
                </div>
                    <div class="main_info">
                        <div class="PreInfo">
                            @if($post->category_id == $GamesID || $post->category_id == $SoftID)
                                <div class="cont_img"><p>{{ $post->title }}</p><img src="{{ $post->getImage() }}" />
                                    <div class="stat">
                                        <div class="view_num"><img src="assets/eye.svg" /><p>{{ $post->views }}</p></div>
                                        <div class="comm_num"><img src="assets/comm.svg" /><p>{{ $post->count_comment }}</p></div>
                                        <div class="download_count"><img src="assets/download.svg" /><p>{{ $post->downloads }}</p></div>
                                    </div>
                                    @auth()
                                        @if($userLike)
                                            <div class="LikeDislike">
                                                <div class="like like3" title="Like"><img src="assets/like2.svg"><p style="margin-right: -50px">{{$PostLikes}}<p></div>
                                                <div class="dislike dislike3"><img src="assets/dislike1.svg"><p>{{$PostDislikes}}</p></div>
                                            </div>
                                        @elseif($userDislike)
                                            <div class="LikeDislike">
                                                <div class="like like4"><img src="assets/like1.svg"><p>{{$PostLikes}}</p></div>
                                                <div class="dislike dislike4" title="Dislike"><img src="assets/dislike2.svg"><p style="margin-right: -50px">{{$PostDislikes}}<p></div>
                                            </div>
                                        @else
                                            <div class="LikeDislike">
                                                <input type="hidden" value="1" class="like_input">
                                                <input type="hidden" value="{{$post->id}}" class="PostID">
                                                <input type="hidden" value="{{$PostLikes}}" class="NumLikes">
                                                <input type="hidden" value="{{$PostDislikes}}" class="NumDislikes">
                                                <button class="like" title="Like"><img src="assets/like1.svg"><p class="like_count">{{$PostLikes}}</p>
                                                    <div class="like2" title="Like"><img src="assets/like2.svg"></div>
                                                </button>
                                                <input type="hidden" value="1" class="dislike_input">
                                                <button class="dislike" title="Dislike"><img src="assets/dislike1.svg"><p class="dislike_count">{{$PostDislikes}}</p>
                                                    <div class="dislike2" title="Dislike"><img src="assets/dislike2.svg"></div>
                                                </button>
                                            </div>
                                        @endif
                                    @endauth
                                    @guest()
                                        <div class="LikeDislike">
                                            <div class="like like3" title="Like"><img src="assets/like1.svg"><p style="margin-right: -50px">{{$PostLikes}}<p></div>
                                            <div class="dislike dislike3" title="Dislike"><img src="assets/dislike1.svg"><p>{{$PostDislikes}}</p></div>
                                        </div>
                                    @endguest
                                </div>
                            @else
                                <div class="cont_img cont_img2"><p>{{ $post->title }}</p><img src="{{ $post->getImage() }}" />
                                    <div class="stat2">
                                        <div class="view_num"><img src="assets/eye.svg" /><p>{{ $post->views }}</p></div>
                                        <div class="comm_num"><img src="assets/comm.svg" /><p>{{ $post->comments->count() }}</p></div>
                                        @if($post->category_id == $CheatsID)
                                            <div class="download_count"><img src="assets/download.svg" /><p>{{ $post->downloads }}</p></div>
                                        @endif
                                    </div>
                                    @auth()
                                        @if($userLike)
                                            <div class="LikeDislike ForNews">
                                                <div class="like like3" title="Like"><img src="assets/like2.svg"><p style="margin-right: -50px">{{$PostLikes}}<p></div>
                                                <div class="dislike dislike3"><img src="assets/dislike1.svg"><p>{{$PostDislikes}}</p></div>
                                            </div>
                                        @elseif($userDislike)
                                            <div class="LikeDislike ForNews">
                                                <div class="like like4"><img src="assets/like1.svg"><p>{{$PostLikes}}</p></div>
                                                <div class="dislike dislike4" title="Dislike"><img src="assets/dislike2.svg"><p style="margin-right: -50px">{{$PostDislikes}}<p></div>
                                            </div>
                                        @else
                                            <div class="LikeDislike ForNews">
                                                <input type="hidden" value="1" class="like_input">
                                                <input type="hidden" value="{{$post->id}}" class="PostID">
                                                <input type="hidden" value="{{$PostLikes}}" class="NumLikes">
                                                <input type="hidden" value="{{$PostDislikes}}" class="NumDislikes">
                                                <button class="like" title="Like"><img src="assets/like1.svg"><p class="like_count">{{$PostLikes}}</p>
                                                    <div class="like2" title="Like"><img src="assets/like2.svg"></div>
                                                </button>
                                                <input type="hidden" value="1" class="dislike_input">
                                                <button class="dislike" title="Dislike"><img src="assets/dislike1.svg"><p class="dislike_count">{{$PostDislikes}}</p>
                                                    <div class="dislike2" title="Dislike"><img src="assets/dislike2.svg"></div>
                                                </button>
                                            </div>
                                        @endif
                                    @endauth
                                    @guest()
                                        <div class="LikeDislike ForNews">
                                            <div class="like like3" title="Like"><img src="assets/like1.svg"><p style="margin-right: -50px">{{$PostLikes}}<p></div>
                                            <div class="dislike dislike3" title="Dislike"><img src="assets/dislike1.svg"><p>{{$PostDislikes}}</p></div>
                                        </div>
                                    @endguest
                                </div>
                            @endif
                            @if($post->category_id == $GamesID || $post->category_id == $SoftID)
                                <div class="cont_features"><p>{!! $post->features !!}</p></div>
                            @endif
                        </div>
                        <div class="cont_description"><br /><br /><h3>Описание@if($post->trailer_1) игры:
                            @else:@endif</h3>
                            <p class="desc">{!! $post->description !!}</p>
                        </div>

                    <div class="out_2"><br /><br /><br /><br />
                        @if($post->screen_5)
                            <div class="cont_screens">
                                <h3>Скриншоты:</h3>
                                    <a href="{{ $post->getScreen1() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen1Resize() }}" /></a>
                                    <a href="{{ $post->getScreen2() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen2Resize() }}" /></a>
                                    <a href="{{ $post->getScreen3() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen3Resize() }}" /></a>
                                    <a href="{{ $post->getScreen4() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen4Resize() }}" /></a>
                                    <a href="{{ $post->getScreen5() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen5Resize() }}" /></a>
                                    <a href="{{ $post->getScreen6() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen6Resize() }}" /></a>
                            </div><br /><br />
                        @elseif($post->screen_3)
                            <div class="cont_screens">
                                <h3>Скриншоты:</h3>
                                    <a href="{{ $post->getScreen1() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen1Resize() }}" /></a>
                                    <a href="{{ $post->getScreen2() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen2Resize() }}" /></a>
                                    <a href="{{ $post->getScreen3() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen3Resize() }}" /></a>
                                    <a href="{{ $post->getScreen4() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen4Resize() }}" /></a>
                            </div><br /><br />
                        @elseif($post->screen_1)
                            <div class="cont_screens">
                                <h3>Скриншоты:</h3>
                                    <a href="{{ $post->getScreen1() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen1Resize() }}" /></a>
                                    <a href="{{ $post->getScreen2() }}" data-lightbox="roadtrip"><img src="{{ $post->getScreen2Resize() }}" /></a>
                            </div><br /><br />@endif<br />

                        @if($post->trailer_2)
                            <div class="trailer_cont">
                                <h3>Трейлер / Геймплей:</h3>
                                <div class="preview_1">
                                    <img class="wallpaper_1" src="//img.youtube.com/vi/{{ $post->trailer_1 }}/maxresdefault.jpg">
                                    <img class="play_2" src="assets/play_2.png">
                                    <img class="play_1 opacity_0" src="assets/play_1.png">
                                    <input type="hidden" value="{{ $post->trailer_1 }}" class="trailer_1">
                                </div>
                                <div class="video_1">
                                    <div class="trai_1"></div>
                                </div><br>
                                <div class="preview_2">
                                    <img class="wallpaper_2" src="//img.youtube.com/vi/{{ $post->trailer_2 }}/maxresdefault.jpg">
                                    <img class="play_4" src="assets/play_2.png">
                                    <img class="play_3 opacity_0" src="assets/play_1.png">
                                    <input type="hidden" value="{{ $post->trailer_2 }}" class="trailer_2">
                                </div>
                                <div class="video_2">
                                    <div class="trai_2"></div>
                                </div><br>
                            </div>
                        @elseif($post->trailer_1)
                            <div class="trailer_cont">
                                <h3>Трейлер / Геймплей:</h3>
                                <div class="preview_1">
                                    <img class="wallpaper_1" src="//img.youtube.com/vi/{{ $post->trailer_1 }}/maxresdefault.jpg">
                                    <img class="play_2" src="assets/play_2.png">
                                    <img class="play_1 opacity_0" src="assets/play_1.png">
                                    <input type="hidden" value="{{ $post->trailer_1 }}" class="trailer_1">
                                </div>
                                <div class="video_1">
                                    <div class="trai_1"></div>
                                </div>
                            </div>
                        @endif
                        @if($post->torr_specification)
                        <div class="rep_specs"><h3>Особенности@if($post->category_id == $GamesID) репака:@else:@endif</h3>
                            <p>{!! $post->torr_specification !!}</p>
                        </div><br />@endif
                        @if($post->dlc_list)
                            <button class="accordion">Все DLC:</button>
                            <div class="panel">
                                <pre>{{ $post->dlc_list }}</pre>
                            </div>@endif<br />
                        @if($post->torr_problems)
                            <button class="accordion">Установка/Решение проблем:</button>
                            <div class="panel">
                                <p>{!! $post->torr_problems !!}</p>
                            </div>@endif
                        @if($post->torr_link_1 || $post->torr_link_2)
                            @if($post->torr_link_1)
                            <input type="hidden" value="{{$post->id}}" class="Post_ID_download">
                            <div class="rep_size">Размер: {{ $post->torr_size_1 }} @if($post->torr_name_1) | {{ $post->torr_name_1 }} @endif</div>
                            <a href="{{ $post->getTorrent1() }}" download="" class="download">Скачать торрент</a>
                            @endif
                            @if($post->torr_link_2)
                            <br /><br />
                            <input type="hidden" value="{{$post->id}}" class="Post_ID_download">
                            <div class="rep_size">Размер: {{ $post->torr_size_2 }} @if($post->torr_name_2) | {{ $post->torr_name_2 }} @endif</div>
                            <a href="{{ $post->getTorrent2() }}" download="" class="download">Скачать торрент</a>@endif
                        @else
                            <div class="rep_size" style="color: red; font-weight: bolder;">ИГРА НЕ ВЗЛОМАНА ИЛИ НЕ ВЫШЛА ЕЩЕ!</div>
                        @endif
                    </div><br /><br /><br />
                    @auth
                        <comment>
                            <div class="Comment_block">
                                <h2>Добавить комментарий:</h2>
                                <form action="{{ route('comments.store') }}" method="post">
                                    @csrf
                                    <textarea name="body" class="comment_form" placeholder="Введите комментарий..."></textarea>
                                    <input type="hidden" name="post_id" value="{{ $post->id }}"/>
                                    <div class="add_comment"><button type="submit" class="comment_BTN" value="Add Comment">Добавить</button></div>
                                </form>
                            </div>
                        </comment>
                    @endauth
                    @guest
                        <div class="Warning_guest">
                            <div class="comment_guest">
                                <img src="assets/warning2.svg"/>
                                <p>Чтобы оставить комментарий нужно пройти регистрацию!</p>
                            </div>
                        </div><br />
                    @endguest
                    <h2 class="comment_out_title">Комментарии:</h2>
                    <div class="comment_out">
                        <div class="comment_outBlock">
                            @include('posts.commentsDisplay')
                            {{--@include('posts.commentsDisplay', ['comments' => $post->comments, 'post_id' => $post->id])--}}
                        </div>
                    </div>
                        <div class="home_paginate">{{ $comments->links('vendor.pagination.tm_pagination') }}</div>
                </div>
            </div>
        </div>
        <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
    </div>
    @include('blocks.footer')

    <script>
        /* Accordion */
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.maxHeight) {
                    panel.style.maxHeight = null;
                } else {
                    panel.style.maxHeight = panel.scrollHeight + "px";
                }
            });
        }

        /* Set ajax token */
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        /* Get trailers */
        $(document).ready(function (){
            $('.preview_1, .wallpaper_1, .play_1, .play_2').on('click', function (){
                var Trailer_1 = $('input.trailer_1').val();
                $('div.trai_1').replaceWith('<iframe class="youtube_1" src="//www.youtube.com/embed/' + Trailer_1 + '" frameborder="0" allowfullscreen></iframe>')
            })
            $('.preview_2, .wallpaper_2, .play_3, .play_4').on('click', function (){
                var Trailer_2 = $('input.trailer_2').val();
                $('div.trai_2').replaceWith('<iframe class="youtube_2" src="//www.youtube.com/embed/' + Trailer_2 + '" frameborder="0" allowfullscreen></iframe>')
            })
        });

        /* Like Posts */
        $(document).ready(function (){
            $('button.like').on('click', function (){
                var likeVal = $('input.like_input').val();
                var postID = $('input.PostID').val();
                var NumDislikes = $('input.NumDislikes').val();
                var btn = $(this);

                function funcBefore(){
                    $(this).prop("disabled", true);
                }

                $.ajax({
                    method: "POST",
                    url: "{{ route('post_like') }}",
                    data: { like: likeVal, post_id: postID },
                    beforeSend: funcBefore,
                    success: function (data){
                        $('p.like_count').remove();
                        btn.replaceWith('<div class="like like3" title="Like"><img src="assets/like2.svg"><p style="margin-right: -50px">' + data + '<p></div>');
                        $('div.dislike2').remove();
                        $('button.dislike').replaceWith('<div class="dislike dislike3"><img src="assets/dislike1.svg"><p>' + NumDislikes + '</p></div>');
                    }
                })
            })
        })

        /* Dislike Posts */
        $(document).ready(function (){
            $('button.dislike').on('click', function (){
                var dislikeVal = $('input.dislike_input').val();
                var postID = $('input.PostID').val();
                var NumLikes = $('input.NumLikes').val();
                var btn = $(this);

                function funcBefore(){
                    $(this).prop("disabled", true);
                }

                $.ajax({
                    method: "POST",
                    url: "{{ route('post_dislike') }}",
                    data: { dislike: dislikeVal, post_id: postID },
                    beforeSend: funcBefore,
                    success: function (data){
                        $('p.dislike_count').remove();
                        btn.replaceWith('<div class="dislike dislike4" title="Dislike"><img src="assets/dislike2.svg"><p style="margin-right: -50px">' + data + '<p></div>');
                        $('div.like2').remove();
                        $('button.like').replaceWith('<div class="like like4"><img src="assets/like1.svg"><p>' + NumLikes + '</p></div>');
                    }
                })
            })
        })

        /* Download Count */
        $(document).ready(function (){
            $('a.download').on('click', function (){
                var postID = $('input.Post_ID_download').val();
                var btn = $(this);

                console.log(postID);

                function funcBefore(){
                    $(this).prop("disabled", true);
                }

                $.ajax({
                    method: "POST",
                    url: "{{ route('downloadPost') }}",
                    data: { post_id: postID },
                    beforeSend: funcBefore,
                })
            })
        })

        /* Like Comments */
        $(document).ready(function (){
            $('.like_comment').on('click', function (){
                var commentValue = $(this).val();
                var postValue = $('input.post_id').val();
                var btn = $(this);

                function funcBefore(){
                    $(this).prop("disabled", true);
                }

                $.ajax({
                    method: "POST",
                    url: "{{ route('comments_like') }}",
                    data: { comment_id: commentValue, post_id: postValue },
                    beforeSend: funcBefore,
                    success: function (data){
                        btn.replaceWith('<div class="like_exist"><div class="like_comment_exist">' +
                            '<img class="img2 opacity_100" src="assets/803087.svg"/></div></div>' +
                            '<p class="count_like_ajax">' + data + '<p>' + '<div class="hideBlock"></div');
                    }
                })
            })
        })
    </script>
</body>
</html>
