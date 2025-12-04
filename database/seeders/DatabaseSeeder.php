<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Ejecutar el archivo SQL con los datos
        $sqlPath = database_path('seeders/Document.sql');
        
        if (file_exists($sqlPath)) {
            $sql = file_get_contents($sqlPath);
            
            // Dividir en declaraciones individuales y ejecutar
            $statements = array_filter(
                array_map('trim', explode(';', $sql)),
                fn($stmt) => !empty($stmt) && !str_starts_with(trim($stmt), '/')
            );
            
            foreach ($statements as $statement) {
                if (!empty(trim($statement))) {
                    DB::unprepared($statement);
                }
            }
            
            $this->command->info('Document.sql ejecutado correctamente.');
        } else {
            $this->command->warn('No se encontró el archivo Document.sql');
        }
    }
}
