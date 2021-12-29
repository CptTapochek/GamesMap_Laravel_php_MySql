<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Contact;
use App\Models\Post;
use App\Models\Report;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ReportController extends Controller
{
    public function getReport($name, Request $request)
    {
        $request->validate([
            'post_id'=>'nullable',
            'comment_id'=>'nullable'
        ]);
        if ($request['post_id']){
            $postID = $request['post_id'];
            $commentID = $request['comment_id'];
        }
        else{
            $postID = 0;
            $commentID = 0;
        }
        $user = User::where('name', $name)->first();
        return view('/report', compact('user', 'postID', 'commentID'));
    }

    public function postReport(Request $request)
    {
        $rules = [
            'user_name' => 'required',
            'message' => 'required|max:1000|',
            'post_id' => 'nullable',
            'comment_id' => 'nullable'
        ];
        $messages = [
            'message.required' => 'Введите текст вашей жалобы!',
            'message.max' => 'Слишком длинное сообщение!',

        ];
        $validator = Validator::make($request->all(), $rules, $messages)->validate();

        $sender = Auth::user()->name;
        Report::create([
            'user_sender' => $sender,
            'user_reported' => $request->user_name,
            'post_id' => $request->post_id,
            'comment_id' => $request->comment_id,
            'message' => $request->message
        ]);
        return redirect()->route('home');
    }

    public function ReportData()
    {
        $posts = Post::get();
        $comments = Comment::get();
        $report = new Report();
        return view('aPages/reports', ['data' => $report -> orderBy('id', 'desc')->paginate(6)], compact('posts', 'comments'));
    }

    public function ReportDelete($ID)
    {
        if($ID){
            $report = Report::find($ID);
            $report->delete();
        }
        else{abort(404);}

        return redirect()->back();
    }
}
