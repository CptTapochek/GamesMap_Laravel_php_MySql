<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Likes;
use App\Models\Post;
use App\Models\Rating;
use App\Models\Statistic;
use Illuminate\Http\Request;
use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        /* Display Posts */
        if (Cache::has('category_home')){
            $category = Cache::get('category_home');
        }
        else{
            $category = Category::where(['slug' => 'games'])->firstOrFail();
            Cache::put('category_home', $category);
        }
        $posts = $category->posts()->sortable()->orderBy('created_at', 'desc')->paginate(24);

        /* Check if user enter */
        if (Auth::check()){
            $Myuser = Auth::user();
            $user_id = $Myuser->id;
            if ($Myuser->is_admin){$user = 0; $moderator = 0; $admin = 1;}
            elseif ($Myuser->is_moderator){$user = 0; $moderator = 1; $admin = 0;}
            else {$user = 1; $moderator = 0; $admin = 0;}
            $tomorrow = time() - 86400;
            $statistic = Statistic::where('user_id', $user_id)->get();
            $enterUsers = $statistic->count();
            $time = 0;
            foreach ($statistic as $x){$time = $x->time;}
            if (!$enterUsers){Statistic::create(['user_id' => $user_id, 'time' => time(), 'user' => $user, 'moderator' => $moderator, 'admin' => $admin]);}
            if($time < $tomorrow){
                $user_time = DB::table('statistics');
                $user_time->where('user_id', $user_id)->update(['time' => time(), 'user' => $user, 'moderator' => $moderator, 'admin' => $admin]);
            }
        }
        //return view('home', ['slug' => 'games'], compact('category', 'posts'));
        //$posts = Post::sortable()->with('category')->where('category_id', '=', 12)->orderBy('created_at', 'desc')->paginate(24);
        return view('home', compact('category','posts'));
    }

    public function popular()
    {
        if (Cache::has('posts_popular_main')){
            $posts = Cache::get('posts_popular_main');
        }
        else{
            $category = Category::get();
            $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
            foreach ($gamesCat as $x){$GamesID = $x->id;}
            $posts = Post::sortable()->where('category_id', $GamesID)->with('category')->orderBy('views', 'desc')->paginate(24);
            Cache::put('posts_popular_main', $posts, 86400);
        }
        return view('posts.Popular_page', compact('posts'));
    }

    public function show($slug)
    {
        /* Get posts */
        $post = Post::where('slug', $slug)->firstOrFail();
        $post -> count_comment = $post->comments_num->count();


        /* Get categories */
        if (Cache::has('categories_single')){
            $category = Cache::get('categories_single');
        }
        else{
            $category = Category::get();
            Cache::put('categories_single', $category);
        }

        $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
        foreach ($gamesCat as $x){$GamesID = $x->id;}
        $softCat = $category->where('slug', 'software'); $SoftID = 0;
        foreach ($softCat as $x){$SoftID = $x->id;}
        $cheatsCat = $category->where('slug', 'cheats'); $CheatsID = 0;
        foreach ($cheatsCat as $x){$CheatsID = $x->id;}
        $newsCat = $category->where('slug', 'news'); $NewsID = 0;
        foreach ($newsCat as $x){$NewsID = $x->id;}


        /* Likes & Dislikes */
        $rating_table = Rating::where('post_id', $post->id)->get();
        $PostLikes = $rating_table->where('like', 1)->count();
        $PostDislikes = $rating_table->where('dislike', 1)->count();
        if (Auth::check()){
            $user_id = Auth::user()->id;
            $LikeCheck = $rating_table->where('user_id', $user_id);
            if($LikeCheck->count() > 0){
                if($LikeCheck->where('like', 1)->count() > 0){
                    $userLike = 1;
                }
                else{$userLike = 0;}
                if($LikeCheck->where('dislike', 1)->count() > 0){
                    $userDislike = 1;
                }
                else{$userDislike = 0;}
            }
            else{$userLike = 0; $userDislike = 0;}
        }

        $Rating = $PostLikes - $PostDislikes;
        $post->rating=$Rating;

        $likesComm = Likes::where('post_id', $post->id)->get();
        $post -> views += 1;
        $post -> update();
        $comments = $post->comments()->orderBy('created_at', 'desc')->paginate(5);
        if(Auth::check()){
            return view('posts.single', compact('post', 'comments', 'likesComm', 'GamesID',
                'SoftID', 'CheatsID', 'NewsID', 'PostLikes', 'PostDislikes', 'userLike', 'userDislike'));
        }
        else{
            return view('posts.single', compact('post', 'comments', 'likesComm', 'GamesID',
                'SoftID', 'CheatsID', 'NewsID', 'PostLikes', 'PostDislikes'));
        }

    }

    public function top()
    {
        if (Cache::has('top_posts')){
            $posts = Cache::get('top_posts');
        }
        else{
            $category = Category::get();
            $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
            foreach ($gamesCat as $x){$GamesID = $x->id;}
            $posts = Post::sortable()->where('category_id', $GamesID)->with('category')->orderBy('rating', 'desc')->paginate(80);
            Cache::put('top_posts', $posts, 86400);
        }

        return view('posts.top80', compact('posts'));
    }

}
