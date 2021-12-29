<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use Symfony\Component\Console\Input\Input;

class UserController extends Controller
{

    /* Inregistrarea Utilizatorului */
    public function create()
    {
        return view('Registration');
    }

    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|min:4|max:30|unique:users',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8|max:16|confirmed',
            'avatar' => 'nullable|image|max:500|mimes:jpg,png',
            'captcha' => 'required|captcha',
        ];
        $messages = [
            'name.required' => 'Введите логин!',
            'name.min' => 'Логин должен содержать не менее 3 символов!',
            'name.max' => 'Логин должен содержать не более 30 символов!',
            'name.unique' => 'Такой логин уже существует!',
            'email.required' => 'Введите ваш email!',
            'email.email' => 'Неверно введен email!',
            'email.unique' => 'Этот email уже был использован!',
            'password.required' => 'Введите пароль!',
            'password.min' => 'Пароль должен содержать не менее 8 символов!',
            'password.max' => 'Пароль должен содержать не более 16 символов!',
            'password.confirmed' => 'Пароли не совпадают!',
            'avatar.image' => 'Файл не является изображением!',
            'avatar.max' => 'Максимальный размер изображения не должен превышать 500 кб',
            'captcha.required' => 'Введите код с картинки!',
            'captcha.captcha' => 'Код введен неправильно!',
        ];
        $validator = Validator::make($request->all(), $rules, $messages)->validate();

        if($request->hasFile('avatar')) {
            $folder = date('Y-m');
            $NormalSize = $request->file('avatar')->store("images/{$folder}", 'public');
            $imgN = Image::make(public_path("/storage/{$NormalSize}"));
            $imgN->resize(200, 200)->save();
            $LowSize = $request->file('avatar')->store("ResizeUsers/images/{$folder}", 'public');
            $imgL = Image::make(public_path("/storage/{$LowSize}"));
            $imgL->resize(100, 100)->save();

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'avatar' => $NormalSize,
            ]);
        }
        else{
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'avatar' => $avatar ?? null,
            ]);
        }

        session()->flash('success', 'Регистрация прошла успешно!');
        Auth::login($user); //Dupa inregistrare utilizatorul se autentifica automat

        return redirect()->route('profile.index', ['name' => $user -> name]);
    }
        /* Logarea Utilizatorului */
    public function loginForm()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $rules = [
            'name' => 'required',
            'password' => 'required',
            'remember' => 'nullable'
        ];
        $messages = [
            'name.required' => 'Введите логин!',
            'password.required' => 'Введите пароль!'
        ];
        $validator = Validator::make($request->all(), $rules, $messages)->validate();
        $remember = $request['remember'] ? true : false;

        if (Auth::attempt(['name' => $request->name, 'password' => $request->password], $remember)) {
            $user = Auth::user();

            if($user->is_baned){
                Auth::logout();
                return redirect()->route('login')->with('error', 'Ваш аккаунт был заблокирован!');
            }
            session()->flash('success', 'Авторизация прошла успешно!');
            //return view('cabinet', compact('user'));
            return redirect()->route('profile.index', ['name' => $user -> name]);
        }
        return redirect()->route('login')->with('error', 'Неправильный логин или пароль!');

    }

    /* For update users dates */
    public function getEdit()
    {
        return view('user/Edit/EditProfile');
    }
    public function postEdit(Request $request)
    {
        $rules = [
            'name' => 'nullable|min:4|max:30',
            'email' => 'nullable|email',
            'avatar' => 'nullable|image|max:500|mimes:jpg,png',
            'delete_ava' => 'nullable',
        ];
        $messages = [
            'name.min' => 'Логин должен содержать не менее 3 символов!',
            'name.max' => 'Логин должен содержать не более 30 символов!',
            'email.email' => 'Неверно введен email!',
            'avatar.image' => 'Файл не является изображением!',
            'avatar.max' => 'Максимальный размер изображения не должен превышать 500 кб',
        ];

        $validator = Validator::make($request->all(), $rules, $messages)->validate();

        $UserAvatar = Auth::user()->avatar;
        if($request->hasFile('avatar')) {
            Storage::delete($UserAvatar); Storage::delete("/ResizeUsers/{$UserAvatar}");
            $folder = date('Y-m');
            $NormalSize = $request->file('avatar')->store("images/{$folder}", 'public');
            $imgN = Image::make(public_path("/storage/{$NormalSize}"));
            $imgN->resize(200, 200)->save();
            $LowSize = $request->file('avatar')->store("ResizeUsers/images/{$folder}", 'public');
            $imgL = Image::make(public_path("/storage/{$LowSize}"));
            $imgL->resize(100, 100)->save();
        }

        Auth::user()->update([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
        ]);
        if($request->hasFile('avatar')){
            Auth::user()->update([
                'avatar' => $NormalSize,
            ]);
        }
        if($request->has('delete_ava')){
            Storage::delete('storage/', auth()->user()->avatar);
            Auth::user()->update([
                'avatar' => null,
            ]);
        }
        $user = Auth::user();
        session()->flash('success', 'Изменения прошли успешно!');
        return redirect()->route('profile.index', ['name' => $user -> name]);
    }

    /* LogOut-ul utilizatoruli */
    public function logout()
    {
        Auth::logout();
        return redirect()->route('home');
    }

}
