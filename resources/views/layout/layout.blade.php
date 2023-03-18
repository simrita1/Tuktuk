<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <title> @yield('title') </title>
</head>

<body>

    <header>
        <div class="wrapper">
            <nav class="nav-1">
                <div class="logo">
                    <h1>TUKTUK</h1>
                </div>
                <ul class="company-info-menu">
                    <li><a href="{{route('post.index')}}">Home</a></li>
                    <li><a href="{{route('aboutus')}}">About us</a></li>
                    <li><a href="{{route('contact')}}">Contact</a></li>
                </ul>

                @if (Auth::check())
                <div class="user-info-menu">
                    <div class="user">
                        <i class="far fa-user"></i> {{Auth::user()->name}}
                        <div class="user-options">
                            <a href="{{route('user.myposts')}}"><i class="fas fa-pen"></i> My posts</a>
                            <a href="{{route('post.create')}}"><i class="fas fa-plus"></i> Create post</a>
                            <a class="logout-btn" href="{{route('logout')}}"><i class="fas fa-sign-out-alt"></i> Logout</a>
                        </div>
                    </div>
                </div>
                @else
                <ul class="user-info-menu">
                    <li><a class="login" href="{{route('login')}}"><i class="fas fa-sign-in-alt"></i> Login</a></li>
                    <li><a class="signup" href="{{route('register')}}"><i class="fas fa-user-plus"></i> Signup</a></li>
                </ul>
                @endif
            </nav>
            <nav class="nav-2">
                <ul class="nav-categories">
                    <li><a href="{{route('categories.music', ['cat_id' => '1'])}}">Music</a></li>
                    <li><a href="{{route('categories.fashion', ['cat_id' => '2'])}}">Fashion</a></li>
                    <li><a href="{{route('categories.beautyhub', ['cat_id' => '3'])}}">Beauty Hub</a></li>
                    <li><a href="{{route('categories.food', ['cat_id' => '4'])}}">Food</a></li>
                    <li><a href="{{route('categories.travel', ['cat_id' => '5'])}}">Travel</a></li>
                    <li><a href="{{route('categories.business', ['cat_id' => '6'])}}">Business</a></li>
                    <li><a href="{{route('categories.news', ['cat_id' => '7'])}}">News</a></li>
                    <li><a href="{{route('categories.technology', ['cat_id' => '8'])}}">Technology</a></li>
                    <li><a href="{{route('categories.sports', ['cat_id' => '9'])}}">Sports</a></li>
                </ul>
                <div class="search-bar">
                    <form action="{{route('search')}}">
                        <input class="search" name="search" type="text" placeholder="Search">
                        <button class="search-btn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </nav>
        </div>
    </header>

    <section class="content-container">
        <div class="wrapper">
            @yield('content')
        </div>
    </section>

    <section class="footer">
        <div class="wrapper footer-wrapper">
            <div class="footer-website-info">
                <p>Blogpost is the place where people come to express their thoughts</p>
            </div>
            <div class="footer-menu">
                <h1>Menu</h1>
                <ul class="footer-nav">
                    <li><a href="{{route('categories.music', ['cat_id' => '1'])}}">Music</a></li>
                    <li><a href="{{route('categories.fashion', ['cat_id' => '2'])}}">Fashion</a></li>
                    <li><a href="{{route('categories.beautyhub', ['cat_id' => '3'])}}">Beauty Hub</a></li>
                    <li><a href="{{route('categories.food', ['cat_id' => '4'])}}">Food</a></li>
                    <li><a href="{{route('categories.travel', ['cat_id' => '5'])}}">Travel</a></li>
                    <li><a href="{{route('categories.business', ['cat_id' => '6'])}}">Business</a></li>
                    <li><a href="{{route('categories.news', ['cat_id' => '7'])}}">News</a></li>
                    <li><a href="{{route('categories.technology', ['cat_id' => '8'])}}">Technology</a></li>
                    <li><a href="{{route('categories.sports', ['cat_id' => '9'])}}">Sports</a></li>
                </ul>
            </div>
        </div>
    </section>
</body>

</html>