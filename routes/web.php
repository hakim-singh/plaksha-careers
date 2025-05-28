<?php

use App\Http\Controllers\AdminJobController;
use App\Http\Controllers\PublicJobController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Public Routes

Route::get('/', [PublicJobController::class, 'index'])->name('home');
Route::get('/careers/{job:slug}', [PublicJobController::class, 'show'])->name('jobs.show');

// Admin Routes
Route::prefix('admin')->group(function () {
    Route::get('/careers', [AdminJobController::class, 'index'])->name('admin.jobs.index');
    Route::get('/careers/create', [AdminJobController::class, 'create'])->name('admin.jobs.create');
    Route::post('/careers', [AdminJobController::class, 'store'])->name('admin.jobs.store');
    Route::get('/careers/{job:slug}/edit', [AdminJobController::class, 'edit'])->name('admin.jobs.edit');
Route::put('/careers/{job:slug}', [AdminJobController::class, 'update'])->name('admin.jobs.update');
Route::delete('/careers/{job:slug}', [AdminJobController::class, 'destroy'])->name('admin.jobs.destroy');

});
