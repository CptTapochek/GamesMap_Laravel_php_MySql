<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Kyslik\ColumnSortable\Sortable;

class Category extends Model
{
    use Sluggable;

    use Sortable;

    protected $fillable = ['title'];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function sluggable()
    {
        return[
          'slug' => [
              'source' => 'title'
          ]
        ];
    }

    use HasFactory;
}
