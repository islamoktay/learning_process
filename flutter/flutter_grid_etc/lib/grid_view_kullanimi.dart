import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: Text(
              'Merhaba Flutter',
              textAlign: TextAlign.center,
            ),
          );
        });
  }

  GridView gridViewExtentKullanimi() {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  GridView gridviewCountKullanimi() {
    return GridView.count(
      crossAxisCount: 3,
      reverse: true,
      primary: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            'Merhaba Flutter',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
