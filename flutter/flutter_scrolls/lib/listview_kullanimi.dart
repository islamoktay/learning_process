import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(index + 1, 'Öğrencinin adı ${index + 1}',
        'Öğrencinin soyadı ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: buildListViewKullanimi(),
    );
  }

  ListView buildListViewKullanimi() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0 ? Colors.purple.shade100 : Colors.red.shade100,
          child: ListTile(
            onTap: () {
              EasyLoading.showToast(
                'Eleman Tıklandı',
                duration: Duration(seconds: 3),
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              alertDialogIslemleri(context, oAnkiOgrenci);
            },
            title: Text(oAnkiOgrenci.ad),
            subtitle: Text(oAnkiOgrenci.soyad),
            leading: CircleAvatar(
              child: Text(oAnkiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.ad),
              subtitle: Text(ogr.soyad),
              leading: CircleAvatar(
                child: Text(ogr.id.toString()),
              ),
            ),
          )
          .toList(),
    );
  }

  void alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(
            secilen.toString(),
            textAlign: TextAlign.justify,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Ahmet İslam Oktay ' * 100),
                Text('Fatma Betül Oktay ' * 100),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('KAPAT'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('TAMAM'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class Ogrenci {
  Ogrenci(this.id, this.ad, this.soyad);

  final int id;
  final String ad;
  final String soyad;

  @override
  String toString() {
    return 'Öğrenci adı: $ad\nÖğrenci soyadı: $soyad\nid: $id';
  }
}
