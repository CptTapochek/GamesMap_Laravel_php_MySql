@section('edit_content')
    <div class="grid_item">
        <label for="title">Title:</label>
        <input type="text" value="{{ $post->title }}" name="title" class="form_control" id="gname"/></div>

    <div class="grid_item">
        <label for="category_id">Category:</label>
        <p><select name="category_id" class="form_control" id="category_id">
                <option>Select category...</option>
                @foreach($categories as $k => $v)
                    <option value="{{ $k }}"@if($k == $post->category_id) selected @endif>{{ $v }}</option>
                @endforeach
            </select></p></div>

    <div class="grid_item">
        <label for="tags">Tags:</label>
        <select name="tags[]" class="addPosts" id="multiple-optgroups" multiple="">
            <optgroup label="All_tags">
                @foreach($tags as $k => $v)
                    <option value="{{ $k }}"@if(in_array($k, $post->tags->pluck('id')->all())) selected @endif>{{ $v }}</option>
                @endforeach
            </optgroup>
        </select></div>

    <div class="grid_item">
        <label for="dlc_list">DLC List:</label>
        <textarea name="dlc_list" class="form_control" id="message" placeholder="Enter the text...">{{ $post->dlc_list }}</textarea></div>

    <div class="grid_item">
        <label for="trailer_1">Traile_1:</label>
        <input type="text" name="trailer_1" class="form_control" value="{{ $post->trailer_1 }}" id="gname" /></div>

    <div class="grid_item">
        <label for="trailer_2">Traile_2:</label>
        <input type="text" name="trailer_2" class="form_control" value="{{ $post->trailer_2 }}" id="gname" /></div>

    <div class="grid_item">
        <label for="key_words">KeyWords:</label>
        <textarea name="key_words" class="form_control" id="message" placeholder="Battlefield4 repack, gta5 скачать, Forza...">{{ $post->key_words }}</textarea></div>

    <div class="grid_item">
        <label for="cover">Cover:</label> <div class="img_addEdit"><img class="img_coverEdit" src="{{ $post->getImage() }}">
        <input type="file" name="cover" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_1">Screenshot_1:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen1() }}">
        <input type="file" name="screen_1" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_2">Screenshot_2:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen2() }}">
            <input type="file" name="screen_2" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_3">Screenshot_3:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen3() }}">
            <input type="file" name="screen_3" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_4">Screenshot_4:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen4() }}">
            <input type="file" name="screen_4" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_5">Screenshot_5:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen5() }}">
            <input type="file" name="screen_5" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="screen_6">Screenshot_6:</label><div class="img_addEdit"><img class="img_screenEdit" src="{{ $post->getScreen6() }}">
            <input type="file" name="screen_6" class="img_prof" id="gimg"/></div></div>

    <div class="grid_item">
        <label for="torr_link_1">Torrent Link_1:</label> {{ $post->torr_link_1 }}
        <div id="file_set">
            <input type="checkbox" name="delete1" title="Delete" class="delete_file">
            <input type="file" name="torr_link_1" class="img_prof" id="gimg"/>
        </div>
    </div>

    <div class="grid_item">
        <label for="torr_link_2">Torrent Link_2:</label> {{ $post->torr_link_2 }}
        <div id="file_set">
            <input type="checkbox" name="delete2" title="Delete" class="delete_file">
            <input type="file" name="torr_link_2" class="img_prof" id="gimg"/>
        </div>
    </div>

    <div class="grid_item">
        <label for="torr_name_1">Repack_1:</label>
        <input type="text" name="torr_name_1" class="form_control" value="{{ $post->torr_name_1 }}" id="gname" placeholder="Xatab"/></div>

    <div class="grid_item">
        <label for="torr_name_2">Repack_2:</label>
        <input type="text" name="torr_name_2" class="form_control" value="{{ $post->torr_name_2 }}" id="gname" placeholder="Igruha"/></div>

    <div class="grid_item">
        <label for="torr_size_1">Torrent size_1:</label>
        <input type="text" name="torr_size_1" value="{{ $post->torr_size_1 }}" class="form_control" id="gname" placeholder="18.21 GB"/></div>

    <div class="grid_item">
        <label for="torr_size_2">Torrent size_2:</label>
        <input type="text" name="torr_size_2" class="form_control" value="{{ $post->torr_size_2 }}" id="gname" placeholder="18.21 GB"/></div>



