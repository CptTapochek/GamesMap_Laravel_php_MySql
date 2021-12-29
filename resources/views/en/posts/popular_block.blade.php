@section('popular_block')
<div class="popular_block">
    <h3 class="popularBlock_title"><img src="assets/popularStar.png" />Популярные игры</h3>
    <div class="popular_container">
        @foreach($popular_posts as $post)
            <a class="pop_post" href="{{ route('posts.single', ['slug' => $post->slug]) }}" title="{{ $post->title }}">
                <img src="{{ $post->getImage() }}">
            </a>
        @endforeach
    </div>
</div>
