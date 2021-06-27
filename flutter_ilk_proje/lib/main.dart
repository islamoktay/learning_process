import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhome build calıstı');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Butona basılma miktarı',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _sayac.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('buton tıklandı ve sayac degeri $_sayac');
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}
