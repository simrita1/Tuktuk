@extends('layout.layout')

@section('title')
Home | Blogs
@endsection

@section('content')
<div class="main">
    <section class="home-content home">
        @if (Auth::check())
        <div class="create-post">
            <a href="{{route('post.create')}}">Create New post <i class="fas fa-plus"></i></a>
        </div>
        @endif
        <div class="home-cards">
            @foreach ($posts as $post)
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
            @endforeach
        </div>
    </section>
    <section class="side-news">
        <h1 class="news">News</h1>
        <div class="news-cards">
            @foreach ($news as $n)
            <a href="{{route('post.show', ['post_id' => $n->id])}}">
                <div class="news-img">
                    <img src="/storage/{{$n->post_image}}" alt="">
                </div>
                <div class="news-title">
                    {{$n->post_title}}
                </div>
            </a>
            @endforeach
        </div>
    </section>
</div>
@endsection