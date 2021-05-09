import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(body: loginBody()));
  }
}

Widget loginBody() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://connects.tiao.world/build/assets/AppBundle/img/placeholders/backgrounds/login.b5a57a73.jpg'))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: loginFields(),
      )));
}

List<Widget> loginFields() {
  return [
    Text(
      'Sign In',
      style: TextStyle(color: Colors.white, fontSize: 30),
    ),
    Container(
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'User', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      padding: EdgeInsets.all(15),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      padding: EdgeInsets.all(15),
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.login),
              SizedBox(
                width: 5,
              ),
              Text('Sign In')
            ],
          )),
    )
  ];
}
