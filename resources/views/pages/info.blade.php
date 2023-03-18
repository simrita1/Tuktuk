@extends('layout.layout')

@section('title')
page
@endsection

@section('content')
<div class="main">
    <section class="info-page">
        <div class="info-title">
            {{$showPost->post_title}}
        </div>
        <div class="info-posted-by">
            <i class="fas fa-user"></i> Posted by: {{$showPost->user->name}}
        </div>
        <div class="info-posted-on">
            <i class="fas fa-clock"></i> Posted On: {{$showPost->created_at}}
        </div>
        <div class="info-img">
            <img src="/storage/{{$showPost->post_image}}">
        </div>
        <div class="info-desc">
            {{$showPost->post_description}}
        </div>
        @if (Auth::check())
        @if ($showPost->user_id === Auth::user()->id)
        <div class="actions">
            <h3>Actions</h3>
            <div class="action-list">
                <a class="edit" href="{{route('post.edit', ['post_id' => $showPost->id])}}"><i class="far fa-edit"></i> Edit</a>
                <a class="delete" href="{{route('post.delete', ['post_id' => $showPost->id])}}"><i class="far fa-trash-alt"></i> Delete</a>
            </div>
        </div>
        @endif
        @endif

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