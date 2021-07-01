import 'package:flutter/material.dart';
// import 'package:flutter_ilk_proje/dropdown_button_kullanimi.dart';
import 'package:flutter_ilk_proje/popupmenu_kullanimi.dart';
// import 'package:flutter_ilk_proje/image_widgets.dart';
// import 'package:flutter_ilk_proje/my_counter_page.dart';
// import 'package:flutter_ilk_proje/temel_buton_turleri.dart';

void main() {
  debugPrint('main metodu calıstı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build calıstı');
    return MaterialApp(
      title: 'My Home Page',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: TextTheme(
              headline1: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),
          actions: [PopupmenuKullanimi()],
        ),
        body: PopupmenuKullanimi(),
      ),
    );
  }
}
