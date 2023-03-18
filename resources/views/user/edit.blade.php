@extends('layout.layout')

@section('title')
Edit Post
@endsection

@section('content')
<section class="login-register-page">
    <h1>Edit info</h1>
    <form action="{{route('post.update', ['post_id' => $editPost->id])}}" method="POST" enctype="multipart/form-data">
        @csrf

        <div>
            <label for="">Title</label>
            <input type="text" name="title" placeholder="Title" value="{{$editPost->post_title}}">
            @error('title')
            <p class="error">{{$message}}</p>
            @enderror
        </div>
        <div>
            <label for="">Description</label>
            <textarea name="description" id="" cols="30" rows="10">{{$editPost->post_description}}</textarea>
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
            <input type="file" name="photo" value="user/abc.png">
            @error('file')
            <p class="error">{{$message}}</p>
            @enderror
        </div>
        <div class="edit-options">
            <input type="submit" name="update" value="Update">
            <a href="{{route('post.show', ['post_id' => $editPost->id])}}">Cancel</a>
        </div>
    </form>
</section>
@endsection