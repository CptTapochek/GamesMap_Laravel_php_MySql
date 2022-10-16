<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;
use function React\Promise\all;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tag::Paginate(10);
        return view('aPages.tags.Tag', compact('tags'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('aPages.tags.create');
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
            'en_title' => 'required',
        ]);
        Tag::create($request->all());
        return redirect()->route('Tag.index')->with('success', 'Tag has been added!');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tags = Tag::find($id);
        return view('aPages.tags.edit', compact('tags'));
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
        $request->validate([
            'title' => 'required',
            'en_title' => 'required',
        ]);
        $tags = Tag::find($id);
        //$tags->slug = null;
        $tags->update($request->all());
        return redirect()->route('Tag.index')->with('success', 'Tag has been edited!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tags = Tag::find($id);
        if($tags->posts->count()){
            return redirect()->route('Tag.index')->with('error', 'The tag can not be deleted, it has articles!');
        }
        $tags->delete();
        //Tag::destroy($id);
        return redirect()->route('Tag.index')->with('success', 'The tag has been deleted!');
    }
}
