import 'package:flutter/material.dart';

class Duvidas extends StatefulWidget {
  const Duvidas({Key? key}) : super(key: key);

  @override
  _DuvidasState createState() => _DuvidasState();
}

class _DuvidasState extends State<Duvidas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Dúvidas"),),
    );
  }
}
