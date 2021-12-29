@section('header')
   <header class="header">
   <div class="head_1">
        <div class="logo">
            <a href="{{route('home')}}" id="logo"><img class="logo_im" src="assets/logo-image.png" alt="" title="TorrentMap" />TorrentMap</a>
        </div>
        <div class="wrapper">
            <a href="{{route('home')}}">Главное</a>
            <a href="{{route('contact')}}">Контакты</a>
            <a href="{{route('disclaimer')}}">Правообладателям</a>
            <a href="{{route('faq')}}">FAQ</a>
        </div>
        <div class="log_container">
            @guest
            <div id="login">
                <a href="{{route('login.create')}}"><img src="assets/iniciar-sesion.svg" title="Login" />Войти</a>
            </div>
            <div id="reg">
                <a href="{{route('register.create')}}" class="reg"><img src="assets/ana22dir.svg" title="Register" />Регистрация</a>
            </div>
            @endguest
            @auth
            @php $user = auth()->user(); @endphp
                {{--
            <div class="profileBTN">
                <a href="{{ route('profile.index', ['name' => $user -> name]) }}" id="profile"><img src="assets/profile.png" /><p>Профиль</p></a>
            </div>--}}
            <div class="ava_head">
            @if(auth()->user()->avatar)
                @if(auth()->user()->Notify)
                    <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                        <img class="avatarIMG" src="{{asset('storage/ResizeUsers/'. auth()->user()->avatar)}}"/>
                        <img title="У вас новое сообщение" class="message_notify" src="assets/warningMSG.svg"></a>
                @else
                        <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                            <img class="avatarIMG" src="{{asset('storage/ResizeUsers/'. auth()->user()->avatar)}}"/></a>
                @endif
            @else
                @if(auth()->user()->Notify)
                        <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                        <img class="avatarIMG" src="assets/profile_img.png"/>
                        <img title="У вас новое сообщение" class="message_notify" src="assets/warningMSG.svg"></a>
                @else
                        <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                        <img class="avatarIMG" src="assets/profile_img.png"/></a>
                @endif
            @endif
            </div>

            @endauth
        </div>
   </div>
    <div class="head_btn">
        <a href="{{route('posts.top_80')}}">Топ 80 игр</a>
        <a href="{{ route('posts.Popular_page')}}">Популярные</a>
        @php $date = date("Y")@endphp
        <a href="{{ route('tags.single', ['slug' => $date]) }}" class="r790px">Новые игры</a>
        <a href="{{ route('categories.news', ['slug' => 'news']) }}">Новости</a>
        <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}" class="r790px">Сохранения</a>
        <div class="dropdown">
            <button onclick="myFunction()" class="dropbtn">Language</button>
            <div id="myDropdown" class="dropdown-content">
                <a href="#">English</a>
                <a href="#">Русский</a>
            </div>
        </div>
    </div>
    <div class="head_2">
        <div id="nav_2" class="controls">
            <a href="{{ route('categories.single', ['slug' => 'games']) }}">игры</a>
            <a href="{{ route('categories.cheatsCat', ['slug' => 'cheats']) }}">читы</a>
            <a href="{{ route('categories.single', ['slug' => 'software']) }}">софт</a>
        </div>
        <form action="{{ route('search') }}" method="get" id="search">
            <input id="search_line" name="search" type="text" placeholder="Искать здесь..." required>
            <button id="search_btn" type="submit"><img src="assets/buscar.png" title="Поиск" /> </button>
        </form>
    </div>
</header>
