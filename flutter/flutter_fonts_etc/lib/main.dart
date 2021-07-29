import 'package:flutter/material.dart';
import 'package:flutter_fonts_etc/anasayfa.dart';
import 'package:flutter_fonts_etc/aramasayfasi.dart';
import 'package:flutter_fonts_etc/drawer_menu.dart';
//import 'package:flutter_fonts_etc/kisisel_font.dart';

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
        primarySwatch: Colors.teal,
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
  late List<Widget> tumSayfalar;
  late AnaSayfa sayfaAna;
  late AramaSayfasi sayfaArama;

  @override
  void initState() {
    super.initState();
    sayfaAna = AnaSayfa();
    sayfaArama = AramaSayfasi();
    tumSayfalar = [sayfaAna, sayfaArama];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bölüm 2"),
      ),
      body: secilenMenuItem < tumSayfalar.length
          ? tumSayfalar[secilenMenuItem]
          : tumSayfalar[0],
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
          icon: Icon(Icons.search),
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
