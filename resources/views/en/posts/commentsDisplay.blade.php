@section('commentsDisplay')
    @foreach($comments as $comment)
        <div class="RepeatBlock" @if($comment->parent_id != null) style="margin-left:30px;" @endif>
            @php $user = auth()->user(); @endphp
            <a href="{{ route('profile.index', ['name' => $comment->user->name]) }}" class="U_name">
            @if($comment->user->avatar)
                <img src="{{asset('storage/ResizeUsers/'. $comment->user->avatar)}}" title="{{$comment->user->name}}">
            @else
                <img src="assets/profile_img.png" title="{{$comment->user->name}}">
            @endif
            <div class="user_is_on">
                @if($comment->user->isOnline()) <p class="state_online">Online</p>
                @else  <p class="state_online state_offline">Offline</p>
                @endif
            </div>
            <p>{{ $comment->user->name }}</p></a>
            @if($comment->user->is_admin)
                <p class="U_status" style="background-color: #CD832F">Администратор</p>
            @elseif($comment->user->is_moderator)
                <p class="U_status" style="background-color: #508ACC">Модератор</p>
            @else
                <p class="U_status" style="background-color: #45A940">Пользователь</p>
            @endif
            <div><p class="comment_date">{{ $comment->created_at->timezone('Europe/Chisinau')->format('d.m.Y, H:i') }}</p></div><br/>
            @auth()
                <div class="like_system">
                    @auth @if(auth()->user()->is_admin || auth()->user()->is_moderator)
                        <form method="post" action="{{ route('comments.delete') }}" title="удалить комментарий" class="delete_comment_form">
                            @csrf
                            <input type="hidden" name="comment_id" value="{{ $comment->id }}" />
                            <button type="submit" onclick="return confirm('Вы уверены, что хотите удалить комментарий?')" class="delete_comment"><img src="assets/delete.png"></button>
                        </form> @endif @endauth

                        @if($likesComm->where('comment_id', $comment->id)->where('user_id', auth()->user()->id)->count() < 1)
                            <div id="LikeForm">
                                <input type="hidden" name="comment_id" class="comment_id" value="{{ $comment->id }}" />
                                <input type="hidden" name="post_id" class="post_id" value="{{ $post->id }}" />
                                <button class="like_comment" value="{{ $comment->id }}"><img class="img1" src="assets/like.svg"><img class="img2" src="assets/803087.svg"/>
                                    <input type="hidden" name="likes" class="likes" value="{{ $likesComm->where('comment_id', $comment->id)->count() }}" />
                                </button>
                            </div>
                        @elseif($likesComm->where('comment_id', $comment->id)->where('user_id', auth()->user()->id)->count() > 0)
                            <div class="like_exist">
                                <div class="like_comment_exist"><img class="img2" src="assets/803087.svg"/></div>
                            </div>
                        @endif
                        @if($likesComm)
                            <p class="count_like_comm">{{ $likesComm->where('comment_id', $comment->id)->count() }}</p>
                        @endif
                </div>
            @endauth
            <p class="comment_text">{{ $comment->body }}</p>
            @auth()
                <form action="{{ route('report.get', ['name' => $comment->user->name]) }}" method="get">
                    <input type="hidden" name="post_id" value="{{ $post->id }}">
                    <input type="hidden" name="comment_id" value="{{ $comment->id }}">
                    <button href="" class="report_comment">Жалоба</button>
                </form>
                <div id="replay"><button type="button" class="report_comment dropTextAreaBTN">Ответить</button></div>
            @endauth
                <form method="post" action="{{ route('comments.store') }}" class="dropdown-Replay">
                    @csrf
                    <textarea name="body" class="comment_form" >{{ $comment->user->name }}, </textarea>
                    <input type="hidden" name="post_id" value="{{ $post->id }}" />
                    <input type="hidden" name="parent_id" value="{{ $comment->id }}" />
                    <button type="submit" class="comment_BTN Replay_BTN" value="Add Comment">Добавить</button>
                </form>
                @include('posts.commentsDisplay', ['comments' => $comment->replies])
        </div>
    @endforeach
