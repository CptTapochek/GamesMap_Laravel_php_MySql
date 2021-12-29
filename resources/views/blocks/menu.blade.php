@section('menu')
<menu>
    <div class="Main_menu">
        <div class="logo_cat">Игры:</div>
        <div class="listOf_tags games">
            <a href="{{ route('tags.single', ['slug' => 'otkrytyy-mir']) }}">Открытый мир</a>
            <a href="{{ route('tags.single', ['slug' => 'gonki']) }}">Гонки</a>
            <a href="{{ route('tags.single', ['slug' => 'stels']) }}">Стелс</a>
            <a href="{{ route('tags.single', ['slug' => 'igry-s-onlaynom']) }}">Игры с онлайном</a>
            <a href="{{ route('tags.single', ['slug' => 'zombi']) }}">Зомби</a>
            <a href="{{ route('tags.single', ['slug' => 'horror']) }}">Хоррор</a>
            <a href="{{ route('tags.single', ['slug' => 'sportivnye']) }}">Спортивные</a>
            <a href="{{ route('tags.single', ['slug' => 'vyzhivanie']) }}">Выживание</a>
            <a href="{{ route('tags.single', ['slug' => 'draki']) }}">Драки</a>
            <a href="{{ route('tags.single', ['slug' => 'arkady']) }}">Аркады</a>
            <a href="{{ route('tags.single', ['slug' => 'ozhidaemye']) }}">Ожидаемые</a>
            <a href="{{ route('tags.single', ['slug' => 'ekshen']) }}">Экшен</a>
            <a href="{{ route('tags.single', ['slug' => 'dlya-slabyh-pk']) }}">Для слабых ПК</a>
            <a href="{{ route('tags.single', ['slug' => 'shutery']) }}">Шутеры</a>
            <a href="{{ route('tags.single', ['slug' => 'horoshiy-syuzhet']) }}">Хороший сюжет</a>
            <a href="{{ route('tags.single', ['slug' => 'horoshaya-grafika']) }}">Хорошая графика</a>
            <a href="{{ route('tags.single', ['slug' => 'rolevye-rpg']) }}">Ролевые (Rpg)</a>
            <a href="{{ route('tags.single', ['slug' => 'simulyatory']) }}">Симуляторы</a>
            <a href="{{ route('tags.single', ['slug' => 'priklyucheniya']) }}">Приключения</a>
            <a href="{{ route('tags.single', ['slug' => 'vr-igry']) }}">VR-игры</a>
            <a href="{{ route('tags.single', ['slug' => 'strategii']) }}">Стратегии</a>
            <a href="{{ route('tags.single', ['slug' => 'ot-pervogo-lica']) }}">От первого лица</a>
            <a href="{{ route('tags.single', ['slug' => 'ot-tretego-lica']) }}">От третьего лица</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single', ['slug' => $date]) }}">Игры @php echo date("Y"); @endphp</a>
        </div>
    </div>
    <div class="Main_menu">
        <div class="logo_cat">Софт:</div>
        <div class="listOf_tags soft">
            <a href="{{ route('tags.single', ['slug' => 'dizayn']) }}">Дизайн</a>
            <a href="{{ route('tags.single', ['slug' => 'audio']) }}">Аудио</a>
            <a href="{{ route('tags.single', ['slug' => 'bezopasnost']) }}">Безопасность</a>
            <a href="{{ route('tags.single', ['slug' => 'ofis']) }}">Офис</a>
            <a href="{{ route('tags.single', ['slug' => 'windows']) }}">Windows</a>
            <a href="{{ route('tags.single', ['slug' => 'programmirovanie']) }}">Программирование</a>
            <a href="{{ route('tags.single', ['slug' => 'drayvery']) }}">Драйверы</a>
            <a href="{{ route('tags.single', ['slug' => 'drugie']) }}">Другие</a>
        </div>
    </div>
    <div class="Main_menu">
        <div class="logo_cat">Файлы:</div>
        <div class="listOf_tags cheets">
            <a href="{{ route('tags.cheatsTag', ['slug' => 'chit-mody']) }}">Чит-моды</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}">Сохранения</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'treynery']) }}">Трейнеры</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'mody']) }}">Моды</a>
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
            <a href="{{route('home')}}"><p style="margin-left: 75px">Главное</p></a>
            <a href="{{route('contact')}}">Контакты</a>
            <a href="{{route('disclaimer')}}">Правообладателям</a>
            <a href="{{route('faq')}}">FAQ</a>
        </div>
        <div class="games_admenu">
            <h2>Игры:</h2>
            <a href="{{ route('tags.single', ['slug' => 'otkrytyy-mir']) }}">Открытый мир</a>
            <a href="{{ route('tags.single', ['slug' => 'gonki']) }}">Гонки</a>
            <a href="{{ route('tags.single', ['slug' => 'stels']) }}">Стелс</a>
            <a href="{{ route('tags.single', ['slug' => 'igry-s-onlaynom']) }}">Игры с онлайном</a>
            <a href="{{ route('tags.single', ['slug' => 'zombi']) }}">Зомби</a>
            <a href="{{ route('tags.single', ['slug' => 'horror']) }}">Хоррор</a>
            <a href="{{ route('tags.single', ['slug' => 'sportivnye']) }}">Спортивные</a>
            <a href="{{ route('tags.single', ['slug' => 'vyzhivanie']) }}">Выживание</a>
            <a href="{{ route('tags.single', ['slug' => 'draki']) }}">Драки</a>
            <a href="{{ route('tags.single', ['slug' => 'arkady']) }}">Аркады</a>
            <a href="{{ route('tags.single', ['slug' => 'ozhidaemye']) }}">Ожидаемые</a>
            <a href="{{ route('tags.single', ['slug' => 'ekshen']) }}">Экшен</a>
            <a href="{{ route('tags.single', ['slug' => 'dlya-slabyh-pk']) }}">Для слабых ПК</a>
            <a href="{{ route('tags.single', ['slug' => 'shutery']) }}">Шутеры</a>
            <a href="{{ route('tags.single', ['slug' => 'horoshiy-syuzhet']) }}">Хороший сюжет</a>
            <a href="{{ route('tags.single', ['slug' => 'horoshaya-grafika']) }}">Хорошая графика</a>
            <a href="{{ route('tags.single', ['slug' => 'rolevye-rpg']) }}">Ролевые (Rpg)</a>
            <a href="{{ route('tags.single', ['slug' => 'simulyatory']) }}">Симуляторы</a>
            <a href="{{ route('tags.single', ['slug' => 'priklyucheniya']) }}">Приключения</a>
            <a href="{{ route('tags.single', ['slug' => 'vr-igry']) }}">VR-игры</a>
            <a href="{{ route('tags.single', ['slug' => 'strategii']) }}">Стратегии</a>
            <a href="{{ route('tags.single', ['slug' => 'ot-pervogo-lica']) }}">От первого лица</a>
            <a href="{{ route('tags.single', ['slug' => 'ot-tretego-lica']) }}">От третьего лица</a>
            @php $date = date("Y")@endphp
            <a href="{{ route('tags.single', ['slug' => $date]) }}">Игры @php echo date("Y"); @endphp</a>
        </div>
        <div class="soft_admenu">
            <h2>Софт:</h2>
            <a href="{{ route('tags.single', ['slug' => 'dizayn']) }}">Дизайн</a>
            <a href="{{ route('tags.single', ['slug' => 'audio']) }}">Аудио</a>
            <a href="{{ route('tags.single', ['slug' => 'bezopasnost']) }}">Безопасность</a>
            <a href="{{ route('tags.single', ['slug' => 'ofis']) }}">Офис</a>
            <a href="{{ route('tags.single', ['slug' => 'windows']) }}">Windows</a>
            <a href="{{ route('tags.single', ['slug' => 'programmirovanie']) }}">Программирование</a>
            <a href="{{ route('tags.single', ['slug' => 'drayvery']) }}">Драйверы</a>
            <a href="{{ route('tags.single', ['slug' => 'drugie']) }}">Другие</a>
        </div>
        <div class="cheets_admenu">
            <h2>Файлы:</h2>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'chit-mody']) }}">Чит-моды</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'sohraneniya']) }}">Сохранения</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'treynery']) }}">Трейнеры</a>
            <a href="{{ route('tags.cheatsTag', ['slug' => 'mody']) }}">Моды</a>
        </div>
    </div>

</menu>
