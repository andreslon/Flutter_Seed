import 'package:flutter/material.dart';
import 'package:flutter_app/pages/pokemonList.dart';

class DragonBallList extends StatefulWidget {
  DragonBallList({Key key}) : super(key: key);

  @override
  _DragonBallListState createState() => _DragonBallListState();
}

class _DragonBallListState extends State<DragonBallList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                appBar: AppBar(
                                  title: Text('Pokemons'),
                                ),
                                body: PokemonList(),
                              )));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.ad_units),
                    SizedBox(
                      width: 5,
                    ),
                    Text('View Pokemons')
                  ],
                ))
          ],
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/05/dia-goku.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/05/dia-goku.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/05/dia-goku.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/05/dia-goku.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/05/dia-goku.jpg'),
        ),
      ],
    );
  }
}
