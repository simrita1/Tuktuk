<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AccountController extends Controller
{
    public function myposts(){
        // $users = User::all();
        $posts = Post::orderBy('created_at', 'desc')->get();
        return view('user.myposts', compact('posts'));
    }
}
