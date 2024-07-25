<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function Index() {
        $cats = Category::all();
        return view('category.Index',compact('cats')); 
    }
}
