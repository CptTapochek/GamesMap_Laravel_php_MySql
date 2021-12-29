<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $request->validate([
           'search' => 'required',
        ]);

        $search = $request->search;
        $posts = Post::sortable()->where('title', 'LIKE', "%{$search}%")->with('category')->paginate(24);
        return view('posts.search', compact('posts', 'search'));
    }

    public function index_post(Request $request)
    {
        $request->validate([
            'search' => 'required',
        ]);

        $search = $request->search;
        $posts = Post::with('category', 'tags')->sortable()->where('title', 'LIKE', "%{$search}%")->paginate(20);
        return view('aPages.posts.search', compact('posts', 'search'));
    }

    public function index_user(Request $request)
    {
        $request->validate([
            'search' => 'required',
        ]);

        $search = $request->search;
        $users = User::sortable()->where('name', 'LIKE', "%{$search}%")->paginate(20);
        return view('aPages.users.search', compact('users', 'search'));
    }
}
