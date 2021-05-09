import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/responses/pokemonResponse.dart';

Widget pokemonTile(Pokemon item) {
  return ListTile(
    onTap: () {
      print(item.name);
    },
    title: Text(item.name),
    subtitle: Text(item.id),
    leading: CircleAvatar(
      child: Text(item.name.substring(0, 1)),
    ),
    trailing: Icon(Icons.arrow_forward_ios),
    // trailing: Image.network(item.image),
  );
}
