@section('requestFriends_block')
@if(!Auth::user()->hasfriendsRequestPending($user))
    @if($requests->count())
    <div class="friendsRequest">
        <h3>Запрос на добавление в друзья:</h3>
        @foreach($requests as $user)
            <a class="requestF" href="{{ route('profile.index', ['name' => $user -> name]) }}">
                @if($user->avatar)
                    <img src="{{asset('storage/'. $user->avatar)}}">
                @else
                    <img src="assets/profile_img.png">
                @endif
                <p>{{$user->name}}</p>
            </a>
            <a href="{{ route('accept.index', ['name' => $user -> name]) }}" class="requestBTN">Принять</a>
            <form method="post" action="{{ route('deleteRequest.index', ['name' => $user -> name]) }}" class="cancel">
                @csrf
                <input type="submit" class="logout deleteF cancel_BTN" value="Отказать"/>
            </form>
        @endforeach
    </div><br/>
    @endif
@endif
