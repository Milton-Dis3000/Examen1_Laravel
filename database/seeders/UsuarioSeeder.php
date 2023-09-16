<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Usuario;

class UsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $usuario = new Usuario();
        // $usuario->nombre = "Juan";
        // $usuario->apellido = "Tico";
        // $usuario->correo = "correo@usuario";
        // $usuario->fecha_registro = "2023-09-16";

        // $usuario->save();


        // $usuario = new Usuario();
        // $usuario->nombre = "Esteban";
        // $usuario->apellido = "Azul";
        // $usuario->correo = "correo@usuario";
        // $usuario->fecha_registro = "2023-09-12";

        // $usuario->save();


        $usuarios = Usuario::factory(100)->create();
    }
}