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
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade200,
                    child: Image.asset(
                      'assets/images/galatasaray_resim.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade200,
                      child: Image.network(
                        _imgURL,
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        backgroundImage: NetworkImage(
                          _logoUrl,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: _imgURL,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
