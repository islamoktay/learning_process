import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String dersAdi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ortalama Hesapla"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: uygulamaGovdesi(),
    );
  }

  Widget uygulamaGovdesi() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //"Static Formu" tutan container
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.pink.shade200,
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Ders Adı",
                        hintText: "Ders adını giriniz",
                        border: OutlineInputBorder(),
                      ),
                      validator: (girilenDeger) {
                        if (girilenDeger!.length > 0) {
                          return null;
                        } else {
                          return "Ders adı boş olamaz";
                        }
                      },
                      onSaved: (kaydedilecekDeger) {
                        dersAdi = kaydedilecekDeger!;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          //"Dinamik Liste" tutan container
          Expanded(
            child: Container(
              color: Colors.green.shade200,
              child: Text("Lİste"),
            ),
          ),
        ],
      ),
    );
  }
}
