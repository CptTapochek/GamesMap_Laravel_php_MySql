<?php

namespace App\Http\Controllers;

use App\Models\Likes;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'body'=>'required|max:500',
        ]);

        $input = $request->all();
        $input['user_id'] = auth()->user()->id;

        Comment::create($input);

        return redirect()->back();
    }

    public function deleteComment(Request $request)
    {
        $request->validate([
           'comment_id' => 'required',
        ]);
        $comm_id = $request['comment_id'];
        Comment::destroy($comm_id);
        return redirect()->back();
    }

    public function likeComment(Request $request)
    {
        $request->validate([
            'comment_id' => 'required',
            'post_id' => 'required'
        ]);
        $user_id = Auth::user()->id;
        Likes::create([
            'comment_id' => $request->comment_id,
            'post_id' => $request->post_id,
            'user_id' => $user_id
        ]);
        $CommLikes = Likes::where('comment_id', $request->comment_id)->get();
        return $CommLikes->count();
    }

    /*public function deletelikeComment(Request $request)
    {
        $request->validate([
            'like_id' => 'required',
        ]);
        $like_id = $request['like_id'];
        Likes::destroy($like_id);
        return redirect()->back();
    }*/

    /*public function getComments()
    {
        $comments = DB::table('comments')->paginate(5);
        return view('posts.single', compact('comments'));
    }*/

}
