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
        <br/><br/><br/>
        <div class="search_block"><a class="addBTN Menu_add" href="{{route('Tag.create')}}">Add Tag &#43;</a></div>
        @if(session('success')) <!-- Afisarea mesajului de succes -->
        <div class="success_cat" style="margin-bottom: -30px">
            <p class="msg_success">
                {{session('success')}}
            </p>
        </div><br><br>
        @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
            <div class="success_cat" style="margin-bottom: -30px">
                <p class="msg">
                    {{session('error')}}
                </p>
            </div><br><br>
        @else<br><br>
        @endif
        <div class="main_content">
            @if(count($tags))
                <div class="AdminsTables">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Tag</th>
                            <th>English name</th>
                            <th>Slug</th>
                            <th>Action</th>
                        </tr>
                        @foreach($tags as $tag)
                            <tr>
                                <td>{{ $tag->id }}</td>
                                <td>{{ $tag->title }}</td>
                                <td>{{ $tag->en_title }}</td>
                                <td>{{ $tag->slug }}</td>
                                <td><div class="ActionCat">
                                        <a href="{{route('Tag.edit', ['Tag' => $tag->id]) }}" title="Edit"><img class="EditCat" src="assets/edit.png"/></a>
                                        <form action="{{route('Tag.destroy', ['Tag' => $tag->id]) }}" method="post">
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
                        {{ $tags->links('vendor.pagination.tm_pagination') }}
                    </div>
                </div>
            @else
                <p>There is no tags yet!</p>
            @endif
        </div>
    </div>
@include('aPages.blocks.footer_low')
</body>
</html>
