@auth()
    <!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Личный кабинет &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="main_content">
            <div class="LoginMenu">@include('blocks.menu')</div>
            <div class="contact UserCab">
                <div class="contactNEW contactCAB"><p>💼 Личный кабинет</p></div>
                <div class="login_msg cabinet_msg">
                @if(session('success')) <!-- Afisarea mesajului de succes -->
                    <p class="msg_success">
                        {{session('success')}}
                    </p>
                @else<br>
                @endif
                </div>

                <div class="ViewProf">
                    <div class="nic">Пользователь: <span id="nic"><div class="nick">{{$user->name}}</div></span></div>
                    @if($user->avatar)
                        <img src="{{asset('storage/'. $user->avatar)}}" class="ava_cab" />
                    @else
                        <img src="assets/profile_img.png" class="ava_cab" />
                    @endif
                    <div class="container_prof">
                        @if($user->name == auth()->user()->name)
                            <span class="email">
                                <h3>E-Mail:</h3>{{$user->email}}
                            </span><br />
                        @else
                            @if($user->isOnline()) <p class="state_online">Online</p>
                            @else  <p class="state_online state_offline">Offline</p>
                            @endif
                        @endif
                        <span class="email">
                            <h3 class="date_cab">Дата регистрации:</h3>
                            <div class="date_time">{{$user->created_at->timezone('Europe/Chisinau')->format('d-m-Y')}}</div>
                        </span><br /><br />
                        <span class="email">
                                <h3 class="state_cab">Статус:</h3>
                                @if($user->is_admin) <p class="admin_state">Администратор</p>
                            @elseif($user->is_moderator) <p class="moder_state">Модератор</p>
                            @elseif($user->is_baned) <p class="baned_state">Забанен</p>
                            @else <p class="user_state">Пользователь</p>
                            @endif
                            </span><br /><br />
                        @if($user->name == auth()->user()->name)
                            <a class="logout" href="{{route('logout')}}">Выход</a>
                        @elseif($user->name != auth()->user()->name)
                            @if(Auth::user()->hasfriendsRequestPending($user))
                                <p class="logout wait">Запрос отправлен</p>
                            @elseif(Auth::user()->hasfriendsRequestReceived($user))
                                <p class="logout wait">Запрос уже есть</p>
                            @else()
                                @if(Auth::user()->isFriendWith($user))
                                    <p class="logout wait">Друг</p>
                                    <form method="post" action="{{ route('deleteFriend.index', ['name' => $user -> name]) }}">
                                        @csrf
                                        <input type="submit" class="logout deleteF" value="Удалить из друзей"/>
                                    </form>
                                @elseif($user->isFriendWith(Auth::user()))
                                        <p class="logout wait">Друг</p>
                                        <form method="post" action="{{ route('deleteFriendTwo.index', ['name' => $user -> name]) }}">
                                            @csrf
                                            <input type="submit" class="logout deleteF" value="Удалить из друзей"/>
                                        </form>
                                @else
                                    <a class="logout addFriend" href="{{ route('add.index', ['name' => $user -> name]) }}">Добавить в друзья</a>
                                @endif
                            @endif
                        @endif
                        @if($user->name == auth()->user()->name)
                            @if($user->is_admin)<a class="logout" class="adminBTN" href="{{route('admin_p')}}">
                                    @if($total_notify > 0 || $reports_notify > 0)
                                        <img src="assets/warningMSG.svg" title="New message!">
                                    @endif
                                    Admin</a><br /><br /><br />
                            @elseif($user->is_moderator)<a class="logout" class="adminBTN" href="{{route('admin_p')}}">
                                    @if($total_notify > 0 || $reports_notify > 0)
                                        <img src="assets/warningMSG.svg" title="New message!">
                                    @endif
                                    Admin</a><br /><br /><br />
                            @else</p><br /><br /><br />
                            @endif
                        @else<br /><br /><br />
                        @endif
                        @if($user->name == auth()->user()->name)
                            <div class="editProfileBTN">
                                <form action="{{route('change.view')}}" method="get">@csrf
                                    <button type="submit">Редактировать</button><br />
                                </form>
                                <form action="{{route('profile.messages', ['name' => $user -> name])}}" method="get">@csrf
                                    <button type="submit" class="message_btn">Сообщения</button>
                                    @if(auth()->user()->Notify)
                                        <img title="У вас новое сообщение" class="message_notify cab_not" src="assets/warningMSG.svg">
                                    @endif
                                </form>
                            </div><br />
                        @elseif($user->name != auth()->user()->name)
                            <div class="editProfileBTN report">
                                <form method="get" action="{{ route('report.get', ['name' => $user->name]) }}">
                                    <button type="submit">Жаловатся</button><br />
                                </form>
                                <form method="get" action="{{route('profile.messages', ['name' => $user -> name])}}">
                                    <button type="submit" class="message_btn2">Написать ЛС</button>
                                </form>
                            </div><br />
                        @endif<br />
                        @if($user->name == auth()->user()->name)
                            @include('profile.requestFriends_block')
                        @endif
                            <div class="friends">
                                <h3>Список друзей: ({{ $All_Friends }})</h3>
                                <div class="listOfFriends">
                                    @if(!$users->count())
                                        <p>Пусто</p>
                                    @else
                                        @foreach($users as $user)
                                            <a class="friend" href="{{ route('profile.index', ['name' => $user -> name]) }}">
                                                @if($user->avatar)
                                                    <img src="{{asset('storage/'. $user->avatar)}}">
                                                @else
                                                    <img src="assets/profile_img.png">
                                                @endif
                                                <p>{{$user->name}}</p>
                                            </a>
                                        @endforeach
                                    @endif
                                </div>
                                @if($OtherUser == $MyUser && $users->count() == 9)
                                    <div class="InBTN_Allfriends"><a class="allFriendsBTN" href="{{ route('profile.AllFriends', ['name' => auth()->user()->name]) }}">Все друзья</a></div>
                                @endif
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
</div>
@include('blocks.footer')
</body>
</html>
@endauth
