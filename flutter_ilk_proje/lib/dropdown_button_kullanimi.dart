import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  _DropDownButtonKullanimiState createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Van',
    'Diyarbakır'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Şehir Seçiniz'),
        /* items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir Şehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Bursa Şehri'),
            value: 'Bursa',
          ),
        ], */
        items: _tumSehirler
            .map(
              (String oAnkiSehir) => DropdownMenuItem(
                child: Text(oAnkiSehir),
                value: oAnkiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
