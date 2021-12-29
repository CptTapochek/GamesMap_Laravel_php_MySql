<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class Post extends Model
{
    use Sluggable;
    use Sortable;

    protected $fillable = ['title', 'category_id', 'cover', 'features', 'description', 'screen_1', 'screen_2',
        'screen_3', 'screen_4', 'screen_5', 'screen_6', 'dlc_list', 'torr_specification', 'key_words', 'torr_size_1', 'torr_name_1', 'torr_name_2',
        'torr_size_2', 'trailer_1', 'trailer_2', 'torr_link_1', 'torr_link_2', 'torr_problems', 'created_at'];

    public function tags()
    {
        return $this->belongsToMany(Tag::class)->withTimestamps();
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function sluggable()
    {
        return[
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function getImage()
    {
        if(!$this->cover)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->cover}");
    }
    public function getScreen1()
    {
        if(!$this->screen_1)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_1}");
    }
    public function getScreen1Resize()
    {
        return asset("storage/Resize/{$this->screen_1}");
    }
    public function getScreen2()
    {
        if(!$this->screen_2)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_2}");
    }
    public function getScreen2Resize()
    {
        return asset("storage/Resize/{$this->screen_2}");
    }
    public function getScreen3()
    {
        if(!$this->screen_3)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_3}");
    }
    public function getScreen3Resize()
    {
        return asset("storage/Resize/{$this->screen_3}");
    }
    public function getScreen4()
    {
        if(!$this->screen_4)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_4}");
    }
    public function getScreen4Resize()
    {
        return asset("storage/Resize/{$this->screen_4}");
    }
    public function getScreen5()
    {
        if(!$this->screen_5)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_5}");
    }
    public function getScreen5Resize()
    {
        return asset("storage/Resize/{$this->screen_5}");
    }
    public function getScreen6()
    {
        if(!$this->screen_6)
        {
            return asset("assets/no image.png");
        }
        return asset("storage/{$this->screen_6}");
    }
    public function getScreen6Resize()
    {
        return asset("storage/Resize/{$this->screen_6}");
    }
    public function getTorrent1(){
        return asset("storage/{$this->torr_link_1}");
    }
    public function getTorrent2(){
        return asset("storage/{$this->torr_link_2}");
    }

    public function comments()
    {
        return $this->hasMany(Comment::class)->whereNull('parent_id');
    }
    public function comments_num()
    {
        return $this->hasMany(Comment::class);
    }

    use HasFactory;
}
