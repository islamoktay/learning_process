import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  _TextFormFieldKullanimiState createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = "", _password = "", _username = "";
  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (deger) {
                    _username = deger!;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  onSaved: (deger) {
                    _email = deger!;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // initialValue: 'islamoktay@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return "Email boş olamaz";
                    } else if (!EmailValidator.validate(deger)) {
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
                  onSaved: (deger) {
                    _password = deger!;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();
                      String result =
                          "username: $_username\nemail: $_email\nşifre: $_password";
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.teal.shade300,
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  child: Text("Onayla"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
