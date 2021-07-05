import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(
      elemanSayisi,
      (index) =>
          Ogrenci(index + 1, 'İsim : ${index + 1}', 'Soyisim : ${index + 1}'),
    );
    print("eleman sayısı alındı : $elemanSayisi");
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: Container(),
    );
  }
}

class Ogrenci {
  Ogrenci(this.isim, this.soyisim, this.id);
  final isim;
  final soyisim;
  final id;
}
