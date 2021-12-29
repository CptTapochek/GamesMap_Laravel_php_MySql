@section('sorting')

    <button onclick="Sorting()" class="dropSORTbtn">Сортировка:</button>
        <div id="sorting-list" class="dropdown-sort">
            <th>@sortablelink('created_at', 'По дате')</th>
            <th>@sortablelink('views', 'По просмотрам')</th>
            <th>@sortablelink('count_comment', 'По комментариям')</th>
            <th>@sortablelink('rating', 'По рейтингу')</th>
        </div>
    <!--
        <th href="@sortablelink('created_at')">Самые популярные</th>
        <a href="#">По рейтингу</a>
        <a href="">Недавно добавленные</a>
        <a href="#">Самые комментируемые</a>
    </div>-->
