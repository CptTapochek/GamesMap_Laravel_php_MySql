<?php

namespace App\Providers;

use App\Http\Controllers\UserController;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('posts.popular_block', function ($view){
            if(Auth::check()){
                if (Auth::user()->is_baned == 1){$x = new UserController(); $x->logout();}
            }
            if (Cache::has('posts_pop')){
                $posts = Cache::get('posts_pop');
            }
            else{
                $category = Category::get();
                $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
                foreach ($gamesCat as $x){$GamesID = $x->id;}
                $posts = Post::where('category_id', '=', $GamesID)->orderBy('views', 'desc')->limit(8)->get();
                Cache::put('posts_pop', $posts, 86400);
            }

            $view->with('popular_posts', $posts);
        });

        view()->composer('en.posts.popular_block', function ($view){
            if(Auth::check()){
                if (Auth::user()->is_baned == 1){$x = new UserController(); $x->logout();}
            }
            if (Cache::has('posts_pop')){
                $posts = Cache::get('posts_pop');
            }
            else{
                $category = Category::get();
                $gamesCat = $category->where('slug', 'games'); $GamesID = 0;
                foreach ($gamesCat as $x){$GamesID = $x->id;}
                $posts = Post::where('category_id', '=', $GamesID)->orderBy('views', 'desc')->limit(8)->get();
                Cache::put('posts_pop', $posts, 86400);
            }

            $view->with('popular_posts', $posts);
        });


        Paginator::useBootstrap();
    }
}
