<?php

namespace App\Providers;

use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;
use JeroenNoten\LaravelAdminLte\Events\BuildingMenu;
use App\Models\Category;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Agregar categorías al menú de AdminLTE dinámicamente
        Event::listen(BuildingMenu::class, function (BuildingMenu $event) {
            // Header de categorías
            $event->menu->add(['header' => 'Categorias']);
            
            try {
                $categories = Category::all();
                
                foreach ($categories as $category) {
                    $event->menu->add([
                        'text' => $category->description,
                        'url'  => 'issues/' . $category->id,
                        'icon' => 'fa fa-book-medical',
                    ]);
                }
            } catch (\Exception $e) {
                // Si hay error de conexión, no agregar categorías
            }
        });
    }
}
