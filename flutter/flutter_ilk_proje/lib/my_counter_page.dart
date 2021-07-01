import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({ Key? key }) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhome build calıstı');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('buton tıklandı ve sayac degeri $_sayac');
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basılma miktarı',
      style: TextStyle(fontSize: 24),
    );
  }
}