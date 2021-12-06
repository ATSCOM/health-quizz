<?php

namespace App\Traits;

use Illuminate\Http\Request;

Trait Template {
    //script para subir o mover la imagen
    public static function moveImage(Request $request, $name){

        if($request->hasFile("image")){
            $image = $request->file("image");
            $nameImage = time().'.'.$image->guessExtension();
            $route = public_path('images/'.$name.'/');
            $image->move($route, $nameImage);
            return 'images/'.$name.'/'.$nameImage;
        }else {
            return 'NULL';
        }

    }
    //Guardar array o cualquier cosa en una cookie
    public static function addCookieFo($nameCookie, $cookieAdd){
        $json = json_encode($cookieAdd);
        setcookie($nameCookie, $json);
    }

}
