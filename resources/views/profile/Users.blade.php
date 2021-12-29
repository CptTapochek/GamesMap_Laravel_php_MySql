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
        <div class="new_onsite contactCAB"><img id="CabinetIMG" class="allForm_title" src="assets/cabinet.svg" />Личный кабинет</div><br /><br />
        <div class="main_content">
            <div class="LoginMenu">@include('blocks.menu')</div>
            <div class="contact UserCab">
                <div class="login_msg cabinet_msg">
                @if(session('success')) <!-- Afisarea mesajului de succes -->
                    <p class="msg_success">
                        {{session('success')}}
                    </p><br />
                    @else
                        <br />
                    @endif
                </div>
                @php $user = auth()->user(); @endphp
                <div class="nic">Пользователь: <span id="nic"><div class="nick">{{$user->name}}</div></span></div>
                <div class="ViewProf">
                    @if($user->avatar)
                        <img src="{{asset('storage/'. $user->avatar)}}" class="ava_cab" />
                    @else
                        <img src="assets/profile_img.png" class="ava_cab" />
                    @endif
                    <div class="container_prof">
                            <span class="email">
                                <h3>E-Mail:</h3>{{$user->email}}
                            </span><br />
                        <span class="email">
                                <h3 class="date_cab">Дата регистрации:</h3> <div class="date_time">{{$user->created_at->format('d-m-Y')}}</div>
                            </span><br /><br />
                        <span class="email">
                                <h3 class="state_cab">Статус:</h3>
                                @if($user->is_admin) <p class="admin_state">Администратор</p>
                            @elseif($user->is_moderator) <p class="moder_state">Модератор</p>
                            @else <p class="user_state">Пользователь</p>
                            @endif
                            </span><br /><br />
                        <a id="logout" href="{{route('logout')}}">Выход</a>
                        @if($user->is_admin)<a id="logout" class="adminBTN" href="{{route('admin_p')}}">Admin</a><br /><br /><br />
                        @elseif($user->is_moderator)<a id="logout" class="adminBTN" href="{{route('admin_p')}}">Admin</a><br /><br /><br />
                        @else</p><br /><br /><br />
                        @endif
                        <div class="editProfileBTN">
                            <a href="{{route('change.view')}}">Редактировать</a>
                        </div><br /><br />

                        <div class="friends">
                            <h3>Список друзей:</h3>
                            <div class="listOfFriends">
                                @if(!$user->friends()->count())
                                    <p>Пусто</p>
                                @else
                                    @foreach($user->friends() as $user)
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
</div><br /><br /><br /><br />
@include('blocks.footer')
</body>
</html>
@endauth
