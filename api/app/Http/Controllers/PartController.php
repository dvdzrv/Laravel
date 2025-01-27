<?php

namespace App\Http\Controllers;

//use App\Http\Requests\StorePartRequest;
//use App\Http\Requests\UpdatePartRequest;
use App\Models\Part;
use Illuminate\Http\Request;

class PartController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Part::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required',
            'category' => 'required',
            'sub_category' => 'nullable',
            'value' => 'required',
            'count' => 'required',
            'min_count' => 'nullable',
        ]);

        $part = Part::create($fields);

        return $part;
    }

    /**
     * Display the specified resource.
     */
    public function show(Part $part)
    {
        //return ['part' => $part];
        return $part;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Part $part)
    {
        $fields = $request->validate([
            'name' => 'required',
            'category' => 'required',
            'sub_category' => 'nullable',
            'value' => 'required',
            'count' => 'required',
            'min_count' => 'nullable',
        ]);

        $part -> update($fields);

        return $part;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Part $part)
    {
        $part -> delete();

        return ['message' => 'Part deleted'];
    }
}
