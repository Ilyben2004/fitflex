<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;  // add the User model
use Illuminate\Support\Facades\Auth;


class UserController extends Controller
{
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function getUserData(Request $request)
    {
        // Verify and decode the JWT token
        $user = auth()->user();
    
        // If user is authenticated, return user data
        if ($user) {
            return response()->json([
                'meta' => [
                    'code' => 200,
                    'status' => 'success',
                    'message' => 'User data retrieved successfully.',
                ],
                'data' => [
                    'user' => $user,
                ],
            ]);
        } else {
            return response()->json([
                'meta' => [
                    'code' => 401,
                    'status' => 'error',
                    'message' => 'Unauthorized. Invalid or expired token.',
                ],
            ], 401);
        }
    }
    
}