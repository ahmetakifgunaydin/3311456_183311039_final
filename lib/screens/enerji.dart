import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class enerji extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _enerjiState();
}

class _enerjiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Enerji"),
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
