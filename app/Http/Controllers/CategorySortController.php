<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Rating;


class CategorySortController extends Controller
{
    public function show($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(24);

        $url = (explode('/',$_SERVER['REQUEST_URI']));

        if (count($url) == 4){
            $english = explode('?', $url[3]);

            if($english[0] == 'en'){
                return view('en.categories.show', compact('category', 'posts'));
            }
        } else{
            return view('categories.show', compact('category', 'posts'));
        }
    }

    public function showCheat($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(10);
        $rating = Rating::get();
        $likes = $rating->where('like', 1);
        $dislikes = $rating->where('dislike', 1);

        $url = (explode('/',$_SERVER['REQUEST_URI']));

        if (count($url) == 4){
            $english = explode('?', $url[3]);

            if($english[0] == 'en'){
                return view('en.categories.cheatsCat', compact('category', 'posts', 'likes', 'dislikes'));
            }
        } else{
            return view('categories.cheatsCat', compact('category', 'posts', 'likes', 'dislikes'));
        }
    }

    public function showNews($slug){
        $category = Category::where('slug', $slug)->firstOrFail();
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(10);
        $rating = Rating::get();
        $likes = $rating->where('like', 1);
        $dislikes = $rating->where('dislike', 1);

        $url = (explode('/',$_SERVER['REQUEST_URI']));

        if (count($url) == 4){
            $english = explode('?', $url[3]);

            if($english[0] == 'en'){
                return view('en.categories.news', compact('category', 'posts', 'likes', 'dislikes'));
            }
        } else{
            return view('categories.news', compact('category', 'posts', 'likes', 'dislikes'));
        }
    }
}
