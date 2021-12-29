<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Admin_panel &raquo; @include('blocks.title')</title>
    @include('blocks.links')
    <link href="/css/aPages.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="wrapper_tot">
        <div class="content">
            @include('blocks.header')
            <div class="AdminTop"></div>
            <div class="main_content">
                <div class="Admin_menu">
                    <name class="TopName"><p><img src="assets/reg.png" />Admin_panel</p></name>
                    <div>
                        <h3>Admin menu:</h3>
                        <a class="msg_chek" href="{{route('Post.index')}}">List of Posts</a>
                        <a class="msg_chek" href="{{route('reports-data')}}">
                            @if($reports_notify > 0)
                                <img src="assets/warningMSG.svg" title="New message!">
                            @endif
                            Reports
                        </a>
                        <a class="msg_chek" href="{{route('users-data')}}">Users</a>
                        <a class="msg_chek" href="{{route('contact-data')}}">
                            @if($total_notify > 0)
                                <img src="assets/warningMSG.svg" title="New message!">
                            @endif
                                Messages
                        </a>
                        @if(auth()->user()->is_admin)
                            <a class="msg_chek" href="{{route('documentation')}}">Documentation</a>
                            <a class="msg_chek" href="{{route('Tag.index')}}">Add Tags</a>
                            <a class="msg_chek" href="{{route('Category.index')}}">Add Categories</a>
                        @endif
                    </div>
                </div>
                <div class="statistics">
                    <h3>Telemetry:</h3><br>
                    @include('aPages.blocks.table_block')
                </div>
            </div>
            <a id="button" title="Наверх"><img src="assets/13173007341556279780-128.png" /> </a>
        </div>
    </div>
    @include('blocks.footer')
</body>

</html>
