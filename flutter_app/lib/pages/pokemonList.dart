import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/responses/pokeApiResponse.dart';
import 'package:flutter_app/core/models/responses/pokemonResponse.dart';
import 'package:flutter_app/core/services/pokemonService.dart';
import 'package:flutter_app/widgets/pokemonTile.dart';

import 'package:http/http.dart' as http;

class PokemonList extends StatefulWidget {
  PokemonList({Key key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  Future<List<Pokemon>> pokemons;
  PokemonService pokemonService = new PokemonService();
  @override
  void initState() {
    super.initState();
    pokemons = pokemonService.getPokemons(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pokemons,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              final item = snapshot.data[index];
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
                  if (snapshot.data.contains(item)) {
                    setState(() {
                      snapshot.data.remove(item);
                    });
                  }
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("$item deleted")));
                },
                child: pokemonTile(item),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error Loading Pokemons'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
