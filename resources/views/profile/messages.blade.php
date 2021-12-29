@auth()
    <!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Чат &raquo; @include('blocks.title')</title>
    @include('blocks.links_msg')
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="main_content">
            <div class="LoginMenu ChatMenu" >@include('blocks.menu')</div>
            <div class="contact UserCab ChatCab" style="margin-left: 0px">
                <div class="login_msg cabinet_msg">
                    <div class="contactNEW contactCAB"><p>💼 Личный кабинет</p></div><br>
                </div>

                <div class="ViewProfChat">
                    <div class="nic">Пользователь: <span id="nic"><div class="nick">{{$user->name}}</div></span></div>
                    @if($user->avatar)
                        <img src="{{asset('storage/'. $user->avatar)}}" class="ava_cab" />
                    @else
                        <img src="assets/profile_img.png" class="ava_cab" />
                    @endif
                    <div class="container_prof">
                        @if($user->name == auth()->user()->name)
                            <span class="email">
                                <h3>E-Mail:</h3>{{$user->email}}
                            </span><br />
                        @else
                            @if($user->isOnline()) <p class="state_online">Online</p>
                            @else  <p class="state_online state_offline">Offline</p>
                            @endif
                        @endif
                        <span class="email">
                                <h3 class="date_cab">Дата регистрации:</h3> <div class="date_time">{{$user->created_at->timezone('Europe/Chisinau')->format('d-m-Y')}}</div>
                            </span><br /><br />
                        <span class="email">
                                <h3 class="state_cab">Статус:</h3>
                                @if($user->is_admin) <p class="admin_state">Администратор</p>
                            @elseif($user->is_moderator) <p class="moder_state">Модератор</p>
                            @elseif($user->is_baned) <p class="baned_state">Забанен</p>
                            @else <p class="user_state">Пользователь</p>
                            @endif
                            </span><br /><br />
                            @if($user == auth()->user())
                                <a class="logout" href="{{route('logout')}}">Выход</a>
                                @if($user->is_admin)<a class="logout" class="adminBTN" href="{{route('admin_p')}}">
                                    @if($total_notify > 0 || $reports_notify > 0)
                                        <img src="assets/warningMSG.svg" title="New message!">
                                    @endif Admin</a><br /><br /><br />
                                @elseif($user->is_moderator)<a class="logout" class="adminBTN" href="{{route('admin_p')}}">
                                    @if($total_notify > 0 || $reports_notify > 0)
                                        <img src="assets/warningMSG.svg" title="New message!">
                                    @endif Admin</a><br /><br /><br />
                                @else</p><br /><br /><br />
                                @endif<br />
                            @else<br /><br /><br /><br />
                            @endif
                    </div>
                    <div class="container_chat" >
                        <div class="ui">
                            <div class="left-menu">
                                <h3 class="search Chats">Переписки:</h3>
                                <menu class="list-friends">
                                    @include('blocks.msg_block')
                                </menu>
                            </div>
                            <div class="chat">
                                @if($user == auth()->user())
                                    <h2 class="ChooseMSG">Выберите, кому хотели бы написать</h2>
                                @else
                                <div class="top">
                                    <a href="{{ route('profile.index', ['name' => $user -> name]) }}">
                                        <div class="avatar">
                                            @if($user->avatar)
                                                <img width="50" height="50" src="{{asset('storage/ResizeUsers/'. $user->avatar)}}">
                                            @else
                                                <img width="50" height="50" src="assets/profile_img.png">
                                            @endif
                                        </div>
                                    </a>
                                    <a class="main_user_link" href="{{ route('profile.index', ['name' => $user -> name]) }}">
                                        <div class="info">
                                            <div class="name">{{$user->name}}</div>
                                        </div>
                                    </a>
                                    <i class="fa fa-star"></i>
                                </div>
                                <ul class="messages">
                                    @if($conversations)
                                        @foreach($messages as $msg)
                                            @if($msg->user_id == auth()->user()->id)
                                                <li class="i messageMy user_msg">
                                                    <div class="head">
                                                        <span class="time">{{$msg->created_at->timezone('Europe/Chisinau')->format('d.m.Y, H:i') }}</span>
                                                        <span class="name @if(!$msg->is_seen) notify @endif">{{auth()->user()->name}}</span>
                                                    </div>
                                                    <div class="message">{{$msg->message}}</div><br/>
                                                    <form action="{{route('delete.message', ['name' => $user -> name])}}" method="post" title="Удалить сообщение">
                                                        @csrf
                                                        <input type="hidden" name="msg_id" value="{{ $msg->id }}" />
                                                        <button type="submit" onclick="return confirm('Вы уверены, что хотите удалить сообщение?')" class="delete_msg_my"><img src="assets/delete.png"></button>
                                                    </form>
                                                </li>
                                            @endif
                                            @if($msg->user_id == $user->id)
                                                <li class="friend-with-a-SVAGina messageUser user_msg">
                                                    <div class="head">
                                                        <span class="name @if(!$msg->is_seen) notify @endif">{{$user->name}}</span>
                                                        <span class="time">{{$msg->created_at->timezone('Europe/Chisinau')->format('d.m.Y, H:i') }}</span>
                                                    </div><div class="hide">{{$messageId = $msg->id}}</div>
                                                    <div class="message">{{$msg->message}}<div class="hide">@if(!$msg->is_seen){{\Nahid\Talk\Facades\Talk::makeSeen($messageId)}}
                                                        {{\Illuminate\Support\Facades\DB::table('users')->where('id', auth()->user()->id)->update(['Notify' => 0])}} @endif</div></div>
                                                    <form action="{{route('delete.message', ['name' => $user -> name])}}" method="post" title="Удалить сообщение">
                                                        @csrf
                                                        <input type="hidden" name="msg_id" value="{{ $msg->id }}" />
                                                        <button type="submit" onclick="return confirm('Вы уверены, что хотите удалить сообщение?')" class="delete_msg"><img src="assets/delete.png"></button>
                                                    </form>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endif
                                </ul>
                                <div class="write-form">
                                    <div class="TextArea_send"
                                        @csrf
                                        <textarea placeholder="Введите ваше сообщение..." name="message" id="texxt" class="msgArea" rows="2"></textarea>
                                        <input type="hidden" class="current_time" value="{{ date('d.m.Y, H:i')}}">
                                        <input type="hidden" class="user_name" value="{{ auth()->user()->name }}">
                                        {{--<i class="fa fa-picture-o"></i>
                                        <i class="fa fa-file-o"></i>--}}
                                        <button class="send">Отправить</button>
                                    </div>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
</div>
@include('blocks.footer_2')
<script>
    /* Messages send */
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(document).ready(function (){
        $('.send').on('click', function (){
            var message = $('textarea.msgArea').val();
            var CurrentTime = $('input.current_time').val();
            var UserName = $('input.user_name').val();

            function funcBefore(){
                $(this).prop("disabled", true);
            }

            $.ajax({
                method: "POST",
                url: "{{route('send.message', ['name' => $user -> name])}}",
                data: { message: message },
                beforeSend: funcBefore,
                success: function (data){
                    $('ul.messages').append('<li class="i messageMy"><div class="head"><span class="time">'+ CurrentTime  +'</span>' +
                        '<span class="name notify">'+  UserName +'</span></div>' +
                    '<div class="message">' + data + '</div></li>');
                }
            })
            $('textarea.msgArea').val('');
        })
    })
</script>
</body>
</html>
@endauth
