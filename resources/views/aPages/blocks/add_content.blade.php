@section('add_content')
<div class="grid_item">
        <label for="title">Title:</label>
    <input type="text" name="title" class="form_control" id="gname"/></div>

<div class="grid_item">
    <label for="category_id">Category:</label>
    <p><select name="category_id" class="form_control" id="category_id">
            <option>Select category...</option>
            @foreach($categories as $k => $v)
            <option value="{{ $k }}">{{ $v }}</option>
            @endforeach
        </select></p></div>

<div class="grid_item">
    <label for="tags">Tags:</label>
<select name="tags[]" class="addPosts" id="multiple-optgroups" multiple="">
        <optgroup label="All_tags">
            @foreach($tags as $k => $v)
                <option value="{{ $k }}">{{ $v }}</option>
            @endforeach
        </optgroup>
    </select></div>

<div class="grid_item">
    <label for="dlc_list">DLC List:</label>
    <textarea name="dlc_list" class="form_control" id="message" placeholder="Enter the text..." value="{{ old('dlc_list') }}"></textarea></div>

    <div class="grid_item">
        <label for="trailer_1">Traile_1:</label>
        <input type="text" name="trailer_1" class="form_control" id="gname" value="{{ old('trailer_1') }}"/></div>

    <div class="grid_item">
        <label for="trailer_2">Traile_2:</label>
        <input type="text" name="trailer_2" class="form_control" id="gname" value="{{ old('trailer_2') }}"/></div>

<div class="grid_item">
    <label for="key_words">KeyWords:</label>
    <textarea name="key_words" class="form_control" id="message" value="{{ old('key_words') }}" placeholder="Battlefield4 repack, gta5 скачать, Forza...">скачать бесплатно, repack, пиратка, скачать пиратка, download repack</textarea></div>

<div class="grid_item">
    <label for="cover">Cover:</label>
    <input type="file" name="cover" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_1">Screenshot_1:</label>
        <input type="file" name="screen_1" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_2">Screenshot_2:</label>
        <input type="file" name="screen_2" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_3">Screenshot_3:</label>
        <input type="file" name="screen_3" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_4">Screenshot_4:</label>
        <input type="file" name="screen_4" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_5">Screenshot_5:</label>
        <input type="file" name="screen_5" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="screen_6">Screenshot_6:</label>
        <input type="file" name="screen_6" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="torr_link_1">Torrent Link_1:</label>
        <input type="file" name="torr_link_1" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="torr_link_2">Torrent Link_2:</label>
        <input type="file" name="torr_link_2" class="img_prof" id="gimg"/></div>

    <div class="grid_item">
        <label for="torr_name_1">Repack_1:</label>
        <input type="text" name="torr_name_1" class="form_control" id="gname" placeholder="Xatab" value="{{ old('torr_name_1') }}"/></div>

    <div class="grid_item">
        <label for="torr_name_2">Repack_2:</label>
        <input type="text" name="torr_name_2" class="form_control" id="gname" placeholder="Igruha" value="{{ old('torr_name_2') }}"/></div>

    <div class="grid_item">
        <label for="torr_size_1">Torrent size_1:</label>
        <input type="text" name="torr_size_1" class="form_control" id="gname" placeholder="18.21 GB" value="{{ old('torr_size_1') }}"/></div>

    <div class="grid_item">
        <label for="torr_size_2">Torrent size_2:</label>
        <input type="text" name="torr_size_2" class="form_control" id="gname" placeholder="18.21 GB" value="{{ old('torr_size_2') }}"/></div>

