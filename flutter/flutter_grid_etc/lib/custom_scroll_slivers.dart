import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/galatasaray.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: sabitListeElemanlari(),
        ),
      ],
    );
  }

  SliverChildListDelegate sabitListeElemanlari() {
    return SliverChildListDelegate(
      [
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.amber,
          alignment: Alignment.center,
        ),
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 2",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.teal,
          alignment: Alignment.center,
        ),
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 3",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.grey,
          alignment: Alignment.center,
        ),
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 4",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.green,
          alignment: Alignment.center,
        ),
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 5",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.blue,
          alignment: Alignment.center,
        ),
        Container(
          height: 100,
          child: Text(
            "Sabit Liste Elemanı 6",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.indigo,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
