import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class French extends StatefulWidget {
  French({Key key}) : super(key: key);

  @override
  _FrenchState createState() => _FrenchState();
}

class _FrenchState extends State<French>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.edit),
          title: Text('French')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bonjour'),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text('Home'),
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}