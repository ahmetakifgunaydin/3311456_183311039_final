import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class tahil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tahilState();
}

class _tahilState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tahıl"),
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
