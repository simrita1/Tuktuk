@extends('layout.layout')

@section('title')
    Music
@endsection

@section('content')
    <section class="home-content">
        <div class="cat-title">
            Music
        </div>
        @include('layout.category')
    </section>
@endsection