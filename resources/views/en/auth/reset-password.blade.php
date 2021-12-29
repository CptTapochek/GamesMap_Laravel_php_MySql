<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Вход &raquo; @include('blocks.title')</title>
    @include('aPages.blocks.links_low')
</head>

<body>
<div class="wrapper_tot">
    <div class="content">
        @include('aPages.blocks.header_low')
        <div class="main_content">
            <div class="LoginMenu">@include('blocks.menu')</div>
            <div class="Reset_pass">
                <x-guest-layout>
                    <x-auth-card>
                        <x-slot name="logo">
                            <a href="/home">
                                <!--<x-application-logo class="w-20 h-20 fill-current text-gray-500" />-->
                            </a>
                        </x-slot>

                        <form method="POST" action="{{ route('password.update') }}" class="resetForm">
                            <div class="contactNEW Reset"><div class="allForm_title"></div>
                                <p>&#10142;Восстановление пароля</p>
                            </div>
                            <div class="contact">
                            @csrf

                            <!-- Password Reset Token -->
                                <input type="hidden" name="token" value="{{ $request->route('token') }}">

                                <!-- Email Address -->
                                <div>
                                    <x-label for="email" :value="__('Email')" /><br/>

                                    <x-input id="email" class="form_control" type="email" name="email" :value="old('email', $request->email)" required autofocus />
                                </div><br/>

                                <!-- Password -->
                                <div class="mt-4">
                                    <x-label for="password" :value="__('Password')" /><br/>

                                    <x-input id="password" class="form_control" type="password" name="password" required />
                                </div><br/>

                                <!-- Confirm Password -->
                                <div class="mt-4">
                                    <x-label for="password_confirmation" :value="__('Confirm Password')"/><br/>

                                    <x-input id="password_confirmation" class="form_control"
                                             type="password"
                                             name="password_confirmation" required />
                                </div><br/>

                                <div class="ResetBTN">
                                    <x-button>
                                        {{ __('Reset Password') }}
                                    </x-button>
                                </div>
                            </div>
                        </form><br>
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
@include('aPages.blocks.footer_low')
</body>

</html>

