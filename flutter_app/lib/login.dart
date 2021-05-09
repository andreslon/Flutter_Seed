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
    Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'User', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
