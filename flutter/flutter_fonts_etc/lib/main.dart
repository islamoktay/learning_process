import 'package:flutter/material.dart';
import 'package:flutter_fonts_etc/drawer_menu.dart';
import 'package:flutter_fonts_etc/kisisel_font.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.orangeAccent,
      ),
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
  int secilenMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bölüm 2"),
      ),
      body: KisiselFont(),
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  bottomNavMenu() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Ana Sayfa",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Ara",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "Ekle",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Profil",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: secilenMenuItem,
      onTap: (index) {
        setState(() {
          secilenMenuItem = index;
        });
      },
    );
  }
}
