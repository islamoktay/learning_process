import 'package:flutter/material.dart';
import 'package:flutter_grid_etc/grid_view_kullanimi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dersleri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GridView Dersleri',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridViewOrnek(),
      ),
    );
  }
}
