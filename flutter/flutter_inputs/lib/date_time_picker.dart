import 'package:flutter/material.dart';

class TarihSaatOrnekState extends StatefulWidget {
  const TarihSaatOrnekState({Key? key}) : super(key: key);

  @override
  _TarihSaatOrnekStateState createState() => _TarihSaatOrnekStateState();
}

class _TarihSaatOrnekStateState extends State<TarihSaatOrnekState> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(2021, suan.month - 3);
    DateTime yirmiGunSonrasi = DateTime(2021, 7, suan.day + 20);

    TimeOfDay suankiSaat = TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: suan,
                        firstDate: ucAyOncesi,
                        lastDate: yirmiGunSonrasi)
                    .then((secilenTarih) {
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih!.toIso8601String());
                  debugPrint(secilenTarih.millisecondsSinceEpoch.toString());
                });
              },
              child: Text(
                'Tarih Seç',
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
            ),
            ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: suankiSaat)
                    .then((secilenSaat) {
                  debugPrint(secilenSaat!.format(context));
                  debugPrint(secilenSaat.hour.toString() +
                      " : " +
                      secilenSaat.minute.toString());
                });
              },
              child: Text(
                'Saat Seç',
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
