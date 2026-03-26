<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/status', function () {
    return response()->json([
        'aplicacao' => 'Inter World Cup',
        'status' => 'ok',
    ]);
});

Route::middleware('auth')->get('/usuario', function (Request $request) {
    return $request->user();
});
