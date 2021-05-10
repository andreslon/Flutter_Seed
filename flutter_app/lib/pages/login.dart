import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/widgets/alert.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(body: loginBody(context)));
  }
}

Widget loginBody(context) {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://connects.tiao.world/build/assets/AppBundle/img/placeholders/backgrounds/login.b5a57a73.jpg'))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: loginFields(context),
      )));
}

List<Widget> loginFields(context) {
  TextEditingController user = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');
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
        controller: user,
        decoration: InputDecoration(
            hintText: 'User', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        controller: password,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password', fillColor: Colors.white, filled: true),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: ElevatedButton(
          onPressed: () {
            if (user.text != "" && password.text != "") {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            } else {
              openAlert(context, "Validation", 'Please fill information');
            }
          },
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
