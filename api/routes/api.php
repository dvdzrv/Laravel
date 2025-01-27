<?php

use App\Http\Controllers\PartController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Route::get('/user', function (Request $request) {
//    return $request->user();
//})->middleware('auth:sanctum');


ROute::apiResource('parts', PartController::class);
