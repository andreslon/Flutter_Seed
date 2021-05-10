import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dragonballList.dart';
import 'package:flutter_app/pages/pokemonList.dart';
import 'package:flutter_app/pages/welcome.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  BuildContext context;
  List<Widget> pages = [Welcome(), DragonBallList(), PokemonList()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andreslon'),
      ),
      body: pages[currentPage], //homeBody(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          print(index);
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Welcome'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Pokemons')
        ],
      ),
    );
  }
}
