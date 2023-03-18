<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function providePost()
    {
        return Post::all();
    }

    public function provideCategory($id)
    {
        return Category::find($id);
    }

    public function music($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.music', compact('posts', 'cat'));
    }

    public function fashion($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.fashion', compact('posts', 'cat'));
    }

    public function beautyhub($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.beautyhub', compact('posts', 'cat'));
    }

    public function food($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.food', compact('posts', 'cat'));
    }

    public function travel($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.travel', compact('posts', 'cat'));
    }

    public function business($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.business', compact('posts', 'cat'));
    }

    public function news($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.news', compact('posts', 'cat'));
    }

    public function technology($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.technology', compact('posts', 'cat'));
    }

    public function sports($id)
    {
        $posts = $this->providePost();
        $cat = $this->provideCategory($id);
        return view('categories.sports', compact('posts', 'cat'));
    }
}
