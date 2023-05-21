<?php

namespace App\Http\Controllers;

use App\Interfaces\PostRepositoryInterface;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PostController extends Controller
{
    private PostRepositoryInterface $postRepository;

    public function __construct(PostRepositoryInterface $postRepository) 
    {
        $this->postRepository = $postRepository;
    }

    public function show(Request $request): JsonResponse 
    {
        $postId = $request->route('id');

        
       
        return response()->json([
            'Post' => $this->postRepository->getPostById($postId)
            
        ]);

        
    }

}
