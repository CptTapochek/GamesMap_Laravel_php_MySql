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
        <div class="TablesTop"><p>&#10142;List of tags</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <br /><br />
        <div class="main_content">
            <form action="{{route('Tag.store')}}" method="post" class="edit_Subject">
                @csrf
                @if($errors->any()) <!-- Afisarea erorilor -->
                    <div class="success_cat" style="margin-top: -30px">
                        <p class="msg">
                            @foreach($errors->all() as $error)
                            {{ $error }}
                            @endforeach
                        </p>
                    </div><br>
                @endif
                <label for="title">Russian Title:</label><br>
                <input type="text" name="title" placeholder="Enter the title..." class="form_control"/><br /><br />
                <label for="title">English Title:</label><br>
                <input type="text" name="en_title" placeholder="Enter the title..." class="form_control"/><br /><br />
                <div class="submitCenter"><button type="submit" name="send" class="btn_done">Add Tag</button></div>
            </form>
        </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>
