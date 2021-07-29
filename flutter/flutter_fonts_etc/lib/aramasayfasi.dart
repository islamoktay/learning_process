import 'package:flutter/material.dart';

class AramaSayfasi extends StatelessWidget {
  const AramaSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Center(
        child: ListView.builder(
            key: PageStorageKey<String>('keyArama'),
            itemExtent: 300,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  color: index % 2 == 0 ? Colors.orangeAccent : Colors.purple,
                  child: Center(child: Text("$index")),
                ),
              );
            }),
      ),
    );
  }
}
