import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(
      elemanSayisi,
      (index) =>
          Ogrenci('İsim : ${index + 1}', 'Soyisim : ${index + 1}', index + 1),
    );
    print("eleman sayısı alındı : $elemanSayisi");
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemCount: 60,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var secilen = tumOgrenciler[index];
              Navigator.pushNamed(context, '/ogrenciDetay', arguments: secilen);
            },
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
          );
        },
      ),
    );
  }
}

class Ogrenci {
  Ogrenci(this.isim, this.soyisim, this.id);
  final String isim;
  final String soyisim;
  final int id;
}
