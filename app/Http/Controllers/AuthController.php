<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;


use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
 
use App\Models\User;
use JWTAuth;

use Validator ;
class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct(User $user)
    {
        // model as dependency injection
        $this->user = $user;
    }
    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    
     public function register(Request $request)
{
    // Validate the incoming request data
    $validator = Validator::make($request->all(), [
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:users',
        'username' => 'required|string|max:255|unique:users',
        'phone_number' => 'required|string|max:255|unique:users',
        'password' => 'required|string|min:8|confirmed',
        'type' => 'required|integer|in:0,1'
    ]);

    // If validation fails, return the error messages
    if ($validator->fails()) {
        return response()->json([
            'meta' => [
                'code' => 422,
                'status' => 'error',
                'message' => 'Validation failed',
            ],
            'errors' => $validator->errors()
        ], 422);
    }

    // If the request is valid, create the user
    $user = $this->user::create([
        'name' => $request['name'],
        'email' => $request['email'],
        'username'=> $request['username'],
        'phone_number'=> $request['phone_number'],
        'password' => bcrypt($request['password']),
        'type' => $request->input('type')
    ]);

    // Login the user immediately and generate the token
    $token = auth()->login($user);

    // Return the response as JSON 
    return response()->json([
        'meta' => [
            'code' => 200,
            'status' => 'success',
            'message' => 'User created successfully!',
        ],
        'data' => [
            'user' => $user,
            'access_token' => [
                'token' => $token,
                'type' => 'Bearer',
                'expires_in' => auth()->factory()->getTTL() * 60,    // get token expires in seconds
            ],
        ],
    ]);
}
    
public function login(Request $request)
{
    $this->validate($request, [
        'email' => 'required|string',
        'password' => 'required|string',
    ]);

    // attempt a login (validate the credentials provided)
    $token = auth()->attempt([
        'email' => $request->email,
        'password' => $request->password,
    ]);

    // if token successfully generated then display success response
    // if attempt failed then "unauthenticated" will be returned automatically
    if ($token)
    {
        return response()->json([
            'meta' => [
                'code' => 200,
                'status' => 'success',
                'message' => 'Login successful.',
            ],
            'data' => [
                'user' => auth()->user(),
                'access_token' => [
                    'token' => $token,
                    'type' => 'Bearer',
                    'expires_in' => auth()->factory()->getTTL() * 60,
                ],
            ],
        ]);
    }
    else{
        return response()->json([
            'meta' => [
                'code' => 401,
                'status' => 'error',
                'message' => 'User not found or incorrect credentials.',
            ],
        ], 401);
    }
}

  public function logout()
    {
        // get token
        $token = JWTAuth::getToken();

        // invalidate token
        $invalidate = JWTAuth::invalidate($token);

        if($invalidate) {
            return response()->json([
                'meta' => [
                    'code' => 200,
                    'status' => 'success',
                    'message' => 'Successfully logged out',
                ],
                'data' => [],
            ]);
        }
    }
   
}