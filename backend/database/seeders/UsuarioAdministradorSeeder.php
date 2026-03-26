<?php

namespace Database\Seeders;

use App\Models\Usuario;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsuarioAdministradorSeeder extends Seeder
{
    public function run(): void
    {
        Usuario::query()->updateOrCreate(
            ['email' => 'admin@interworldcup.local'],
            [
                'nome' => 'Administrador do Sistema',
                'password' => Hash::make('12345678'),
                'perfil' => 'administrador',
            ],
        );
    }
}
