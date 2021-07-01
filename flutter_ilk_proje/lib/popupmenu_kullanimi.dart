import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  _PopupmenuKullanimiState createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilensehir = '';
  List<String> renkler = ['mavi', 'yeşil', 'turuncu', 'kırmızı'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('Secilen Şehir: $sehir');
          _secilensehir = sehir;
        },
        icon: Icon(Icons.add),
        itemBuilder: (BuildContext context) {
/*           return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Van'),
              value: 'Van',
            ),
          ]; */
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
