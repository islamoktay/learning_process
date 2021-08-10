import 'package:flutter/material.dart';
import 'package:flutter_http_json/local_json.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json ve Api'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LocalJsonKullanimi()));
                },
                child: Text("Local Json"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
