
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Riverpod example'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}