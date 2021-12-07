<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Resource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Traits\Template;

/**
 * Class ResourceController
 * @package App\Http\Controllers
 */
class ResourceController extends Controller
{

    use Template;
    private $name = 'resources';

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $resources = Resource::paginate();

        return view('resource.index', compact('resources'))
            ->with('i', (request()->input('page', 1) - 1) * $resources->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $resource = new Resource();
        $categories = Category::pluck('description', 'id');
        return view('resource.create', compact('resource', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validamos las reglas del modelo
        request()->validate(Resource::$rules);
        //asignamos todos los datos del formulario a una variable
        $resour = $request->all();
        //Movemos la imagen
        if($request->hasFile("route")){
            $file = $request->file("route");
            $nameFile = time().'.'.$file->guessExtension();
            $route = public_path('archivos/');
            $file->move($route, $nameFile);
            $resour['route'] = 'archivos/'.$nameFile;
            //create one resource
            $resource = Resource::create($resour);
            return redirect()->route('resources.index')
            ->with('success', 'Resource created successfully.');
        }else {
            return redirect()->route('resources.index')
            ->with('warning', 'oops something went wrong.');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $resource = Resource::find($id);
        //si no trae nada genere un error
        if(empty($resource))return view('errors.404');

        return view('resource.show', compact('resource'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $resource = Resource::find($id);
        $categories = Category::pluck('description', 'id');
        return view('resource.edit', compact('resource', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Resource $resource
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Resource $resource)
    {
        //validamos las reglas del modelo
        request()->validate(Resource::$rules);
        //asignamos todos los datos del formulario a una variable
        $resour = $request->all();
        //Movemos la imagen
        if($request->hasFile("route")){
            $file = $request->file("route");
            $nameFile = time().'.'.$file->guessExtension();
            $route = public_path('archivos/');
            $file->move($route, $nameFile);
            $resour['route'] = 'archivos/'.$nameFile;
            //update one resource
            $resource->update($resour);

            return redirect()->route('resources.index')
                ->with('success', 'Resource updated successfully');
        }else {
            return redirect()->route('resources.index')
            ->with('warning', 'oops something went wrong.');
        }

    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $resource = Resource::find($id)->delete();

        return redirect()->route('resources.index')
            ->with('success', 'Resource deleted successfully');
    }

    /*
     * Listar todos los recursos relacionados a las categorias
     */
    public function indexDefault(){
        $resources = Resource::all();
        $values = ResourceController::uniqueCategories($resources);
        return view('resource.default', compact('resources', 'values'));
    }

}
