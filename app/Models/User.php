<?php

namespace App\Models;

//use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Cache;
use Kyslik\ColumnSortable\Sortable;
use PhpParser\Node\Stmt\Return_;
use Illuminate\Pagination\Paginator;

class User extends Authenticatable
{
    use Sortable;
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'avatar',
        'remember_token'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function isOnline()
    {
        return Cache::has('user-is-online-' . $this->id);
    }

    public function getName()
    {
        if ($this->name)
        {
            return "{$this->name}";
        }
        return null;
    }
    public function getLogin()
    {
        return $this->getName() ?: $this->name;
    }


    # устанавливаем отношение многие ко многим, мои друзья
    public function friendsOfMine()
    {
        return $this->belongsToMany('App\Models\User', 'friends', 'user_id', 'friend_id');
    }

    # устанавливаем отношение многие ко многим, друг
    public function friendOf()
    {
        return $this->belongsToMany('App\Models\User', 'friends', 'friend_id', 'user_id');
    }

    # получить друзей
    public function friends()
    {
        return $this->friendsOfMine()->wherePivot('accepted', true)->get()
        ->merge( $this->friendOf()->wherePivot('accepted', true)->get() )->take(9);
    }

    public function friendsAll()
    {
        return $this->friendsOfMine()->wherePivot('accepted', true)->get()
            ->merge( $this->friendOf()->wherePivot('accepted', true)->get() );
    }

    # запросы в друзья
    public function friendRequests()
    {
        return $this->friendsOfMine()->wherePivot('accepted', false)->limit(3)->get();
        //->merge( $this->friendOf()->wherePivot('accepted', false)->get() );
    }

    # запрос на ожидание друга
    public function friendsRequestPending()
    {
        return $this->friendOf()->wherePivot('accepted', false)->get();
    }

    # есть запрос на добавление в друзья
    public function hasfriendsRequestPending(User $user)
    {
        return (bool) $this->friendsRequestPending()->where('id', $user->id)->count();
    }

    # получил запрос о дружбе
    public function hasfriendsRequestReceived(User $user)
    {
        return (bool) $this->friendRequests()->where('id', $user->id)->count();
    }

    # добавить друга
    public function addFriend(User $user)
    {
        $this->friendOf()->attach($user->id);
    }

    # Удалить из друзей
    public function deleteFriend(User $user)
    {
        $this->friendOf()->detach($user->id);
        $this->friendsOfMine()->detach($user->id);
    }

    # принять запрос на дружбу
    public function acceptFriendRequest(User $user)
    {
        $this->friendRequests()->where('id', $user->id)->first()->pivot->update([
           'accepted' => true
        ]);
    }

    # пользователь уже в друзьях
    public function isFriendWith(User $user)
    {
        return (bool) $this->friends()->where('id', $user->id)->count();
    }

}
