<?php

namespace App\Http\Controllers\API;;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Comida;

class ComidaController extends Controller
{
    public function index() {
        $comidas = Comida::all();

        return $comidas;
    }
}
