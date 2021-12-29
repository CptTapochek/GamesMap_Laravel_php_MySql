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
        </div>
        <div class="head_btn" style="margin-top: 57px">
            <a href="{{route('posts.top_80')}}">Топ 80 игр</a>
            <a href="{{ route('posts.Popular_page')}}">Популярные</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single', ['slug' => $date]) }}">Новые игры</a>
            <a href="{{ route('categories.news', ['slug' => 'news']) }}">Новости</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}">Сохранения</a>
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
