import 'package:flutter/material.dart';

import 'models/veri.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  late List<Veri> tumVeriler;

  @override
  void initState() {
    super.initState();
    tumVeriler = [
      Veri("Biz Kimiz", "İçerik Buraya Gelecek", false),
      Veri("Biz Neredeyiz", "İçerik Buraya Gelecek", false),
      Veri("Misyonumuz", "İçerik Buraya Gelecek", false),
      Veri("Vizyonumuz", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
      Veri("İletişim", "İçerik Buraya Gelecek", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: PageStorageKey<String>('keyAnaSayfa'),
        itemCount: tumVeriler.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: PageStorageKey("$index"),
            title: Text(tumVeriler[index].baslik),
            initiallyExpanded: tumVeriler[index].expanded,
            children: [
              Container(
                color:
                    index % 2 == 0 ? Colors.red.shade200 : Colors.blue.shade200,
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(tumVeriler[index].icerik),
                ),
              ),
            ],
          );
        });
  }
}
