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
  late SharedPreferences mySharedPrefences;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((sf) => mySharedPrefences = sf);
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                  title: Text("Kad??n"),
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
                    "G??ster",
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

  Future<void> _kaydet() async {
    formKey.currentState!.save();
    await mySharedPrefences.setString("myName", isim);
    await mySharedPrefences.setInt("myId", id);
    await mySharedPrefences.setBool("myCinsiyet", cinsiyet);
  }

  void _goster() {
    debugPrint(
        "Okunan ??sim " + (mySharedPrefences.getString("myName") ?? "N\A"));
    debugPrint("Okunan id " + (mySharedPrefences.getInt("myId").toString()));

    debugPrint("Okunan Erkek Mi " +
        (mySharedPrefences.getBool("myCinsiyet").toString()));
  }

  void _sil() {
    mySharedPrefences.remove("myName");
    mySharedPrefences.remove("myId");
    mySharedPrefences.remove("myCinsiyet");
  }
}
