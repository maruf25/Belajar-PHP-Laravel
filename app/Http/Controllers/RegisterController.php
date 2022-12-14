<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function index(){
        return view('register.index',[
            "title" => 'register',
            "active" => 'register'
        ]);
    }

    public function store(Request $request){
        $validatedData = $request->validate([
            "name" => 'required|max:255',
            "username" => ['required','min:4','max:255','unique:users'],
            "email" => ['required','email:dns','unique:users'],
            "password" => 'required|min:5|max:255'
        ]);

        // $validatedData['password'] = bcrypt($validatedData['password']);
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        $request->session()->flash('success','Registration Successfull !! Please login');

        return redirect('/login');

    }
}
