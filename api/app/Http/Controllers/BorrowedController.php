<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBorrowedRequest;
use App\Http\Requests\UpdateBorrowedRequest;
use App\Models\Borrowed;

class BorrowedController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Borrowed::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBorrowedRequest $request)
    {
        $fields = $request->validate([
            'idPart' => 'required',
            'idUser' => 'nullable',
            'count' => 'required',
        ]);

        $borrowed = Borrowed::create($fields);

        return $borrowed;
    }

    /**
     * Display the specified resource.
     */
    public function show(Borrowed $borrowed)
    {
        return $borrowed;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBorrowedRequest $request, Borrowed $borrowed)
    {
        $fields = $request->validate([
            'idPart' => 'required',
            'idUser' => 'nullable',
            'count' => 'required',
        ]);

        $borrowed -> update($fields);

        return $borrowed;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Borrowed $borrowed)
    {
        $borrowed -> delete();

        return ['message' => 'Borrowed deleted'];
    }
}
