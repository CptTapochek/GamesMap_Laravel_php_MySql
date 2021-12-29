<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All_messages &raquo; @include('blocks.title')</title>
    @include('blocks.links')
    <link href="/css/aPages.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="TablesTop"><p>&#10142;Messages</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
            <div class="main_content">
                <div class="messages_cont">
                    @if(count($data))
                    @foreach($data as $element)
                        <div id="messages_cont" class="GreenBG">
                            @if($element->seen == 0)
                                <img src="assets/warningMSG.svg" title="New message!">
                                <div class="hide">{{\App\Models\Contact::where('id', $element->id)->update(['seen' => 1])}}</div>
                            @endif
                            <form action="{{ route('contact-delete', ['msgID' => $element->id]) }}" method="post">
                                @csrf
                                <button title="Delete" type="submit" onclick="return confirm('are you sure you want to delete?')"><img src="assets/delete.png"></button>
                            </form>
                            <h3>{{$element->subject}}</h3>
                            <pre>Nickname: {{$element->name}}</pre>
                            <pre>Email: {{$element->email}}</pre>
                            <pre class="data_msg">Дата: {{$element->created_at->timezone('Europe/Chisinau')}}</pre>
                            <p class="message_msg">{{$element->message}}</p>
                        </div>
                    @endforeach
                        <div class="messages_pag">
                            {{ $data->links('vendor.pagination.tm_pagination') }}
                        </div>
                </div>
            <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
        </div>
        @endif
    </div>
</div>
@include('blocks.footer')
</body>
</html>
