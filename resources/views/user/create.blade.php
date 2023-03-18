@extends('layout.layout')

@section('title')
    Create New Post
@endsection

@section('content')
    <section class="login-register-page">
        <h1>Create a post</h1>
        <form action="{{route('post.store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div>
                <label for="">Title</label>
                <input type="text" name="title" placeholder="Title" value="{{old('title')}}">
                @error('title')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label for="">Description</label>
                <textarea name="description" id="" cols="30" rows="10">{{old('description')}}</textarea>
                @error('description')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <label for="">Category</label>
                <select name="category" id="">
                    @foreach ($categories as $category)
                        <option value="{{$category->id}}">{{$category->category_name}}</option>
                    @endforeach
                </select>
            </div>
            <div>
                <label for="">Insert Image</label>
                <input type="file" name="photo" value="{{old('file')}}">
                @error('file')
                    <p class="error">{{$message}}</p>
                @enderror
            </div>
            <div>
                <input type="submit" name="submit" value="Submit">
            </div>
        </form>
    </section>
    
@endsection