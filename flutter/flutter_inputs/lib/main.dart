import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldIslemleri(),
    );
  }
}

class TextFieldIslemleri extends StatelessWidget {
  const TextFieldIslemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form İşlemleri"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autofocus: true,
              maxLength: 20,
              onChanged: (String deger) {
                if (deger.length > 3) {
                  print(deger);
                }
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: 'Label Text',
                hintText: 'Email giriniz',
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.emoji_emotions),
                filled: true,
                fillColor: Colors.orange,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
              onSubmitted: (String deger) {
                print("submit " + deger);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
