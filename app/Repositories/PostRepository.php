<?php

namespace App\Repositories;

use App\Interfaces\PostRepositoryInterface;
use App\Models\Comment;
use App\Models\Post;
use App\Models\Reply;

class PostRepository implements PostRepositoryInterface 
{
   

    public function getPostById($postId) 
    {
        return Post::with('comments.replies')->findOrFail($postId);
    }

    
}
