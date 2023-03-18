@extends('layout.layout')

@section('title')
    Register
@endsection

@section('content')
    <section class="login-register-page">
        <h1>Register</h1>
        <form action="{{route('register.store')}}" method="POST">
            @csrf
            <div>
                <label for="">Username</label>
                <input type="text" name="name" placeholder="Username" value="{{old('name')}}">
                @error('name')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
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
                <input type="submit" name="register" value="Register">
            </div>
        </form>
    </section>
@endsection