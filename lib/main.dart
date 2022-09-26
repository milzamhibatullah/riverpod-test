import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/ui/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      ///implement provider scope as a root on widget to us riverpod state management
      home: ProviderScope(child: HomeScreen()),
    ),
  );
}
