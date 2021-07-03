import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation İşlemleri'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade300,
              ),
              child: Text(
                'Kırmızı Sayfaya Git IOS',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade200,
              ),
              child: Text(
                'Kırmızı Sayfaya Git Android',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
