@section('header_low')
    <header class="header">
        <div class="head_1">
            <div class="logo">
                <a href="{{route('home')}}" class="logo_low">TorrentMap</a>
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
                        <a href="{{route('login.create')}}">Войти</a>
                    </div>
                    <div id="reg">
                        <a href="{{route('register.create')}}" class="reg">Регистрация</a>
                    </div>
                @endguest
                @php $user = auth()->user(); @endphp
                @auth
                    <div class="profileBTN">
                        <a href="{{ route('profile.index', ['name' => $user -> name]) }}" id="profile"><p>Профиль</p></a>
                    </div>
                @endauth
            </div>
        </div>
        <div class="head_btn">
            <a href="{{route('posts.top_80')}}">Топ 80 игр</a>
            <a href="{{ route('posts.Popular_page')}}">Популярные</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single', ['slug' => $date]) }}">Новые игры</a>
            <a href="{{ route('categories.news', ['slug' => 'news']) }}">Новости</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}">Сохранения</a>
        </div>
        <div class="head_2">
            <div id="nav_2" class="controls">
                <a href="{{ route('categories.single', ['slug' => 'games']) }}">игры</a>
                <a href="{{ route('categories.cheatsCat', ['slug' => 'cheats']) }}">читы</a>
                <a href="{{ route('categories.single', ['slug' => 'software']) }}">софт</a>
            </div>
        </div>
    </header>
