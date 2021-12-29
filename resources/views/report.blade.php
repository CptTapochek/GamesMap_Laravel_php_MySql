<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Report &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="main_content">
            <div class="LoginMenu">@include('blocks.menu')</div>
            <form action="{{ route('report.post') }}" class="contactFORM" method="post" enctype="multipart/form-data">
                <div class="contactNEW"><p>⚠ Report</p></div>
                <div class="contact" id="contact_msg">
                @csrf
                @if($errors->any()) <!-- Afisarea erorilor -->
                    <p class="msg">
                    <ul class="listOfEro">
                        @foreach($errors->all() as $error)
                            <li class = "each_msg">{{ $error }}</li>
                        @endforeach
                    </ul>
                    </p><br />
                @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
                    <p class="msg">
                    <ul class="listOfEro"><li class="each_msg">{{session('error')}}</li></ul>
                    </p></br>
                    @endif

                    <label for="message">Текст вашей жалобы:</label>
                    <textarea name="message" placeholder="Введите ваше сообщение..." class="form_control" id="message"></textarea><br />
                    <input type="hidden" name="post_id" value="{{ $postID }}">
                    <input type="hidden" name="comment_id" value="{{ $commentID }}">
                    <input type="hidden" name="user_name" value="{{ $user->name }}">

                    <div class="submitBTN"><button type="submit" name="send" class="btn_done">Отправить</button></div><br /><br />

                </div>
            </form>
        </div>
    </div>
</div>
@include('blocks.footer')
</body>

</html>
