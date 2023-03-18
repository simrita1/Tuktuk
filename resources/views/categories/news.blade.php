@extends('layout.layout')

@section('title')
News
@endsection

@section('content')
<section class="home-content">
    <div class="cat-title">
        News
    </div>
    @include('layout.category')
</section>
@endsection