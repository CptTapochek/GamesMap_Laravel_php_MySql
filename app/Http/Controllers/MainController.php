<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function index()
    {
        return view('aPages/Tag');
    }
}
