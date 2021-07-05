import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Ogrenci {
  Ogrenci(this.isim, this.soyisim, this.id);
  final isim;
  final soyisim;
  final id;
}
