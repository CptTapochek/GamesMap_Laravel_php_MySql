<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports &raquo; @include('blocks.title')</title>
    @include('blocks.links')
    <link href="/css/aPages.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="TablesTop"><p>&#10142;Reports</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <div class="main_content">
            <div class="messages_cont">
                @if(count($data))
                    @foreach($data as $element)
                        <div id="messages_cont">
                            @if($element->seen == 0)
                                <img src="assets/warningMSG.svg" title="New message!">
                                <div class="hide">{{\App\Models\Report::where('id', $element->id)->update(['seen' => 1])}}</div>
                            @endif
                            <form action="{{ route('reports-delete', ['ID' => $element->id]) }}" method="post">
                                @csrf
                                <button title="Delete" type="submit" onclick="return confirm('are you sure you want to delete?')"><img src="assets/delete.png"></button>
                            </form>
                            @if($element->post_id > 0)
                                <div class="ReportLeft">
                                    <pre><b>Post_name:</b> {{$posts->where('id', $element->post_id)->first()->title}}</pre>
                                </div>
                            @endif
                            <h3>Report #{{$element->id}}</h3>
                            <pre><b>Reported:</b> {{$element->user_sender}}</pre>
                            <pre><b>Reported_on:</b> {{$element->user_reported}}</pre>
                            <pre class="data_msg"><b>Date:</b> {{$element->created_at->timezone('Europe/Chisinau')}}</pre>
                            <h3>Message</h3>
                            <p class="message_msg">{{$element->message}}</p>
                            @if($element->comment_id > 0)
                                <br><h3>Comment</h3>
                                <p class="message_msg">{{$comments->where('id', $element->comment_id)->first()->body}}</p>
                            @endif
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
