import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/green_page.dart';
import 'package:flutter_navigator/orange_page.dart';
import 'package:flutter_navigator/red_page.dart';
import 'package:flutter_navigator/route_generate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSayfa(),
/*       routes: {
        "/redPage": (context) => RedPage(),
        "/": (context) => AnaSayfa(),
        "/orangePage": (context) => OrangePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text('Error'),
                ),
                body: Center(
                  child: Text('404'),
                ),
              )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
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
              onPressed: () async {
                int? _gelenSayi = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
                print("Ana sayfadaki sayı: $_gelenSayi");
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
                Navigator.of(context)
                    .push<int>(
                      MaterialPageRoute(
                        builder: (redContext) => RedPage(),
                      ),
                    )
                    .then((int? value) => debugPrint("Gelen sayı $value"));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade200,
              ),
              child: Text(
                'Kırmızı Sayfaya Git Android',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan.shade200,
              ),
              child: Text(
                'Maybe Pop Kullanımı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("evet pop olabilir");
                } else {
                  print("hayır olamaz");
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              child: Text(
                'Can Pop Kullanımı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => GreenPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text(
                'Push Replacement Kullanımı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/orangePage");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                'PushNamed Kullanımı',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
