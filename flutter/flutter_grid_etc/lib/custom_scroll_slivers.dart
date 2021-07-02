import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/galatasaray.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: sabitListeElemanlari(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(7),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
              childCount: 6,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
            delegate: sabitListeElemanlari(),
            itemExtent: 200,
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          itemExtent: 50,
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

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 30),
      ),
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      margin: EdgeInsets.all(1),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
