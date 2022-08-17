@extends('layout.main')

@section('container')

<h1>Post Categories</h1>

<div class="container">
    <div class="row">
        @foreach ($categories as $category)
        <div class="col-md-4">
            <a href="/blog?category={{ $category->slug }}" class="">
              <div class="card bg-dark text-white">
                <img src="https://source.unsplash.com/500x500?{{ $category->name }}" class="card-img" alt="{{ $category->name }}">
                <div class="card-img-overlay d-flex align-items-center p-0">
                  <h5 class="text-white card-title flex-fill text-center p-4" style="background-color: rgba(0, 0, 0, 0.5)"> 
                        {{ $category->name }}
                  </h5>
               </div>
            </a>
              </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
