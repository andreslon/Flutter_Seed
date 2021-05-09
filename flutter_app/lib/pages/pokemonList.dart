import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/responses/pokemonResponse.dart';
import 'package:flutter_app/widgets/pokemonTile.dart';

class PokemonList extends StatefulWidget {
  PokemonList({Key key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  List<Pokemon> pokemons = [
    Pokemon(name: 'Juan', url: 'Rojas'),
    Pokemon(name: 'Andres', url: 'sdadas')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemons'),
      ),
      body: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          final item = pokemons[index];
          return Dismissible(
            key: Key(item.id),
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            onDismissed: (direction) {
              if (pokemons.contains(item)) {
                setState(() {
                  pokemons.remove(item);
                });
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("$item deleted")));
            },
            child: pokemonTile(item),
          );
        },
      ),
    );
  }
}
