import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class iletisim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _iletisimState();
}

class _iletisimState extends State {
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
          child: Text("aqaaaa"),
        )));
  }
}
