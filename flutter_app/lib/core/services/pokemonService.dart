import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_app/core/models/responses/pokeApiResponse.dart';

Future<PokeApiResponse> getPokemons(context) async {
  var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);
    PokeApiResponse result = new PokeApiResponse.fromJson(jsonData);
    return result;
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Error getting pokemons")));
  }
  return null;
}
