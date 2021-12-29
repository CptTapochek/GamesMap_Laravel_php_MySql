<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
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
            'name' => 'required|max:30',
            'email' => 'required|email',
            'subject' => 'required|min:5|max:50',
            'message' => 'required|min:10|max:1000',
            'captcha' => 'required|captcha',
        ];
    }
    public function messages(){
        return [
            'name.required' => 'Введите ваше имя!',
            'name.max' => 'Ваше имя должно содержать не более 30 символов!',
            'email.required' => 'Введите ваш email!',
            'email.email' => 'Неверно введен email!',
            'subject.required' => 'Введите тему сообщение!',
            'subject.min' => 'Тема сообщения должна содержать не менее 5 символов!',
            'subject.max' => 'Тема сообщения должна содержать не более 50 символов!',
            'message.required' => 'Введите ваше сообщение!',
            'message.min' => 'Ваше сообщение должно содержать не менее 10 символов!',
            'message.max' => 'Ваше сообщение должно содержать не более 1000 символов!',
            'captcha.required' => 'Введите код с картинки!',
            'captcha.captcha' => 'Код введен неправильно!',
        ];
    }
}
