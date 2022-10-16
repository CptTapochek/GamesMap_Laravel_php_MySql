@section('menu')
<menu>
    <div class="Main_menu">
        <div class="logo_cat">Games:</div>
        <div class="listOf_tags games">
            <a href="{{ route('tags.single_en', ['slug' => 'otkrytyy-mir']) }}">Open World</a>
            <a href="{{ route('tags.single_en', ['slug' => 'gonki']) }}">Racing</a>
            <a href="{{ route('tags.single_en', ['slug' => 'stels']) }}">Stealth</a>
            <a href="{{ route('tags.single_en', ['slug' => 'igry-s-onlaynom']) }}">Online games</a>
            <a href="{{ route('tags.single_en', ['slug' => 'zombi']) }}">Zombies</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horror']) }}">Horror</a>
            <a href="{{ route('tags.single_en', ['slug' => 'sportivnye']) }}">Sport</a>
            <a href="{{ route('tags.single_en', ['slug' => 'vyzhivanie']) }}">Survival</a>
            <a href="{{ route('tags.single_en', ['slug' => 'draki']) }}">Fighting</a>
            <a href="{{ route('tags.single_en', ['slug' => 'arkady']) }}">Arcade</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ozhidaemye']) }}">Expected</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ekshen']) }}">Action</a>
            <a href="{{ route('tags.single_en', ['slug' => 'dlya-slabyh-pk']) }}">For the weak pc</a>
            <a href="{{ route('tags.single_en', ['slug' => 'shutery']) }}">Shooter</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horoshiy-syuzhet']) }}">Good story</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horoshaya-grafika']) }}">Good graphic</a>
            <a href="{{ route('tags.single_en', ['slug' => 'rolevye-rpg']) }}">Role Play (Rpg)</a>
            <a href="{{ route('tags.single_en', ['slug' => 'simulyatory']) }}">Simulators</a>
            <a href="{{ route('tags.single_en', ['slug' => 'priklyucheniya']) }}">Adventures</a>
            <a href="{{ route('tags.single_en', ['slug' => 'vr-igry']) }}">VR-games</a>
            <a href="{{ route('tags.single_en', ['slug' => 'strategii']) }}">Strategy</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ot-pervogo-lica']) }}">By first person</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ot-tretego-lica']) }}">By third person</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single_en', ['slug' => $date]) }}">@php echo date("Y"); @endphp Games</a>
        </div>
    </div>
    <div class="Main_menu">
        <div class="logo_cat">Software:</div>
        <div class="listOf_tags soft">
            <a href="{{ route('tags.single_en', ['slug' => 'dizayn']) }}">Design</a>
            <a href="{{ route('tags.single_en', ['slug' => 'audio']) }}">Audio</a>
            <a href="{{ route('tags.single_en', ['slug' => 'bezopasnost']) }}">Security</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ofis']) }}">Office</a>
            <a href="{{ route('tags.single_en', ['slug' => 'windows']) }}">Windows</a>
            <a href="{{ route('tags.single_en', ['slug' => 'programmirovanie']) }}">Programming</a>
            <a href="{{ route('tags.single_en', ['slug' => 'drayvery']) }}">Drivers</a>
            <a href="{{ route('tags.single_en', ['slug' => 'drugie']) }}">Others</a>
        </div>
    </div>
    <div class="Main_menu">
        <div class="logo_cat">Fails:</div>
        <div class="listOf_tags cheets">
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'chit-mody']) }}">Cheat-mods</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'sohraneniya']) }}">Saves</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'treynery']) }}">Trainers</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'mody']) }}">Mods</a>
        </div>
    </div>
</menu>


<menu class="menuSideNav">
    <!-- Vertical Menu -->
    <span>
        <div class="burger" >
            <div class="bar1"></div>
            <div class="bar2"></div>
            <div class="bar3"></div>
        </div>
    </span>
    <div class="SideBarBG"></div>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="main_admenu">
            <a href="{{route('home_en')}}"><p style="margin-left: 75px">Main</p></a>
            <a href="{{route('contact')}}">Contact</a>
            <a href="{{route('disclaimer')}}">Disclaimer</a>
            <a href="{{route('faq')}}">FAQ</a>
        </div>
        <div class="games_admenu">
            <h2>Games:</h2>
            <a href="{{ route('tags.single_en', ['slug' => 'otkrytyy-mir']) }}">Open World</a>
            <a href="{{ route('tags.single_en', ['slug' => 'gonki']) }}">Racing</a>
            <a href="{{ route('tags.single_en', ['slug' => 'stels']) }}">Stealth</a>
            <a href="{{ route('tags.single_en', ['slug' => 'igry-s-onlaynom']) }}">Online games</a>
            <a href="{{ route('tags.single_en', ['slug' => 'zombi']) }}">Zombies</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horror']) }}">Horror</a>
            <a href="{{ route('tags.single_en', ['slug' => 'sportivnye']) }}">Sport</a>
            <a href="{{ route('tags.single_en', ['slug' => 'vyzhivanie']) }}">Survival</a>
            <a href="{{ route('tags.single_en', ['slug' => 'draki']) }}">Fighting</a>
            <a href="{{ route('tags.single_en', ['slug' => 'arkady']) }}">Arcade</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ozhidaemye']) }}">Expected</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ekshen']) }}">Action</a>
            <a href="{{ route('tags.single_en', ['slug' => 'dlya-slabyh-pk']) }}">For the weak pc</a>
            <a href="{{ route('tags.single_en', ['slug' => 'shutery']) }}">Shooter</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horoshiy-syuzhet']) }}">Good story</a>
            <a href="{{ route('tags.single_en', ['slug' => 'horoshaya-grafika']) }}">Good graphic</a>
            <a href="{{ route('tags.single_en', ['slug' => 'rolevye-rpg']) }}">Role Play (Rpg)</a>
            <a href="{{ route('tags.single_en', ['slug' => 'simulyatory']) }}">Simulators</a>
            <a href="{{ route('tags.single_en', ['slug' => 'priklyucheniya']) }}">Adventures</a>
            <a href="{{ route('tags.single_en', ['slug' => 'vr-igry']) }}">VR-games</a>
            <a href="{{ route('tags.single_en', ['slug' => 'strategii']) }}">Strategy</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ot-pervogo-lica']) }}">By first person</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ot-tretego-lica']) }}">By third person</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single_en', ['slug' => $date]) }}">@php echo date("Y"); @endphp Games</a>
        </div>
        <div class="soft_admenu">
            <h2>Software:</h2>
            <a href="{{ route('tags.single_en', ['slug' => 'dizayn']) }}">Design</a>
            <a href="{{ route('tags.single_en', ['slug' => 'audio']) }}">Audio</a>
            <a href="{{ route('tags.single_en', ['slug' => 'bezopasnost']) }}">Security</a>
            <a href="{{ route('tags.single_en', ['slug' => 'ofis']) }}">Office</a>
            <a href="{{ route('tags.single_en', ['slug' => 'windows']) }}">Windows</a>
            <a href="{{ route('tags.single_en', ['slug' => 'programmirovanie']) }}">Programming</a>
            <a href="{{ route('tags.single_en', ['slug' => 'drayvery']) }}">Drivers</a>
            <a href="{{ route('tags.single_en', ['slug' => 'drugie']) }}">Others</a>
        </div>
        <div class="cheets_admenu">
            <h2>Fails:</h2>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'chit-mody']) }}">Cheat-mods</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'sohraneniya']) }}">Saves</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'treynery']) }}">Trainers</a>
            <a href="{{ route('tags.cheatsTag_en', ['slug' => 'mody']) }}">Mods</a>
        </div>
    </div>

</menu>
