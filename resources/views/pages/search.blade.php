@extends('layout.layout')

@section('title')
    Search Results
@endsection

@section('content')
    <section class="home-content">
        <div class="cat-title">
            Search Result
        </div>
        <div class="home-cards">
                @foreach ($searchResult as $res)
                    <a href="{{route('post.show', ['post_id' => $res->id])}}">
                        <div class="card-img">
                            <img src="/storage/{{$res->post_image}}">
                        </div>
                        <div class="card-content">
                            <div class="category">
                                <i class="fas fa-tags"></i> {{$res->category->category_name}}
                            </div>
                            <div class="title">
                                <p>{{$res->post_title}}</p>
                            </div>
                            <div class="description">
                                {{$res->post_description}}
                            </div>
                            <div class="readmore">
                                <button class="readmore-btn">Read More &nbsp; <i class="far fa-arrow-alt-circle-right"></i></button>
                            </div>
                        </div>
                    </a>
                    @endforeach
            </div>
    </section>
@endsection