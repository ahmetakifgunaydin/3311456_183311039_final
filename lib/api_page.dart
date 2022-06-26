import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text('Hoşgeldiniz'),
        ),
        body: apisayfasi(),
      ),
    );
  }
}

class apisayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Image.asset('assets/images/havadurumu.PNG')),
          Expanded(child: Image.asset('assets/images/doviz.jpg')),
        ],
      ),
    );
  }
}
