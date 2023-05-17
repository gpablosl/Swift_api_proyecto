<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DetallesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::get('/', [DetallesController::class, 'index'])->name('detalles.index');
Route::get('/añadir', [DetallesController::class, 'create'])->name('añadir.index');
Route::post('/comidas', [DetallesController::class, 'store'])->name('comidas.store');
Route::get('/comidas/{id}/edit', [DetallesController::class, 'edit'])->name('comidas.edit');
Route::put('/comidas/{id}', [DetallesController::class, 'update'])->name(('comidas.update'));
Route::get('/comidas/{id}/delete', [DetallesController::class, 'delete'])->name('comidas.delete');
Route::delete('/comidas/{id}', [DetallesController::class, 'destroy'])->name('comidas.destroy');