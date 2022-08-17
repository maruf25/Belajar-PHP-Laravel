@extends('layout.main')


@section('container')
<h1>Halaman About</h1>
<h2>{{ $name }}</h2>
<h2>{{ $email }}</h2>
<img src="img/{{ $gambar }}" alt="Gambar" width="20%">
@endsection
