import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class anlik_takip extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _anliktakipState();
}

class _anliktakipState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("İletişim"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Colors.blueGrey, Colors.white]),
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
            child: Center(
          child: Text("uğur"),
        )));
  }
}
