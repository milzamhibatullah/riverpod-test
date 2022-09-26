import 'dart:convert';
import 'dart:developer';

import 'package:riverpod_test/model/movie.dart';

import '../api_services.dart';

class MovieService {
  Future<Movie> loadMovies() async {
    try {
      //AsyncLoading;
      var response = await apiService.get(url: 'api?s=batman');
      if (response != 'error') {
        log('response api : $response');
        final data = Movie.fromJson(jsonDecode(response));
        return data;
      } else {
        return throw 'error';
      }
    } catch (e) {
      log('error : $e');
      return throw 'error';
    }
  }
}
