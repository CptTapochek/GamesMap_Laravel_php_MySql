<?php

namespace App\Http\Controllers;


use App\Models\Rating;
use App\Models\Tag;

class TagSortController extends Controller
{
    public function show($slug){
        $tag = Tag::where('slug', $slug)->firstOrFail();
        $posts = $tag->posts()->sortable()->with('category')->orderBy('created_at', 'desc')->paginate(24);
        return view('tags.show', compact('tag', 'posts'));
    }

    public function showCheat($slug){
        $tag = Tag::where('slug', $slug)->firstOrFail();
        $posts = $tag->posts()->sortable()->orderBy('created_at', 'desc')->paginate(10);
        $rating = Rating::get();
        $likes = $rating->where('like', 1);
        $dislikes = $rating->where('dislike', 1);
        return view('tags.cheatsTag', compact('tag', 'posts', 'likes', 'dislikes'));
    }
}
