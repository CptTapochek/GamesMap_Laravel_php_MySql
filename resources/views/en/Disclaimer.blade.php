<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>@include('blocks.title')</title>
    @include('blocks.links')
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="new_onsite" id="index_new"><img style="width: 20px; height: 20px; margin-top: 0px;" src="assets/warning.svg" />
            <p>Disclaimer / Правообладателям</p>
            <div class="dropdownSORT" style="z-index: -100; opacity: 0;">
                @include('blocks.sorting')
            </div>
        </div>
        <div class="main_content">
            <div class="HomeMenu">@include('blocks.menu')@include('posts.popular_block')</div>
            <div class="all_content" id="goods">
                    <p class="disclaimer">
                        Сайт не несёт ответственности за содержание материалов. Если вы являетесь правообладателям и хотите
                        убрать свой материал с нашего сайта, то <a href="{{route('contact')}}">напишите администрации</a>.
                        Напомним, что ваша собственность находилась в публичном доступе и только поэтому была опубликована на нашем сайте.
                        Сайт некоммерческий, и мы не можем проверить все публикации пользователей.
                    </p>
            </div>
        </div>

        <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
    </div>
</div>
@include('blocks.footer')
</body>
</html>
