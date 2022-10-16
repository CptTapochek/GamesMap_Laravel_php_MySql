@section('header')
    <header class="header">
        <div class="head_1">
            <div class="logo">
                <a href="{{route('home_en')}}" id="logo"><img class="logo_im" src="assets/logo-image.png" alt="" title="TorrentMap" />TorrentMap</a>
            </div>
            <div class="wrapper">
                <a href="{{route('home_en')}}">Main</a>
                <a href="{{route('contact')}}">Contact</a>
                <a href="{{route('disclaimer')}}">Disclaimer</a>
                <a href="{{route('faq')}}">FAQ</a>
            </div>
        </div>
        <div class="head_btn" style="margin-top: 57px">
            <a href="{{route('posts.top_80')}}">Top 80 games</a>
            <a href="{{ route('posts.Popular_page')}}">Populars</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single', ['slug' => $date]) }}">New games</a>
            <a href="{{ route('categories.news', ['slug' => 'news']) }}">News</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}">Saves</a>
            <div class="dropdown">
                <button onclick="myFunction()" class="dropbtn">Language</button>
                <div id="myDropdown" class="dropdown-content">
                    <a href="{{route('home_en')}}">English</a>
                    <a href="{{route('home')}}">Русский</a>
                </div>
            </div>
        </div>
        <div class="head_2">
            <div id="nav_2" class="controls">
                <a href="{{ route('categories.single', ['slug' => 'games']) }}">Games</a>
                <a href="{{ route('categories.cheatsCat', ['slug' => 'cheats']) }}">Cheats</a>
                <a href="{{ route('categories.single', ['slug' => 'software']) }}">Soft</a>
            </div>
            <form action="{{ route('search') }}" method="get" id="search">
                <input id="search_line" name="search" type="text" placeholder="Search here..." required>
                <button id="search_btn" type="submit"><img src="assets/buscar.png" title="Search" /> </button>
            </form>
        </div>
    </header>
