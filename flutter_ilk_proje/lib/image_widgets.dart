import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://cdn1.ntv.com.tr/gorsel/35dnJ1DR4kmB2s9toszlag.jpg?width=952&height=540&mode=both&scale=both';
    String _logoUrl =
        'https://1.bp.blogspot.com/-6Dhv6BWqXQ8/XyQYrIE-zgI/AAAAAAAALeA/-NalhZSiLMkDQ6nLiLMEOJIIV-LQAqvPgCLcBGAsYHQ/s512/Galatasaray%2Blogo%2Bwid10.png';
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red.shade200,
            height: 150,
            width: 150,
            child: Image.asset(
              'assets/images/galatasaray_resim.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
              color: Colors.red.shade200,
              height: 150,
              width: 150,
              child: Image.network(
                _imgURL,
                fit: BoxFit.cover,
              )),
          Container(
            color: Colors.red,
            height: 150,
            width: 150,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              backgroundImage: NetworkImage(_logoUrl),
            ),
          ),
        ],
      ),
    );
  }
}
