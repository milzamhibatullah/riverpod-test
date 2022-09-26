import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/model/movie.dart';
import 'package:riverpod_test/viewmodel/movie_viewmodel.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Riverpod example',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: movies.when(
            /// when movie is null or empty
            data: (Movie movie) => movie == null || movie.search!.isEmpty
                ? Center(
                    child: TextButton(
                      onPressed: () async {
                        ///ref refresh to start fetch movies again
                        ref.refresh(movieProvider);
                      },
                      child: const Text('Fetch Data'),
                    ),
                  )
                :

                ///if data is exist
                Center(
                    child: Text(
                        'data is fetched with length : ${movie.search!.length}'),
                  ),
            error: (error, stack) => const Center(
              child: Text('error when fetching'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
