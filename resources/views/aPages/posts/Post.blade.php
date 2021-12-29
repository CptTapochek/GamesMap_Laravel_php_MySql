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
        <div class="TablesTop"><p>&#10142;List of posts</p><a href="{{route('admin_p')}}" class="AdimnPanelBTN">Admin Panel</a></div>
        <br/><br/><br/>
        <div class="search_block">
            <a class="addBTN" href="{{route('Post.create')}}">Add Post &#43;</a>
            <form action="{{ route('search_post') }}" method="get" id="search_post">
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
            @if(count($posts))
                <div class="AdminsTables">
                    <table>
                        <tr>
                            <th>@sortablelink('id', 'ID⇅')</th>
                            <th>@sortablelink('title', 'Title⇅')</th>
                            <th>Category</th>
                            <th>Tags</th>
                            <th>@sortablelink('views', 'Views⇅')</th>
                            <th>@sortablelink('count_comment', 'Comm⇅')</th>
                            <th>@sortablelink('created_at', 'CreatedAt⇅')</th>
                            <th>Action </th>
                        </tr>
                        @foreach($posts as $post)
                            <tr>
                                <td>{{ $post->id }}</td>
                                <td>{{ $post->title }}</td>
                                <td>{{ $post->category->title }}</td>
                                <td>{{ $post->tags->pluck('title')->join(', ') }}</td>
                                <td>{{ $post->views }}</td>
                                <td>{{ $post->count_comment }}</td>
                                <td>{{ $post->created_at->format("Y-m-d") }}</td>
                                <td><div class="ActionCat">
                                        <a href="{{route('Post.edit', ['Post' => $post->id]) }}" title="Edit"><img class="EditCat" src="assets/edit.png"/></a>
                                        <form action="{{route('Post.destroy', ['Post' => $post->id]) }}" method="post">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" title="Delete" onclick="return confirm('are you sure you want to delete?')"><img class="DeleteCat" src="assets/delete.png"/></button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                    <div class="tags_pag">
                        {{ $posts->links('vendor.pagination.tm_pagination') }}
                    </div>
                </div>
            @else
                <p>There is no posts yet!</p>
            @endif
        </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>
