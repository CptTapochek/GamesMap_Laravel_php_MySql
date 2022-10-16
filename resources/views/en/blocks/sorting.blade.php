@section('sorting')

    <button onclick="Sorting()" class="dropSORTbtn">Sorting:</button>
        <div id="sorting-list" class="dropdown-sort">
            <th>@sortablelink('created_at', 'By Date')</th>
            <th>@sortablelink('views', 'By Views')</th>
            <th>@sortablelink('count_comment', 'By Comments')</th>
            <th>@sortablelink('rating', 'By Ratting')</th>
        </div>
    <!--
        <th href="@sortablelink('created_at')">Самые популярные</th>
        <a href="#">По рейтингу</a>
        <a href="">Недавно добавленные</a>
        <a href="#">Самые комментируемые</a>
    </div>-->
