<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Report;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    public function getProfile($name)
    {
        $user = User::where('name', $name)->first();
        $users = $user->friends();
        $requests = Auth::user()->friendRequests();
        $friends = Auth::user()->friends();
        $MyUser = Auth::user();
        $OtherUser = User::where('name', $name)->first();
        $All_Friends = $user->friendsAll()->count();
        //$user = Auth::user()->where('name', $name)->firstOrFail();
        if(!$user){
            abort(404);
        }
        /* Contact/Reports notify */
        if ($MyUser->is_admin || $MyUser->is_moderator){
            $messages = Contact::get();
            $total_notify = 0;
            foreach ($messages as $msg){
                if ($msg->seen == 0){
                    $total_notify++;
                }
            }
            $reports = Report::get();
            $reports_notify = 0;
            foreach ($reports as $rep)
            {
                if($rep->seen == 0){
                    $reports_notify++;
                }
            }
        }
        if (Auth::user()->is_baned == 1){$x = new UserController(); $x->logout(); return redirect()->route('login');}
        if ($MyUser->is_admin || $MyUser->is_moderator){
            return view('profile.index', compact('user', 'requests', 'friends', 'users', 'MyUser',
                'OtherUser', 'All_Friends', 'total_notify', 'reports_notify'));
        }
        else{
            return view('profile.index', compact('user', 'requests', 'friends', 'users', 'MyUser',
                'OtherUser', 'All_Friends'));
        }

    }

    public function getAllFriends($name)
    {
        $user = User::where('name', $name)->first();
        $users = $user->friendsAll();
        $requests = Auth::user()->friendRequests();
        $friends = Auth::user()->friendsAll();
        if(!$user){
            abort(404);
        }
        $MyUser = Auth::user();
        if ($MyUser->is_admin || $MyUser->is_moderator){
            $messages = Contact::get();
            $total_notify = 0;
            foreach ($messages as $msg){
                if ($msg->seen == 0){
                    $total_notify++;
                }
            }
            $reports = Report::get();
            $reports_notify = 0;
            foreach ($reports as $rep)
            {
                if($rep->seen == 0){
                    $reports_notify++;
                }
            }
        }
        if ($MyUser->is_admin || $MyUser->is_moderator){
            return view('profile.AllFriends', compact('user', 'requests', 'friends', 'users', 'total_notify', 'reports_notify'));
        }
        else{
            return view('profile.AllFriends', compact('user', 'requests', 'friends', 'users'));
        }
    }

    public function getAdd($name)
    {
        $user = User::where('name', $name)->first();
        if(!$user){
            abort(404);
        }
        /*if( Auth::user()->hasfriendsRequestPending($user) || $user->hasfriendsRequestPending(Auth::user()) ){
            session()->flash('success', 'Запрос отправлен!');
            return redirect()->route('profile.index', ['name' => $user -> name]);
        }*/
        Auth::user()->addFriend($user);
        session()->flash('success', 'Запрос отправлен!');
        return redirect()->route('profile.index', ['name' => $name]);
    }

    public function getAccept($name)
    {
        $user = User::where('name', $name)->first();
        if(!$user){
            abort(404);
        }
        if(!Auth::user()->hasfriendsRequestReceived($user)){
            return redirect()->route('profile.index', ['name' => $name]);
        }
        Auth::user()->acceptFriendRequest($user);
        session()->flash('success', 'Запрос принят!');
        return redirect()->route('profile.index', ['name' => $name]);
    }

    public function postDeleteFriend($name)
    {
        $user = User::where('name', $name)->first();
        if(!$user){
            abort(404);
        }
        if(!Auth::user()->isFriendWith($user)){
            return redirect()->back();
        }
        Auth::user()->deleteFriend($user);
        session()->flash('success', 'Пользователь был удалён из друзей');
        return redirect()->back();

    }
    public function postDeleteFriendTwo($name)
    {
        $user = User::where('name', $name)->first();
        $MyUser = Auth::user();
        if(!$MyUser){
            abort(404);
        }
        if(!$user->isFriendWith($MyUser)){
            return redirect()->back();
        }
        $user->deleteFriend($MyUser);
        session()->flash('success', 'Пользователь был удалён из друзей');
        return redirect()->back();

    }

    public function postDeleteRequest($name)
    {
        $user = User::where('name', $name)->first();
        if(!$user){
            abort(404);
        }
        Auth::user()->deleteFriend($user);
        return redirect()->back();
    }

    public function commentsUsers($name)
    {
        $user = User::where('name', $name)->first();
        $users = $user->friends();
        return view('commentsDisplay', compact( 'user', 'users'));
    }


}
