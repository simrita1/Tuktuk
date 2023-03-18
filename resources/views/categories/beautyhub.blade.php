@extends('layout.layout')

@section('title')
Beauty Hub
@endsection

@section('content')
<section class="home-content">
    <div class="cat-title">
        Beauty Hub
    </div>
    @include('layout.category')
</section>
@endsection