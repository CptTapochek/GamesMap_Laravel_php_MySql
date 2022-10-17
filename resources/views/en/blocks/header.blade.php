@section('header')
    <header class="header">
        <div class="head_1">
            <div class="logo">
                <a href="{{route('home_en')}}" id="logo"><img class="logo_im" src="/assets/logo-image.png" alt="" title="TorrentMap" />TorrentMap</a>
            </div>
            <div class="wrapper">
                <a href="{{route('home_en')}}">Main</a>
                <a href="{{route('contact_en')}}" >Contact</a>
                <a href="{{route('disclaimer')}}">Disclaimer</a>
                <a href="{{route('faq')}}">FAQ</a>
            </div>
            <div class="log_container">
                @guest
                    <div id="login">
                        <a href="{{route('login.create')}}"><img src="/assets/iniciar-sesion.svg" title="Login"/>Login</a>
                    </div>
                    <div id="reg">
                        <a href="{{route('register.create')}}" class="reg"><img src="/assets/ana22dir.svg" title="Register" />Sign up</a>
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
                                    <img title="You have a new message" class="message_notify" src="/assets/warningMSG.svg"></a>
                            @else
                                <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                                    <img class="avatarIMG" src="{{asset('storage/ResizeUsers/'. auth()->user()->avatar)}}"/></a>
                            @endif
                        @else
                            @if(auth()->user()->Notify)
                                <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                                    <img class="avatarIMG" src="/assets/profile_img.png"/>
                                    <img title="You have a new message" class="message_notify" src="/assets/warningMSG.svg"></a>
                            @else
                                <a href="{{ route('profile.index', ['name' => $user -> name]) }}" title="{{auth()->user()->name}}">
                                    <img class="avatarIMG" src="/assets/profile_img.png"/></a>
                            @endif
                        @endif
                    </div>

                @endauth
            </div>
        </div>
        <div class="head_btn">
            <a href="{{route('posts.top_80_en')}}">Top 80 games</a>
            <a href="{{ route('posts.Popular_page_en')}}">Populars</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single_en', ['slug' => $date]) }}" class="r790px">New games</a>
            <a href="{{ route('categories.news_en', ['slug' => 'news']) }}">News</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'sohraneniya']) }}" class="r790px">Saves</a>
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
                <a href="{{ route('categories.single_en', ['slug' => 'games']) }}">games</a>
                <a href="{{ route('categories.cheatsCat_en', ['slug' => 'cheats']) }}">Cheats</a>
                <a href="{{ route('categories.single_en', ['slug' => 'software']) }}">Soft</a>
            </div>
            <form action="{{ route('search') }}" method="get" id="search">
                <input id="search_line" name="search" type="text" placeholder="Search here..." required>
                <button id="search_btn" type="submit"><img src="/assets/buscar.png" title="Search" /> </button>
            </form>
        </div>
    </header>

