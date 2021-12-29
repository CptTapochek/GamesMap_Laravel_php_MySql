<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Content &raquo; @include('blocks.title')</title>
    @include('aPages.blocks.links_low')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('aPages.blocks.header_low')
        <div class="TablesTop"><p>&#10142;List of users</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <br/><br/><br/>
        <div class="search_block">
            <form action="{{ route('search_user') }}" method="get" id="search_post">
                <input id="search_input" name="search" type="text" placeholder="Search here..." required>
                <button id="search_button" type="submit" title="Search">🔍</button>
            </form>
        </div>
        @if(session('success')) <!-- Afisarea mesajului de succes -->
        <div class="success_cat" style="margin-bottom: -30px">
            <p class="msg_success">
                {{session('success')}}
            </p>
        </div><br><br>
        @else<br><br>
        @endif
        <div class="main_content">
            @if(count($users))
                <div class="AdminsTables">
                    <table>
                        <tr>
                            <th>@sortablelink('id', 'ID⇅')</th>
                            <th>@sortablelink('name', 'Name⇅')</th>
                            <th>Email</th>
                            <th>State</th>
                            <th>@sortablelink('created_at', 'RegisterDate⇅')</th>
                            <th>Action</th>
                        </tr>
                        @foreach($users as $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                @if($user->is_admin)<td>Admin</td>
                                @elseif($user->is_moderator)<td>Moderator</td>
                                @elseif($user->is_baned)<td>Banned</td>
                                @else<td>User</td>
                                @endif
                                <td>{{ $user->created_at->timezone('Europe/Chisinau')->format("Y-m-d, H:i") }}</td>
                                <td><div class="ActionCat">
                                        @if(auth()->user()->is_admin)
                                            <a href="{{route('User.edit', ['name' => $user->name]) }}" title="Restate"><img class="EditCat" src="assets/edit.png"/></a>
                                        @endif
                                        @if($user->is_baned)
                                            <form action="{{route('User.unbanned', ['name' => $user->name]) }}" method="post">
                                                @csrf
                                                <button type="submit" title="Unban" onclick="return confirm('Are you sure you want to unban this user?')"><img class="DeleteCat" src="assets/plus.png"/></button>
                                            </form>
                                        @elseif(!$user->is_baned)
                                            <form action="{{route('User.banned', ['name' => $user->name]) }}" method="post">
                                                @csrf
                                                <button type="submit" title="Ban" onclick="return confirm('Are you sure you want to ban this user?')"><img class="DeleteCat" src="assets/delete.png"/></button>
                                            </form>
                                        @endif
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                    <div class="tags_pag">
                        {{ $users->links('vendor.pagination.tm_pagination') }}
                    </div>
                </div>
            @else
                <p>There is no users yet!</p>
            @endif
        </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>

