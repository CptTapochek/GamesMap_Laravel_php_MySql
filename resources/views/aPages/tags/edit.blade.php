<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Tags &raquo; @include('blocks.title')</title>
    @include('aPages.blocks.links_low')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('aPages.blocks.header_low')
        <div class="TablesTop"><p>&#10142;Tag: {{ $tags->title }}</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <br /><br />
        <div class="main_content">
            <form action="{{ route('Tag.update', ['Tag' => $tags->id]) }}" method="post" class="edit_Subject">
                @csrf
                @method('PUT')
                @if($errors->any()) <!-- Afisarea erorilor -->
                    <div class="success_cat" style="margin-top: -30px">
                        <p class="msg">
                            @foreach($errors->all() as $error)
                                {{ $error }}
                            @endforeach
                        </p>
                    </div><br>
                @endif
                <label for="title">Title:</label><br>
                <input type="text" name="title" value="{{ $tags->title }}" class="form_control"/><br /><br/>
                <div class="submitCenter"><button type="submit" name="send" class="btn_done">Edit Tag</button></div>
            </form>
        </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>
