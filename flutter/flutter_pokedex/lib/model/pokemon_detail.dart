import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokedex.dart';

// ignore: must_be_immutable
class PokemonDetail extends StatelessWidget {
  PokemonDetail({required this.pokemon, Key? key}) : super(key: key);

  Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          pokemon.name,
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height * (2 / 3),
            width: MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              elevation: 6,
              child: Text(pokemon.name),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: pokemon.img,
              child: Container(
                child: Image.network(pokemon.img, fit: BoxFit.contain),
                height: 200,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
