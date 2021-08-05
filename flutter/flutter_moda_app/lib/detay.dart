import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final imgPath;
  const Detay({required this.imgPath, Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imgPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
