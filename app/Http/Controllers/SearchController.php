<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request){
        $search = $request->search;
        if($search == ""){
            return back();
        }
        else{
            $searchResult = Post::where('post_title', 'LIKE', "%{$search}%")->get();
            return view('pages.search', compact('searchResult'));
        }
    }
}
