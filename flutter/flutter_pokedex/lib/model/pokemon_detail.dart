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
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return dikeyBody(context);
        } else {
          return yatayBody(context);
        }
      }),
    );
  }

  Stack dikeyBody(BuildContext context) {
    return Stack(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  pokemon.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Height : " + pokemon.height,
                ),
                Text(
                  "Weight : " + pokemon.weight,
                ),
                Text(
                  "Types",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.type
                      .map((tip) => Chip(
                            label: Text(
                              tip,
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.deepOrange.shade300,
                          ))
                      .toList(),
                ),
                Text(
                  "Pre Evolution",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.prevEvolution != null
                      ? pokemon.prevEvolution!
                          .map((evolution) => Chip(
                                label: Text(
                                  evolution.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.deepOrange.shade300,
                              ))
                          .toList()
                      : [Text("İlk Hali")],
                ),
                Text(
                  "Next Evolution",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.nextEvolution != null
                      ? pokemon.nextEvolution!
                          .map((evolution) => Chip(
                                label: Text(
                                  evolution.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.deepOrange.shade300,
                              ))
                          .toList()
                      : [Text("Son Hali")],
                ),
                Text(
                  "Weakness",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.weaknesses
                      .map((weakness) => Chip(
                            label: Text(
                              weakness,
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.deepOrange.shade300,
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Hero(
            tag: pokemon.img,
            child: Container(
              child: Image.network(pokemon.img, fit: BoxFit.contain),
              height: 130,
              width: 130,
            ),
          ),
        ),
      ],
    );
  }

  Widget yatayBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      width: MediaQuery.of(context).size.width - 20,
      height: MediaQuery.of(context).size.height * (3 / 4),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Hero(
              tag: pokemon.img,
              child: Container(
                child: Image.network(pokemon.img, fit: BoxFit.fill),
                height: 200,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    pokemon.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Height : " + pokemon.height,
                  ),
                  Text(
                    "Weight : " + pokemon.weight,
                  ),
                  Text(
                    "Types",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((tip) => Chip(
                              label: Text(
                                tip,
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.deepOrange.shade300,
                            ))
                        .toList(),
                  ),
                  Text(
                    "Pre Evolution",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.prevEvolution != null
                        ? pokemon.prevEvolution!
                            .map((evolution) => Chip(
                                  label: Text(
                                    evolution.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.deepOrange.shade300,
                                ))
                            .toList()
                        : [Text("İlk Hali")],
                  ),
                  Text(
                    "Next Evolution",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.nextEvolution != null
                        ? pokemon.nextEvolution!
                            .map((evolution) => Chip(
                                  label: Text(
                                    evolution.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.deepOrange.shade300,
                                ))
                            .toList()
                        : [Text("Son Hali")],
                  ),
                  Text(
                    "Weakness",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses
                        .map((weakness) => Chip(
                              label: Text(
                                weakness,
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.deepOrange.shade300,
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
