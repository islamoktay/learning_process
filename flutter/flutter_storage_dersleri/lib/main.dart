import 'package:flutter/material.dart';
import 'package:flutter_storage_dersleri/shared_pref_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Pref',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Pref Kullanımı'),
        ),
        body: SharedPrefKullanimi(),
      ),
    );
  }
}
