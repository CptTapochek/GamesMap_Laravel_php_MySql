<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restate user &raquo; @include('blocks.title')</title>
    @include('aPages.blocks.links_low')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('aPages.blocks.header_low')
            <div class="TablesTop"><p>&#10142;User: {{ $user->name }}</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
            <br><br>
            <div class="main_content">
                <form action="{{ route('User.restate', ['name' => $user->name]) }}" method="post" class="edit_Subject">
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
                    <label for="state">State:</label><br>
                    <select name="state" class="form_control">
                        <option>Select option...</option>
                        <option value="user">User</option>
                        <option value="moderator">Moderator</option>
                        <option value="admin">Administrator</option>
                    </select><br/><br/>
                    <div class="submitCenter"><button type="submit" name="send" class="btn_done">Edit</button></div>
                </form>
            </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>
