import 'package:flutter/material.dart';

class ListViewLayoutProblemleri extends StatelessWidget {
  const ListViewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Layout Problemleri'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text('Başladı'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.yellow.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.yellow.shade300,
                  ),
                ],
              ),
            ),
            Text('Bitti'),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }

  Column columIcindeListe() {
    return Column(
      children: [
        Text('Başladı'),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.yellow.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.yellow.shade300,
              ),
            ],
          ),
        ),
        Text('Bitti'),
      ],
    );
  }
}
