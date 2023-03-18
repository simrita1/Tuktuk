@extends('layout.layout')

@section('title')
    Fashion
@endsection

@section('content')
    <section class="home-content">
        <div class="cat-title">
            Fashion
        </div>
        @include('layout.category')
    </section>
@endsection