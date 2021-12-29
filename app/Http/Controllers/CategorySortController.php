<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Rating;


class CategorySortController extends Controller
{
    public function show($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(24);
        return view('categories.show', compact('category', 'posts'));
    }

    public function showCheat($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(10);
        $rating = Rating::get();
        $likes = $rating->where('like', 1);
        $dislikes = $rating->where('dislike', 1);
        return view('categories.cheatsCat', compact('category', 'posts', 'likes', 'dislikes'));
    }

    public function showNews($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(10);
        $rating = Rating::get();
        $likes = $rating->where('like', 1);
        $dislikes = $rating->where('dislike', 1);
        return view('categories.news', compact('category', 'posts', 'likes', 'dislikes'));
    }
}
