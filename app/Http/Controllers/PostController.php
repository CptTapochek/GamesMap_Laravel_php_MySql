<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use function React\Promise\all;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::with('category', 'tags')->sortable()->orderBy('id', 'desc')->Paginate(20);
        return view('aPages.posts.Post', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::pluck('title', 'id')->all();
        $tags = Tag::pluck('title', 'id')->all();
        return view('aPages.posts.create', compact('categories', 'tags'));
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
            'cover' => 'required|image',
            'description' => 'required',
            'category_id' => 'required|integer',
        ]);
        $data = $request->all();
        if($request->hasFile('cover')){
            $folder = date('Y-m-d');
            $data['cover'] = $request->file('cover')->store("covers/{$folder}");
        }
        if($request->hasFile('screen_1')){
            $folder1 = date('Y-m-d');
            $data['screen_1'] = $request->file('screen_1')->store("Screens/{$folder1}");
            $imgage1 = $request->file('screen_1')->store("Resize/Screens/{$folder1}");
            $img1 = Image::make(public_path("/storage/{$imgage1}"));
            $img1->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_2')){
            $folder2 = date('Y-m-d');
            $data['screen_2'] = $request->file('screen_2')->store("Screens/{$folder2}");
            $imgage2 = $request->file('screen_2')->store("Resize/Screens/{$folder2}");
            $img2 = Image::make(public_path("/storage/{$imgage2}"));
            $img2->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_3')){
            $folder3 = date('Y-m-d');
            $data['screen_3'] = $request->file('screen_3')->store("Screens/{$folder3}");
            $imgage3 = $request->file('screen_3')->store("Resize/Screens/{$folder3}");
            $img3 = Image::make(public_path("/storage/{$imgage3}"));
            $img3->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_4')){
            $folder4 = date('Y-m-d');
            $data['screen_4'] = $request->file('screen_4')->store("Screens/{$folder4}");
            $imgage4 = $request->file('screen_4')->store("Resize/Screens/{$folder4}");
            $img4 = Image::make(public_path("/storage/{$imgage4}"));
            $img4->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_5')){
            $folder5 = date('Y-m-d');
            $data['screen_5'] = $request->file('screen_5')->store("Screens/{$folder5}");
            $imgage5 = $request->file('screen_5')->store("Resize/Screens/{$folder5}");
            $img5 = Image::make(public_path("/storage/{$imgage5}"));
            $img5->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_6')){
            $folder6 = date('Y-m-d');
            $data['screen_6'] = $request->file('screen_6')->store("Screens/{$folder6}");
            $imgage6 = $request->file('screen_6')->store("Resize/Screens/{$folder6}");
            $img6 = Image::make(public_path("/storage/{$imgage6}"));
            $img6->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('torr_link_1')){
            $folder7 = date('Y-m-d');
            $fileExtens_1 = $request->file('torr_link_1')->extension();
            $data['torr_link_1'] = $request->file('torr_link_1')->storeAs("TorrentFiles/{$folder7}", "$request->title-$request->torr_name_1-by-TorrentMap.$fileExtens_1");
        }
        if($request->hasFile('torr_link_2')){
            $folder8 = date('Y-m-d');
            $fileExtens_2 = $request->file('torr_link_2')->extension();
            $data['torr_link_2'] = $request->file('torr_link_2')->storeAs("TorrentFiles/{$folder8}", "$request->title-$request->torr_name_2-by-TorrentMap.$fileExtens_2");
        }

        $post = Post::create($data);
        $post->tags()->sync($request->tags);

        return redirect()->route('Post.index')->with('success', 'Post has been added!');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        $categories = Category::pluck('title', 'id')->all();
        $tags = Tag::pluck('title', 'id')->all();
        return view('aPages.posts.edit', compact('categories', 'tags', 'post'));
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
            'description' => 'required',
            'category_id' => 'required|integer',
        ]);
        $request['created_at'] = Carbon::now();
        $post = Post::find($id);
        $data = $request->all();
        if($request->hasFile('cover')){
            Storage::delete($post->cover);
            $folder = date('Y-m-d');
            $data['cover'] = $request->file('cover')->store("covers/{$folder}");

        }
        if($request->hasFile('screen_1')){
            Storage::delete($post->screen_1); Storage::delete("/Resize/{$post->screen_1}");
            $folder1 = date('Y-m-d');
            $data['screen_1'] = $request->file('screen_1')->store("Screens/{$folder1}");
            $imgage1 = $request->file('screen_1')->store("Resize/Screens/{$folder1}");
            $img1 = Image::make(public_path("/storage/{$imgage1}"));
            $img1->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_2')){
            Storage::delete($post->screen_2); Storage::delete("/Resize/{$post->screen_2}");
            $folder2 = date('Y-m-d');
            $data['screen_2'] = $request->file('screen_2')->store("Screens/{$folder2}");
            $imgage2 = $request->file('screen_2')->store("Resize/Screens/{$folder2}");
            $img2 = Image::make(public_path("/storage/{$imgage2}"));
            $img2->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_3')){
            Storage::delete($post->screen_3); Storage::delete("/Resize/{$post->screen_3}");
            $folder3 = date('Y-m-d');
            $data['screen_3'] = $request->file('screen_3')->store("Screens/{$folder3}");
            $imgage3 = $request->file('screen_3')->store("Resize/Screens/{$folder3}");
            $img3 = Image::make(public_path("/storage/{$imgage3}"));
            $img3->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_4')){
            Storage::delete($post->screen_4); Storage::delete("/Resize/{$post->screen_4}");
            $folder4 = date('Y-m-d');
            $data['screen_4'] = $request->file('screen_4')->store("Screens/{$folder4}");
            $imgage4 = $request->file('screen_4')->store("Resize/Screens/{$folder4}");
            $img4 = Image::make(public_path("/storage/{$imgage4}"));
            $img4->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_5')){
            Storage::delete($post->screen_5); Storage::delete("/Resize/{$post->screen_5}");
            $folder5 = date('Y-m-d');
            $data['screen_5'] = $request->file('screen_5')->store("Screens/{$folder5}");
            $imgage5 = $request->file('screen_5')->store("Resize/Screens/{$folder5}");
            $img5 = Image::make(public_path("/storage/{$imgage5}"));
            $img5->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('screen_6')){
            Storage::delete($post->screen_6); Storage::delete("/Resize/{$post->screen_6}");
            $folder6 = date('Y-m-d');
            $data['screen_6'] = $request->file('screen_6')->store("Screens/{$folder6}");
            $imgage6 = $request->file('screen_6')->store("Resize/Screens/{$folder6}");
            $img6 = Image::make(public_path("/storage/{$imgage6}"));
            $img6->resize(300, 168, function ($constraint) {
                $constraint->aspectRatio();})->save();
        }
        if($request->hasFile('torr_link_1')){
            Storage::delete($post->torr_link_1);
            $folder7 = date('Y-m-d');
            $fileExtens_1 = $request->file('torr_link_1')->extension();
            $data['torr_link_1'] = $request->file('torr_link_1')->storeAs("TorrentFiles/{$folder7}", "$request->title-$request->torr_name_1-by-TorrentMap.$fileExtens_1");
        }
        if($request->hasFile('torr_link_2')){
            Storage::delete($post->torr_link_2);
            $folder8 = date('Y-m-d');
            $fileExtens_2 = $request->file('torr_link_2')->extension();
            $data['torr_link_2'] = $request->file('torr_link_2')->storeAs("TorrentFiles/{$folder8}", "$request->title-$request->torr_name_2-by-TorrentMap.$fileExtens_2");
        }
        if(isset($request->delete1)){
            Storage::delete($post->torr_link_1);
            $post->torr_link_1 = null;
        }
        if(isset($request->delete2)){
            Storage::delete($post->torr_link_2);
            $post->torr_link_2 = null;
        }

        $post->update($data);
        $post->tags()->sync($request->tags);
        return redirect()->route('Post.index')->with('success', 'Post has been edited!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->tags()->sync([]);
        Storage::delete($post->cover);
        Storage::delete($post->screen_1); Storage::delete("/Resize/{$post->screen_1}");
        Storage::delete($post->screen_2); Storage::delete("/Resize/{$post->screen_2}");
        Storage::delete($post->screen_3); Storage::delete("/Resize/{$post->screen_3}");
        Storage::delete($post->screen_4); Storage::delete("/Resize/{$post->screen_4}");
        Storage::delete($post->screen_5); Storage::delete("/Resize/{$post->screen_5}");
        Storage::delete($post->screen_6); Storage::delete("/Resize/{$post->screen_6}");
        Storage::delete($post->torr_link_1);
        Storage::delete($post->torr_link_2);
        $post->delete();
        return redirect()->route('Post.index')->with('success', 'Post has been deleted!');
    }
}
