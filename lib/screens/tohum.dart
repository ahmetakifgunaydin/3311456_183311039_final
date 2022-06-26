import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class tohum extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tohumState();
}

class _tohumState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tohum"),
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
          child: Text("aqaaaa"),
        )));
  }
}
