<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Comment;

class CommentSeeder extends Seeder
{
    public function run()
    {
        // Create some comments for posts
        $posts = Post::all();
        
        foreach ($posts as $post) {
            $comment = new Comment();
            $comment->comment = "This is a comment for the post.";
            $comment->commentable_type = 'App\Models\Post';
            $comment->commentable_id = $post->id;
            $post->comments()->save($comment);
            
            // Create a reply for the comment
            $reply = new Comment();
            $reply->comment = "This is a reply to the comment.";
            $reply->parent_id = $comment->id;
            $reply->commentable_id = $comment->id;
            $reply->commentable_type = 'App\Models\Comment';
            $comment->replies()->save($reply);
        }
    }
}
