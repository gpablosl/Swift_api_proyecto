<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comida;

class DetallesController extends Controller
{
    public function index() {
        $detalles = Comida::all();
        $argumentos['detalles'] = $detalles;

        return view("index", $argumentos);
    }

    //CREAR COMIDAS

    public function create() {
        $argumentos = array(); 
        return view('añadir', $argumentos);
    }

    public function store(Request $request) {
        $nuevaComida = new Comida();
        $nuevaComida->nombre = $request->input('nombre');
        $nuevaComida->tipo = $request->input('tipo');
        $nuevaComida->costo = $request->input('costo');
        $nuevaComida->pais = $request->input('pais');
        $nuevaComida->saludable = $request->input('saludable');
        $nuevaComida->rapida = $request->input('rapida');

        $imagen = $request->file('imagen');
            if ($imagen) {
                $nuevaComida->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $nuevaComida->save();
        return redirect()->route('detalles.index');
    }

    //EDITAR
    public function edit($id) {
        $comidas = Comida::find($id);
        $argumentos['comidas'] = $comidas;

        return view('editar', $argumentos);
    } 

    public function update(Request $request, $id) {
        $comidas = Comida::find($id);
        $comidas->nombre = $request->input('nombre');
        $comidas->tipo = $request->input('tipo');
        $comidas->costo = $request->input('costo');
        $comidas->pais = $request->input('pais');
        $comidas->saludable = $request->input('saludable');
        $comidas->rapida = $request->input('rapida');

        $imagen = $request->file('imagen');
            if ($imagen) {
                $comidas->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $comidas->save();
        return redirect()->route('detalles.index', $id);
    }

    //Eliminar
    public function delete($id) {
        $comidas = Comida::find($id);
        $argumentos['comida'] = $comidas;
        return view('comida.delete', $argumentos);
    }

    public function destroy(Request $request, $id) {
        error_log("HOHO");
        $comidas = Comida::find($id);
        $comidas->delete();
        return redirect()->route('detalles.index');
    }
}
