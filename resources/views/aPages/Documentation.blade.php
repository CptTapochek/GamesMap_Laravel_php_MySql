<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Documentation &raquo; @include('blocks.title')</title>
    @include('blocks.links')
    <link href="/css/aPages.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="TablesTop"><p>&#10142;Documentation</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <div class="main_content">
            <article class="paper">
                <ul>
                    <li>
                        <h3>1) A post must have (Публикация должна иметь)</h3>
                        <p style="margin: 10px">
                            a)Title b)Category c)Cover d)Description
                        </p>
                    </li><br>
                    <li>
                        <h3>2) Pictures for a post must be (Картинки для поста должны быть)</h3>
                        <p style="margin: 10px">
                           <mark> a)2 b)4 c)6</mark>
                        </p>
                    </li><br>
                    <li>
                        <h3>3) Category cannot contain tags from other categories (Категория не может содержать тегов из другой категорий)</h3>
                        <p style="margin: 10px">
                            <ins>For example</ins>: The category <b>games</b>, can't have tags from the categories <b>cheats</b> or <b>software</b> or vice versa.
                        </p>
                        <p style="margin: 10px">
                            <ins>Например </ins>: категория <b> игры </b> не может иметь тегов из категорий <b> читы </b> или <b> программное обеспечение </b> или наоборот.
                        </p>
                        <img width="700" height="240" src="docIMG/screen_1.png">
                    </li><br>
                    <li>
                        <h3>4) Keywords must be about the post (Ключевые слова должны быть о публикации)</h3>
                        <p style="margin: 10px">
                            <img width="650" height="500" src="docIMG/screen_2.png">
                        </p>
                    </li><br>
                    <li>
                        <h3>5) How to load the trailer (как загрузить трейлер)</h3>
                        <p style="margin: 10px">
                            <img width="650" height="300" src="docIMG/screen_3.jpg">
                            <img width="650" height="300" src="docIMG/screen_4.jpg">
                            <img width="650" height="400" src="docIMG/screen_5.png">
                            <p style="color: red">* If you want to put only one trailer, you must to put it in «Trailer_1».
                            (Если вы хотите поставить только один трейлер, вы должны поместить его в «Trailer_1».)</p>
                        </p>
                    </li><br>
                    <li>
                        <p style="margin: 10px">
                            <b>The entire interface has been made as simple and convenient as possible.
                                I hope there will be no problems in use.
                                With love, the administration of the site TorrentMap!😘😘😘 </b>
                        </p>
                        <p style="margin: 10px">
                            <b>Весь интерфейс был сделан максимально простым и удобным.
                                Надеюсь проблем в использований не возникнут.
                                С любовью администрация сайта TorrentMap!😘😘😘 </b>
                        </p>
                    </li><br>
                </ul>
            </article>
        </div>
        <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
    </div>
</div>
@include('blocks.footer')
</body>

</html>
