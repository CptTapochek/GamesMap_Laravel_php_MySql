@foreach($inboxes as $inbox)
    @if($inbox->withUser->name != auth()->user()->name)
        <a class="user_link_msg" href="{{ route('profile.messages', ['name' => $inbox->withUser->name]) }}">
            @if($inbox->withUser->avatar)
                <img width="50" height="50" title="{{$inbox->withUser->name}}" src="{{asset('storage/ResizeUsers/'. $inbox->withUser->avatar)}}">
            @else
                <img width="50" height="50" title="{{$inbox->withUser->name}}" src="assets/profile_img.png">
            @endif
            <div class="info">
                <div class="user">{{$inbox->withUser->name}}</div>
                {{--collect($inbox->thread)->only(['is_seen'])->all()--}}
                @if(isset($inbox->thread->sender))
                    @if($inbox->thread->sender->name != auth()->user()->name)
                        @if(!$inbox->thread->is_seen)
                            <div class="MSG_NOTY"><img title="У вас новое сообщение"  src="assets/warningMSG.svg"></div>
                        @endif
                    @endif
                @endif
            </div>
        </a>
    @endif
@endforeach
