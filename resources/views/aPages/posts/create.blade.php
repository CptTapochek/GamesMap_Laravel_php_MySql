<!DOCTYPE html>
<html lang="ru">
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
        <div class="main_content">
            <form action="{{route('Post.store')}}" method="post" class="editPosts" enctype="multipart/form-data">
                @csrf
                @if($errors->any()) <!-- Afisarea erorilor -->
                    <p class="msg" style="border: none;">
                    <ul class="listOfEro">
                        @foreach($errors->all() as $error)
                            <li class = "each_msg">{{ $error }}</li>
                        @endforeach
                    </ul>
                    </p>
                    @endif
                <div class="contact add_content">
                    @include('aPages.blocks.add_content')
                </div>
                    <div class="EditText">
                        <label for="description">Description:</label>
                        <textarea name="description" class="form_control" id="description" placeholder="Enter the text..." value="{{ old('description') }}"></textarea>
                        <br/><br/>
                        <label for="features" class="features">Features:</label>
                        <textarea name="features" class="form_control" id="features" placeholder="Enter the text..." value="{{ old('features') }}"></textarea>
                        <br/><br/>
                        <label for="torr_problems">Torrent Problems:</label>
                        <textarea name="torr_problems" class="form_control" id="torr_problems" placeholder="Enter the text..." value="{{ old('torr_problems') }}"></textarea>
                        <br/><br/>
                        <label for="torr_specification">Torrent specification:</label>
                        <textarea name="torr_specification" class="form_control" id="torr_specification" placeholder="Enter the text..." value="{{ old('torr_specification') }}"></textarea>
                    </div>
                    <br/><br/><div class="submitBTN PostSub"><button type="submit" name="send" class="btn_done">Add content</button></div>
            </form>
        </div>
    </div>
</div>
@include('aPages.blocks.footer_low')
    <script type="text/javascript">new SlimSelect({select: '#multiple-optgroups'})</script>
    <script src="{{ asset('ckeditor5/build/ckeditor.js') }}"></script>
    <script>
        ClassicEditor
            .create( document.querySelector( '#description' ), {
                toolbar: {
                    items: [
                        'Heading', '|', 'BlockQuote', 'Bold', 'Italic', 'Paragraph', 'Strikethrough', 'Underline', 'Link', '|', 'indent', 'outdent', 'alignment',
                        'Autoformat', '|', 'FontColor', 'FontFamily', 'FontSize', 'FontBackgroundColor', '|', 'List', 'ListStyle', '|', 'undo', 'redo',]
                },
                language: 'ru',
            } )
            .catch( function( error ) {
                console.error( error );
            } );
        ClassicEditor
            .create( document.querySelector( '#torr_problems' ), {
                toolbar: {
                    items: [
                        'Heading', '|', 'BlockQuote', 'Bold', 'Italic', 'Paragraph', 'Strikethrough', 'Underline', 'Link', '|', 'indent', 'outdent', 'alignment',
                        'Autoformat', '|', 'FontColor', 'FontFamily', 'FontSize', 'FontBackgroundColor', '|', 'List', 'ListStyle', '|', 'undo', 'redo',]
                },
                language: 'ru',
            } )
            .catch( function( error ) {
                console.error( error );
            } );
        ClassicEditor
            .create( document.querySelector( '#features' ), {
                toolbar: {
                    items: [
                        'Heading', '|', 'BlockQuote', 'Bold', 'Italic', 'Paragraph', 'Strikethrough', 'Underline', 'Link', '|', 'indent', 'outdent', 'alignment',
                        'Autoformat', '|', 'FontColor', 'FontFamily', 'FontSize', 'FontBackgroundColor', '|', 'List', 'ListStyle', '|', 'undo', 'redo',]
                },
                language: 'ru',
            } )
            .catch( function( error ) {
                console.error( error );
            } );
        ClassicEditor
            .create( document.querySelector( '#torr_specification' ), {
                toolbar: {
                    items: [
                        'Heading', '|', 'BlockQuote', 'Bold', 'Italic', 'Paragraph', 'Strikethrough', 'Underline', 'Link', '|', 'indent', 'outdent', 'alignment',
                        'Autoformat', '|', 'FontColor', 'FontFamily', 'FontSize', 'FontBackgroundColor', '|', 'List', 'ListStyle', '|', 'undo', 'redo',]
                },
                language: 'ru',
            } )
            .catch( function( error ) {
                console.error( error );
            } );
    </script>
</body>
</html>
