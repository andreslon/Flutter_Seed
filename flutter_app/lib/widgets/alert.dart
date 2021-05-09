import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void openAlert(context, title, body) {
  showDialog(
      context: context,
      builder: (_) => new AlertDialog(
            title: new Text(title),
            content: new Text(body),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Accept'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
}
