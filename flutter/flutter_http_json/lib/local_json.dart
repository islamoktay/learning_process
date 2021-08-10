import 'package:flutter/material.dart';

class LocalJsonKullanimi extends StatefulWidget {
  const LocalJsonKullanimi({Key? key}) : super(key: key);

  @override
  _LocalJsonKullanimiState createState() => _LocalJsonKullanimiState();
}

class _LocalJsonKullanimiState extends State<LocalJsonKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Kullanımı"),
      ),
      body: Container(
        child: Text("Local Json"),
      ),
    );
  }
}
