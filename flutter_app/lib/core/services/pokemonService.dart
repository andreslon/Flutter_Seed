import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/api_path.dart';
import 'package:flutter_app/core/models/responses/pokemonResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_app/core/models/responses/pokeApiResponse.dart';

Future<List<Pokemon>> getPokemons(context) async {
  var url = Uri.parse(pokeApiUrl);
  final response = await http.get(url);
  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);
    PokeApiResponse pokeApiResponse = new PokeApiResponse.fromJson(jsonData);
    return pokeApiResponse.results;
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Error getting pokemons")));
  }
  return null;
}
