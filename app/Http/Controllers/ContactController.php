<?php

namespace App\Http\Controllers;

use App\Mail\UsersMail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Http\Requests\ContactRequest;
use App\Models\Contact;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller {


    public function CreateMessage()
    {
        return view('/contact');
    }

    public function submit(ContactRequest $request){

        if($request->method() == 'POST') {
            $body = "<p><b>Name: </b>{$request->input('name')}</p>";
            $body .= "<p><b>Email: </b>{$request->input('email')}</p>";
            $body .= "<p><b>Subject: </b>{$request->input('subject')}</p>";
            $body .= "<p><b>Message: </b></br>" .nl2br($request->input('message')) . "</p>";

            $contact = new Contact();
            $contact->name = $request->input('name');
            $contact->email = $request->input('email');
            $contact->subject = $request->input('subject');
            $contact->message = $request->input('message');
            $contact->save();

            Mail::to('drew.torrentmap@gmail.com')->send(new UsersMail($body));
            return redirect()->route('contact')->with('success', 'Ваше сообщение успешно отправлено');
        }
    }

    public function allData(){
        $contact = new Contact;
        return view('aPages/messages', ['data' => $contact -> orderBy('id', 'desc')->paginate(6)]);
    }

    public function Delete($msgID)
    {
        if($msgID){
            $message = Contact::find($msgID);
            $message->delete();
        }
        else{abort(404);}

        return redirect()->back();
    }

}
