<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Восстановление пароля &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('blocks.header')
        <div class="main_content" >
            <div class="LoginMenu">@include('blocks.menu')</div>
            <div class="Reset_pass">
                <x-guest-layout>
                    <x-auth-card>
                        <x-slot name="logo">
                            <a href="/home">
                                <!--<x-application-logo class="w-20 h-20 fill-current text-gray-500" />-->
                            </a>
                        </x-slot>

                        <form method="POST" action="{{ route('password.email') }}" class="resetForm">
                            <div class="contactNEW Reset"><p>➜Восстановление пароля</p></div>
                            <div class="contact">
                            @csrf

                            <!-- Email Address -->
                                <div>
                                    <x-label for="email" :value="__('Email')" /><br/>

                                    <x-input id="email" class="form_control" type="email" name="email" :value="old('email')" required autofocus />
                                </div><br/>

                                <div class="ResetBTN">
                                    <x-button>
                                        {{ __('Ссылка для сброса пароля') }}
                                    </x-button>
                                </div>
                            </div>
                        </form><br/>
                        <div class="resetText">
                            {{ __('‧ Введите email для восстановление пароля.') }}<br/>
                            {{ __('‧ Если письмо с ссылкой не пришло проверьте спам.') }}
                        </div><br/>
                        <!-- Session Status -->
                        <x-auth-session-status class="Reset_success" :status="session('status')" />

                        <!-- Validation Errors -->
                        <x-auth-validation-errors class="Reset_error" :errors="$errors" />
                    </x-auth-card>
                </x-guest-layout>
            </div>
        </div>
    </div>
</div>
@include('blocks.footer')
</body>

</html>
