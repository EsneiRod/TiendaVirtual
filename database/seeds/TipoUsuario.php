<?php

use Illuminate\Database\Seeder;

class TipoUsuario extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('type_users')->insert([
            'description' => 'Profesional',
        ]);
        DB::table('type_users')->insert([
            'description' => 'Cliente',
        ]);
        DB::table('type_users')->insert([
            'description' => 'Administrador',
        ]);
    }
}
