<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */



    public function index()
    {
        $posts = Post::orderBy('created_at', 'desc')->get();
        $news = Post::inRandomOrder()->limit(7)->get();
        // $posts = Post::all();
        // $category = Category::with('posts')->get();
        return view('pages.home', compact('posts', 'news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('user.create',  compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'photo' => 'required',
            'category' => 'required'
        ]);

        $post = new Post();

        $id = uniqid();
        // dd($id);
        $path = $request->file('photo')->storeAs(
            '/user',
            $id . $request->file('photo')->getClientOriginalName(),
            'public'
        );

        $post->post_title = $request->title;
        $post->post_description = $request->description;
        $post->post_image = $path;
        $post->user_id = Auth::user()->id;
        $post->category_id = $request->category;

        $post->save();

        return redirect()->route('post.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $showPost = Post::find($id);
        $news = Post::inRandomOrder()->limit(7)->get();
        return view('pages.info', compact('showPost', 'news'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $editPost = Post::find($id);
        $categories = Category::all();
        return view('user.edit', compact('editPost', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $updatePost = Post::find($id);

        $imageId = uniqid();
        $path = $request->file('photo')->storeAs(
            '/user',
            $imageId . $request->file('photo')->getClientOriginalName(),
            'public'
        );

        // dd($updatePost);
        $updatePost->post_title = $request->title;
        $updatePost->post_description = $request->description;
        $updatePost->post_image = $path;
        $updatePost->user_id = Auth::user()->id;
        $updatePost->category_id = $request->category;

        $updatePost->save();

        return redirect()->route('post.show', ['post_id' => $id]);
        // return redirect()->route('post.show')->with('success', "updated successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $deletePost = Post::find($id);
        $deletePost->delete();

        return redirect()->route('post.index');
    }
}
