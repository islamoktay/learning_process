import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokedex.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  String url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  late Pokedex pokedex;

  Future<Pokedex> pokemonlariGetir() async {
    var response = await http.get(Uri.parse(url));
    var decodedJson = json.decode(response.body);
    pokedex = Pokedex.fromJson(decodedJson);

    return pokedex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ppkedex"),
      ),
      body: FutureBuilder(
        future: pokemonlariGetir(),
        builder: (context, AsyncSnapshot<Pokedex> gelenPokedex) {
          if (gelenPokedex.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (gelenPokedex.connectionState == ConnectionState.done) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Text(gelenPokedex.data!.pokemon[index].name);
                });
          } else {
            return Text("çalışmadı");
          }
        },
      ),
    );
  }
}
