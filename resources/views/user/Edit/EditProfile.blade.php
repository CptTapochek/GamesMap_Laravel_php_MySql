<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Редактирование профиля &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="main_content">
            <div class="LoginMenu">@include('blocks.menu')</div>
            <form action="{{ route('change.update') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="contactNEW"><p>➜Редактирование профиля</p></div>
                <div class="contact" id="contact_msg">
                @if($errors->any()) <!-- Afisarea erorilor -->
                    <p class="msg">
                    <ul class="listOfEro regERR">
                        @foreach($errors->all() as $error)
                            <li class = "each_msg">{{ $error }}</li>
                        @endforeach
                    </ul>
                    </p>
                @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
                    <p class="msg">
                    <ul class="listOfEro"><li class="each_msg">{{session('error')}}</li></ul>
                    </p></br>
                @endif
                    <div class="change_ava">
                        <h3 style="margin-left: 3px">1) Сменить аватарку:</h3>
                        <input type="file" name="avatar" id="change_ava"/><br /><br />
                        <h3>2) Удалить аватарку:</h3>
                        <input type="checkbox" name="delete_ava" id="change_ava" class="delete_ava"/><br /><br />
                    </div>
                    <div class="change_pass">
                        <h3>3) Сменить логин:</h3><br />
                        <label for="name">Новый логин:</label><br />
                        <input type="text" name="name" placeholder="Введите логин..." class="form_control" value="{{ Request::old('name') ?: Auth::user()->name }}"/><br /><br />
                        <h3>4) Сменить E-Mail:</h3><br />
                        <label for="email">Новый e-mail:</label><br />
                        <input type="email" name="email" placeholder="Введите ваш email..." class="form_control" value="{{ Request::old('email') ?: Auth::user()->email }}"/><br /><br />
                        <!--<h3>5) Сменить пароль:</h3><br />
                        <label for="current_password">Старый пароль:</label><br />
                        <input type="password" name="current_password" placeholder="Введите пароль..." class="form_control" id="passId"/><br /><br />

                        <label for="password">Новый пароль:</label><br />
                        <input type="password" name="password" placeholder="Введите пароль..." class="form_control" id="passId"/><br /><br />

                        <label for="password_confirmation">Повторите пароль:</label><br />
                        <input type="password" name="password_confirmation" class="form_control" placeholder="Введите пароль..." id="passId2"/><br />
                        <input class="ShowPass shwpss" type="checkbox" onclick="ShowPass()"><h4>Показать пароль</h4><br /><br />-->
                    </div>
                    <div class="submitBTN"><button type="submit" name="send" class="btn_done">Изменить</button></div>
                </div>
            </form>
        </div>
    </div>
</div>
@include('blocks.footer')
</body>

</html>
