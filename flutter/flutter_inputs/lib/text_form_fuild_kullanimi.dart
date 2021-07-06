import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  _TextFormFieldKullanimiState createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField Kullanımı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  // initialValue: 'ahmetislamoktay',
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (deger!.length < 4) {
                      return 'Username en az 4 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  // initialValue: 'islamoktay@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      return 'Geçerli mail giriniz';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  // initialValue: 'islamoktay@gmail.com',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (deger!.length < 6) {
                      return 'Şifre en az 6 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
