@extends('layout.layout')

@section('title')
    My posts
@endsection

@section('content')
    <section class="home-content">
        <div class="cat-title">
            My Posts
        </div>
        <div class="home-cards">
            @foreach ($posts as $post)
                @if ($post->user_id == Auth::user()->id)
                <a href="{{route('post.show', ['post_id' => $post->id])}}">
                    <div class="card-img">
                        <img src="/storage/{{$post->post_image}}">
                    </div>
                    <div class="card-content">
                        <div class="category">
                            <button class="category-tag"><i class="fas fa-tags"></i> {{$post->category->category_name}}</button>
                        </div>
                        <div class="title">
                            <p>{{$post->post_title}}</p>
                        </div>
                        <div class="description">
                            {{$post->post_description}}
                        </div>
                        <div class="readmore">
                            <button class="readmore-btn">Read More &nbsp; <i class="far fa-arrow-alt-circle-right"></i></button>
                        </div>
                    </div>
                </a>
                @endif
            @endforeach
        </div>
    </section>
@endsection