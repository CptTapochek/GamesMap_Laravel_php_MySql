<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('home');
//});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

/* Admin */
Route::get('aPages/admin_p', 'App\Http\Controllers\aPagesController@getaPages')->name('admin_p')->middleware('admin');
Route::get('aPages/users/Users', 'App\Http\Controllers\RatingController@AllUsers')->name('users-data')->middleware('admin');
Route::get('aPages/users/edit/{name}', 'App\Http\Controllers\RatingController@EditUsers')->name('User.edit')->middleware('admin');
Route::post('aPages/users/banned/{name}', 'App\Http\Controllers\RatingController@BannedUsers')->name('User.banned')->middleware('admin');
Route::post('aPages/users/unbanned/{name}', 'App\Http\Controllers\RatingController@UnbannedUsers')->name('User.unbanned')->middleware('admin');
Route::post('aPages/users/update/{name}', 'App\Http\Controllers\RatingController@RestateUser')->name('User.restate')->middleware('admin');
Route::get('aPages.users.search', 'App\Http\Controllers\SearchController@index_user')->name('search_user')->middleware('admin');
//Route::get('/', 'MainController@index')->name('admin.index')->middleware('admin');
Route::resource('aPages/posts/Post', 'App\Http\Controllers\PostController')->middleware('admin');
Route::resource('aPages/categories/Category', 'App\Http\Controllers\CategoryController')->middleware('admin');
Route::resource('aPages/tags/Tag', 'App\Http\Controllers\TagController')->middleware('admin');
Route::get('aPages/posts/Post', 'App\Http\Controllers\PostController@index')->name('Post.index')->middleware('admin');
Route::get('aPages/messages', 'App\Http\Controllers\ContactController@allData')->name('contact-data')->middleware('admin');
Route::post('aPages/messages/{msgID}', 'App\Http\Controllers\ContactController@Delete')->name('contact-delete')->middleware('admin');
Route::get('aPages/reports', 'App\Http\Controllers\ReportController@ReportData')->name('reports-data')->middleware('admin');
Route::post('aPages/reports/{ID}', 'App\Http\Controllers\ReportController@ReportDelete')->name('reports-delete')->middleware('admin');
Route::get('aPages/tags/Tag', 'App\Http\Controllers\TagController@index')->name('Tag.index')->middleware('admin');
Route::get('aPages/categories/Category', 'App\Http\Controllers\CategoryController@index')->name('Category.index')->middleware('admin');
Route::get('aPages/Documentation', function (){return view('aPages/Documentation');})->name('documentation')->middleware('admin');

/* Home */
Route::get('/', 'App\Http\Controllers\HomeController@index')->name('home');
Route::get('posts.Popular_page', 'App\Http\Controllers\HomeController@popular')->name('posts.Popular_page');
Route::get('posts.top_80', 'App\Http\Controllers\HomeController@top')->name('posts.top_80');
Route::get('/Disclaimer', function (){return view('/Disclaimer');})->name('disclaimer');
Route::get('/FAQ', function (){return view('/FAQ');})->name('faq');

/* Post */
Route::get('posts/{slug}', 'App\Http\Controllers\HomeController@show')->name('posts.single');
Route::get('posts.search', 'App\Http\Controllers\SearchController@index')->name('search');
Route::get('aPages.posts.search', 'App\Http\Controllers\SearchController@index_post')->name('search_post')->middleware('admin');
Route::post('posts/addComment', 'App\Http\Controllers\CommentController@store')->name('comments.store')->middleware('auth');
Route::post('comment/like', 'App\Http\Controllers\CommentController@likeComment')->name('comments_like')->middleware('auth');
Route::post('post/like', 'App\Http\Controllers\RatingController@likePost')->name('post_like')->middleware('auth');
Route::post('post/dislike', 'App\Http\Controllers\RatingController@dislikePost')->name('post_dislike')->middleware('auth');
Route::post('post/download', 'App\Http\Controllers\RatingController@downloadPost')->name('downloadPost');
//Route::post('comment/unlike/{like_id}', 'App\Http\Controllers\CommentController@deletelikeComment')->name('comments.unlike')->middleware('auth');
Route::post('posts/deleteComment', 'App\Http\Controllers\CommentController@deleteComment')->name('comments.delete')->middleware('admin');

/* Tag */
Route::get('tag/{slug}', 'App\Http\Controllers\TagSortController@show')->name('tags.single');
Route::get('Tag/{slug}', 'App\Http\Controllers\TagSortController@showCheat')->name('tags.cheatsTag');

/* Category */
Route::get('category/{slug}', 'App\Http\Controllers\CategorySortController@show')->name('categories.single');
Route::get('Category/{slug}', 'App\Http\Controllers\CategorySortController@showCheat')->name('categories.cheatsCat');
Route::get('News/{slug}', 'App\Http\Controllers\CategorySortController@showNews')->name('categories.news');

/* Contact */
Route::get('/contact', 'App\Http\Controllers\ContactController@CreateMessage')->name('contact');
Route::post('/contact', 'App\Http\Controllers\ContactController@submit')->name('contact-form');

/* login */
Route::get('/login', 'App\Http\Controllers\UserController@loginForm')->name('login.create')->middleware('guest');
Route::post('/login', 'App\Http\Controllers\UserController@login')->name('login');
Route::get('/logout', 'App\Http\Controllers\UserController@logout')->name('logout')->middleware('auth');

/* Register */
Route::get('/Registration', 'App\Http\Controllers\UserController@create')->name('register.create')->middleware('guest');
Route::post('/Registration', 'App\Http\Controllers\UserController@store')->name('register.store')->middleware('guest');
Route::get('/get_captcha/{config?}', function (\Mews\Captcha\Captcha $captcha, $config = 'default') {
    return $captcha->src($config);
});

/* User */
Route::get('user/{name}', 'App\Http\Controllers\ProfileController@getProfile')->name('profile.index')->middleware('auth');

/* PM */
Route::get('profile/pm/{name}', 'App\Http\Controllers\TalkController@getMessage')->name('profile.messages')->middleware('talk')->middleware('auth');
Route::post('profile/send/{name}', 'App\Http\Controllers\TalkController@sendMessage')->name('send.message')->middleware('talk');
Route::post('profile/deleteMSG/{name}', 'App\Http\Controllers\TalkController@deleteMessage')->name('delete.message')->middleware('talk');

/* Friends */
Route::get('user/AllFriends/{name}', 'App\Http\Controllers\ProfileController@getAllFriends')->name('profile.AllFriends')->middleware('auth');
Route::get('user/add/{name}', 'App\Http\Controllers\ProfileController@getAdd')->name('add.index')->middleware('auth');
Route::get('user/accept/{name}', 'App\Http\Controllers\ProfileController@getAccept')->name('accept.index')->middleware('auth');
Route::post('user/delete/{name}', 'App\Http\Controllers\ProfileController@postDeleteFriend')->name('deleteFriend.index')->middleware('auth');
Route::post('user/delete2/{name}', 'App\Http\Controllers\ProfileController@postDeleteFriendTwo')->name('deleteFriendTwo.index')->middleware('auth');
Route::post('user/deleteRequest/{name}', 'App\Http\Controllers\ProfileController@postDeleteRequest')->name('deleteRequest.index')->middleware('auth');

/* Edit profile */
Route::get('user/Edit/EditProfile', 'App\Http\Controllers\UserController@getEdit')->name('change.view')->middleware('auth');
Route::post('user/Edit/EditProfile', 'App\Http\Controllers\UserController@postEdit')->name('change.update');

/* Report */
Route::get('/report/{name}', 'App\Http\Controllers\ReportController@getReport')->name('report.get')->middleware('auth');
Route::post('/report/send', 'App\Http\Controllers\ReportController@postReport')->name('report.post')->middleware('auth');




/** English version */
/* Home */
Route::get('/en', 'App\Http\Controllers\HomeController@index')->name('home_en');
Route::get('posts.Popular_page/en', 'App\Http\Controllers\HomeController@popular')->name('posts.Popular_page_en');
Route::get('posts.top_80/en', 'App\Http\Controllers\HomeController@top')->name('posts.top_80_en');

/* Tags */
Route::get('tag/{slug}/en', 'App\Http\Controllers\TagSortController@show')->name('tags.single_en');
Route::get('Tag/{slug}/en', 'App\Http\Controllers\TagSortController@showCheat')->name('tags.cheatsTag_en');

/* Category */
Route::get('category/{slug}/en', 'App\Http\Controllers\CategorySortController@show')->name('categories.single_en');
Route::get('Category/{slug}/en', 'App\Http\Controllers\CategorySortController@showCheat')->name('categories.cheatsCat_en');
Route::get('News/{slug}/en', 'App\Http\Controllers\CategorySortController@showNews')->name('categories.news_en');

/* Contact */
Route::get('/contact/en', 'App\Http\Controllers\ContactController@CreateMessage')->name('contact_en');


