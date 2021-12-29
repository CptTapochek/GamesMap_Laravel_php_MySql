<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Report;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Nahid\Talk\Conversations\Conversation;
use Nahid\Talk\Facades\Talk;
use Nahid\Talk\Messages\Message;


class TalkController extends Controller
{


    public function getMessage($name)
    {
        $user = User::where('name', $name)->first();
        $inboxes = Talk::getInbox();
        $MyUser = Auth::user()->id;
        if (!$user) {
            abort(404);
        } elseif (!auth()->user()) {
            abort(404);
        }
        $UserId = $user->id;
        $Count_unseen = 0;
        $conversations = Talk::getConversationsByUserId($UserId);
        if($conversations){
            $m = Conversation::where('user_one', $UserId)->where('user_two', $MyUser)->get();
            foreach ($m as $i){$marco = $i->id;}
            $n = Conversation::where('user_one', $MyUser)->where('user_two', $UserId)->get();
            foreach ($n as $j){$polo = $j->id;}
            if(isset($marco)){
                $conversationID = $marco;
            }
            elseif(isset($polo)){
                $conversationID = $polo;
            }
            $messages = Message::where('conversation_id', $conversationID)->get();
            //$messages = $conversations->messages;
            //$withUser = $conversations->withUser;
        }
        $AuthUser = Auth::user();
        $total_notify = 0; $reports_notify = 0;
        if ($AuthUser->is_admin || $AuthUser->is_moderator){
            $notify = Contact::get();
            $total_notify = 0;
            foreach ($notify as $msg){
                if ($msg->seen == 0){
                    $total_notify++;
                }
                else $total_notify = 0;
            }
            $reports = Report::get();
            $reports_notify = 0;
            foreach ($reports as $rep){
                if($rep->seen == 0){
                    $reports_notify++;
                }
                else $reports_notify = 0;
            }
        }

        if($conversations){
            return view('profile.messages', compact('inboxes', 'user',
                'Count_unseen', 'messages', 'conversations', 'total_notify', 'reports_notify'));
        }
        else{
            return view('profile.messages', compact('inboxes', 'user',
                'Count_unseen', 'conversations', 'total_notify', 'reports_notify'));
        }
    }

    public function sendMessage($name, Request $request)
    {
        $user = User::where('name', $name)->first();
        $userId = $user->id;
        $request->validate([
            'message'=>'required',
        ]);
        $message = $request['message'];
        DB::table('users')->where('id', $userId)->update(['Notify' => 1]);
        Talk::sendMessageByUserId($userId, $message);
        return $message;
    }

    public function deleteMessage($name, Request $request)
    {
        $user = User::where('name', $name)->first();
        if (!$user) {
            abort(404);
        } elseif (!auth()->user()) {
            abort(404);
        }
        $request->validate([
            'msg_id'=>'required',
        ]);
        $messageId = $request['msg_id'];
        Talk::deleteForever($messageId);
        return back();
    }
}
