<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class UsuarioController extends Controller
{
    public function index()
    {
        $usuario = new Usuario();
        return $usuario->all();
    }

    public function show($id)
    {
        $usuario = Usuario::findOrFail($id);

        return $usuario;
    }
}
