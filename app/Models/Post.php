<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function replies()
    {
        return $this->hasMany(Comment::class, 'parent_id');
    }
}
