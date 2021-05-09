import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andreslon',
      home: Login(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Ny App'),
            ),
            body: homeBody(context)));
  }
}

Widget homeBody(context) {
  return ListView(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Color.alphaBlend(Colors.amber, Colors.red),
            child: Text('Container 1'),
          ),
          Text('data 1'),
          Text('data 2'),
          ElevatedButton(
              onPressed: () {
                var t = DateTime.now();
                print('clicked' + t.toString());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.access_time),
                  SizedBox(
                    width: 5,
                  ),
                  Text('hola button')
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
