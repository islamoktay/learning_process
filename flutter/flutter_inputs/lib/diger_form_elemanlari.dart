import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  const DigerFormElemanlari({Key? key}) : super(key: key);

  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = '';
  bool switchState = false;
  double sliderDeger = 10;
  String secilenRenk = "kirmizi";
  List<String> tumSehirler = [
    "Ankara",
    "Bursa",
    "İstanbul",
    "Hatay",
    "Gaziantep"
  ];
  String secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add_circle)),
      appBar: AppBar(
        title: Text('Diğer Form Elemanları'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi!;
                });
              },
              activeColor: Colors.red,
              title: Text('Checkbox Title'),
              subtitle: Text('Checkbox Subtitle'),
            ),
            RadioListTile(
              value: 'Ankara',
              groupValue: sehir,
              onChanged: (String? deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("Seçilen şehir: $deger");
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile(
              value: 'Bursa',
              groupValue: sehir,
              onChanged: (String? deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("Seçilen şehir: $deger");
                });
              },
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile(
              value: 'İzmir',
              groupValue: sehir,
              onChanged: (String? deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("Seçilen şehir: $deger");
                });
              },
              title: Text("İzmir"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                });
              },
              title: Text("Switch title"),
              subtitle: Text("Switch Subtitle"),
              secondary: Icon(Icons.refresh),
            ),
            Text("Değeri Sliderdan Seçiniz"),
            Slider(
              value: sliderDeger,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDeger = yeniDeger;
                });
              },
              max: 20,
              min: 10,
              divisions: 20,
              label: sliderDeger.toString(),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Kırmızı"),
                    ],
                  ),
                  value: "kirmizi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Yeşil"),
                    ],
                  ),
                  value: "yesil",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Mavi"),
                    ],
                  ),
                  value: "mavi",
                ),
              ],
              onChanged: (String? secilen) {
                setState(() {
                  secilenRenk = secilen!;
                });
              },
              hint: Text("Seçiniz"),
              value: secilenRenk,
            ),
            DropdownButton<String>(
              items: tumSehirler.map(
                (oAnkiSehir) {
                  return DropdownMenuItem<String>(
                    child: Text(oAnkiSehir),
                    value: oAnkiSehir,
                  );
                },
              ).toList(),
              onChanged: (s) {
                setState(() {
                  secilenSehir = s!;
                });
              },
              value: secilenSehir,
            ),
          ],
        ),
      ),
    );
  }
}
