@extends('layout.layout')

@section('title')
    Login
@endsection

@section('content')
    <section class="login-register-page">
        <h1>Login</h1>
        <form action="{{route('login.store')}}" method="POST">
            @csrf
            <div>
                <label for="">Email</label>
                <input type="email" name="email" placeholder="email" value="{{old('email')}}">
                @error('email')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label for="">Password</label>
                <input type="password" name="password" placeholder="Password">
                @error('password')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div class="submit">
                <input type="submit" name="login" value="Login">
            </div>
        </form>
    </section>
@endsection