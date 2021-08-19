import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefKullanimi extends StatefulWidget {
  const SharedPrefKullanimi({Key? key}) : super(key: key);

  @override
  _SharedPrefKullanimiState createState() => _SharedPrefKullanimiState();
}

class _SharedPrefKullanimiState extends State<SharedPrefKullanimi> {
  late String isim;
  late int id;
  bool cinsiyet = true;
  var formKey = GlobalKey<FormState>();
  SharedPreferences mySharedPrefences;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onSaved: (deger) {
                  isim = deger!;
                },
                decoration: InputDecoration(
                  labelText: "isminizi giriniz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (deger) {
                  id = int.parse(deger!);
                },
                decoration: InputDecoration(
                  labelText: "ID giriniz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                  title: Text("Erkek"),
                  value: true,
                  groupValue: cinsiyet,
                  onChanged: (secildi) {
                    setState(() {
                      cinsiyet = secildi as bool;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioListTile(
                  title: Text("Kadın"),
                  value: false,
                  groupValue: cinsiyet,
                  onChanged: (secildi) {
                    setState(() {
                      cinsiyet = secildi as bool;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _kaydet,
                  child: Text(
                    "Kaydet",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
                ElevatedButton(
                  onPressed: _goster,
                  child: Text(
                    "Göster",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: _sil,
                  child: Text(
                    "Sil",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _kaydet() {}

  void _goster() {}

  void _sil() {}
}
