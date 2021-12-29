<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Rating;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class RatingController extends Controller
{
    public function likePost(Request $request)
    {
        $request->validate([
            'like' => 'required',
            'post_id' => 'required'
        ]);
        $user_id = Auth::user()->id;
        Rating::create([
            'post_id' => $request->post_id,
            'like' => $request->like,
            'user_id' => $user_id
        ]);
        $PostLikes = Rating::where('post_id', $request->post_id)->get();
        return $PostLikes->where('like', 1)->count();
    }

    public function dislikePost(Request $request)
    {
        $request->validate([
            'dislike' => 'required',
            'post_id' => 'required'
        ]);
        $user_id = Auth::user()->id;
        Rating::create([
            'post_id' => $request->post_id,
            'dislike' => $request->dislike,
            'user_id' => $user_id
        ]);
        $PostDisikes = Rating::where('post_id', $request->post_id)->get();
        return $PostDisikes->where('dislike', 1)->count();
    }

    public function downloadPost(Request $request)
    {
        $request->validate([
            'post_id' => 'required'
        ]);
        $post = Post::where('id', $request->post_id)->firstOrFail();
        $post->downloads += 1;
        $post->update();
    }

    public function AllUsers()
    {
        $users = User::sortable()->orderBy('id', 'desc')->Paginate(20);
        return view('aPages/users/Users', compact('users'));
    }

    public function EditUsers($name)
    {
        $user = User::where('name', $name)->first();
        return view('aPages/users/edit', compact('user'));
    }

    public function RestateUser($name, Request $request)
    {
        $user = DB::table('users')->where('name', $name);
        $request->validate([
            'state'=>'required|string'
        ]);
        if($request->state == 'user'){
            $user->update(['is_user' => 1, 'is_moderator' => 0, 'is_admin' => 0]);
        }
        elseif ($request->state == 'moderator'){
            $user->update(['is_user' => 0, 'is_moderator' => 1, 'is_admin' => 0]);
        }
        elseif ($request->state == 'admin'){
            $user->update(['is_user' => 0, 'is_moderator' => 0, 'is_admin' => 1]);
        }
        return redirect()->route('users-data')->with('success', 'User has been restate!');
    }

    public function BannedUsers($name)
    {
        $user = DB::table('users')->where('name', $name);
        $user->update(['is_baned' => 1, 'is_user' => 0, 'is_moderator' => 0, 'is_admin' => 0]);
        return redirect()->back()->with('success', 'User has been banned!');
    }

    public function UnbannedUsers($name)
    {
        $user = DB::table('users')->where('name', $name);
        $user->update(['is_baned' => 0, 'is_user' => 1, 'is_moderator' => 0, 'is_admin' => 0]);
        return redirect()->back()->with('success', 'User has been unbanned!');
    }

}
