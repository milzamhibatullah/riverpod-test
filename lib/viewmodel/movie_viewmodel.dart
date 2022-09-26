import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/model/movie.dart';
import 'package:riverpod_test/services/api_services.dart';
import 'package:riverpod_test/services/movie/movie_service.dart';



///call class movie service to fetch data
final moviesServiceProvider = Provider<MovieService>((ref) => MovieService());

///define future provider to interact with view/ui
final movieProvider = FutureProvider<Movie>((ref){
  /// create movie service object and attach to ref
  final movieService = ref.watch(moviesServiceProvider);
  /// fetch data movies
  return movieService.loadMovies();
});

