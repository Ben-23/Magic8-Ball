import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Magic 8 Ball'),
        centerTitle: true,
      ),
      body: MagicApp(),
    ),
  ));
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 70.0,
        ),
        Text(
          'Ask the magic 8 Ball any question',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Gotu-Regular'),
        ),
        SizedBox(
          height: 80.0,
        ),
        Image.asset('images/ball$num.png'),
        SizedBox(
          height: 60.0,
        ),
        RaisedButton(
            onPressed: () {
              setState(() {
                num = Random().nextInt(5) + 1;
              });
            },
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0)),
            padding: EdgeInsets.all(0.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(90, 17, 90, 17),
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xff000000), Color(0xff434343)])),
              child: Text(
                'Find Answer',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            )),
      ],
    );
  }
}
