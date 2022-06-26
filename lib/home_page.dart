import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homepageState();
}

class _homepageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ana Sayfa"),
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
          child: Text("Sera"),
        )));
  }
}
