@extends('layout.layout')

@section('title')
Food
@endsection

@section('content')
<section class="home-content">
    <div class="cat-title">
        Food
    </div>
    @include('layout.category')
</section>
@endsection