import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Italian extends StatefulWidget {
  Italian ({Key, key}) : super (key:key);

  @override
  _ItalianState createState() => _ItalianState();
}

_translateWord(final String english) async{
  final translator = new GoogleTranslator();
  var translation = await translator.translate(english, to: 'pl');
  return translation;
}

class _ItalianState extends State<Italian> {

  Widget translateCard(String english) {
    var italianWord = _translateWord;

    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        padding: EdgeInsets.all(50),
        color: Colors.red,
        child: Text(english),
      ),
      back: Container(
        padding: EdgeInsets.all(50),
        color: Colors.blue,
        child: Text(italianWord.toString()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text('Italian')
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              translateCard("hello"),
              translateCard("bye"),
              translateCard("tree")
            ]
        ),
      ),
    );
  }
}