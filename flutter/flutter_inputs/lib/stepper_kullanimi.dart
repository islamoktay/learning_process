import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  const StepperOrnek({Key? key}) : super(key: key);

  @override
  _StepperOrnekState createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {
  int _aktifStep = 0;
  late String isim, mail, sifre;
  late List<Step> tumStepler;
  bool hata = false;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    tumStepler = _tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Örnek'),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          /*onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },*/
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text('Username giriniz'),
        subtitle: Text("Username Altbaşlık"),
        state: _stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
            labelText: 'UsernameLabel',
            hintText: 'UsernameHint',
            border: OutlineInputBorder(),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return 'En az 6 karakter giriniz';
            }
          },
          onSaved: (girilenDeger) {
            isim = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text('Mail giriniz'),
        subtitle: Text("Mail Altbaşlık"),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          keyboardType: TextInputType.emailAddress,
          key: key1,
          decoration: InputDecoration(
            labelText: 'MailLabel',
            hintText: 'MailHint',
            border: OutlineInputBorder(),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6 || !girilenDeger.contains("@")) {
              return 'Geçerli mail giriniz';
            }
          },
          onSaved: (girilenDeger) {
            mail = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text('Şifre giriniz'),
        subtitle: Text("Şifre Altbaşlık"),
        state: _stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
            labelText: 'ŞifreLabel',
            hintText: 'ŞifreHint',
            border: OutlineInputBorder(),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return 'Şifre en az 6 karakter giriniz';
            }
          },
          onSaved: (girilenDeger) {
            sifre = girilenDeger!;
          },
        ),
      ),
    ];

    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          formTamamlandi();
        } else {
          hata = true;
        }
        break;
    }
  }

  void formTamamlandi() {
    debugPrint("Girilen Değerler = İsim : $isim, Mail: $mail, Şifre: $sifre");
  }
}
