<?php

namespace App\Helpers;

use App\Models\Category;
use Illuminate\Support\Facades\Schema;

class SidebarHelper
{
    /**
     * Obtiene los items del sidebar incluyendo las categorías de la base de datos
     *
     * @return array
     */
    public static function getMenuItems(): array
    {
        $items = [
            // Navbar items:
            [
                'type' => 'navbar-search',
                'text' => 'find an cuestion',
                'topnav_right' => true,
            ],
            // Sidebar items:
            ['header' => 'General'],
            [
                'text' => 'Resources',
                'url' => 'assets',
                'icon' => 'fas fa-sd-card',
            ]
        ];

        // Agregar header de categorías
        $items[] = ['header' => 'Categorias'];

        // Obtener categorías de la base de datos solo si la conexión está disponible
        try {
            // Verificar si la aplicación está booteada y la tabla existe
            if (app()->bound('db') && Schema::hasTable('categories')) {
                $categories = Category::all();
                
                foreach ($categories as $category) {
                    $items[] = [
                        'text' => $category->description,
                        'url'  => 'issues/' . $category->id,
                        'icon' => 'fa fa-book-medical',
                    ];
                }
            }
        } catch (\Exception $e) {
            // Si hay error de conexión, retornar items sin categorías
            // Esto puede pasar durante el setup inicial o artisan commands
        }

        return $items;
    }
}
