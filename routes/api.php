<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::prefix('auth')->group(function () {
    Route::post('/login', [UserController::class, 'login']);
    Route::post('/register', [UserController::class, 'register']);
    Route::put('/update-password', [UserController::class, 'updatePassword']);
});
Route::get('/unauthorized', function () {
    return response()->json([
        'status' => false,
        'message' => 'Unauthorized'
    ], 401);
})->name('unauthorized');
Route::middleware(['auth:api'])->group(function () {
    Route::post('/auth/reset-password', [UserController::class, 'resetPassword']);
    Route::get('/auth/get-user', [UserController::class, 'getUser']);
    Route::post('/create-user', [UserController::class, 'createUser']);
    Route::get('/get-all-user', [UserController::class, 'getAllUser']);
    Route::delete('/delete-user/{user}', [UserController::class, 'deleteUser']);
});
