import 'package:flutter/material.dart';
import 'package:online_sera/Widget/myDrawe.dart';

class vizyon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _vizyonState();
}

class _vizyonState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Colors.blueAccent,
                Colors.blueGrey,
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/manzara.jpg",
              width: 500.0,
              height: 600.0,
              fit: BoxFit.cover,
            ),
            Text(
              "\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry close. Lorem Ipsum has been the industry's unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, versions of Lorem Ipsum.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
