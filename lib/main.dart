import 'package:flutter/material.dart';
import 'package:riverpod_test/ui/home_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(_)=>HomeScreen()
    },
  ));
}
