<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //'name' => 'required|min:3|max:30',
            //'email' => 'required|email',
           // 'password' => 'required|min:6|max:16|confirmed'
        ];
    }

    /*public function messages(){
        return [
            'name.required' => 'Введите ваше имя!',
            'name.min' => 'Имя должно содержать не менее 3 символов!',
            'name.max' => 'Имя должно содержать не более 30 символов!',
            'email.required' => 'Введите ваш email!',
            'email.email' => 'Неверно введен email!',
            'email.unique' => 'Этот email уже был использован!',
            'password.required' => 'Введите ваш пароль!',
            'password.min' => 'Пароль должен содержать не менее 6 символов!',
            'password.max' => 'Пароль должен содержать не более 16 символов!',
            'password.confirmed' => 'Пароли не совпадают!'
        ];
    }*/
}
