import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: 0.5,
                offset: Offset(5, 5),
                blurRadius: 10,
              ),
            ],
            //borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 10,
              style: BorderStyle.solid,
            ),
            color: Colors.teal[100 * ((index + 1) % 9)],
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/galatasaray.jpg"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Merhaba Flutter $index',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
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
