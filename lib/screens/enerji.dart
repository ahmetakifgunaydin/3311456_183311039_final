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
              "assets/energy_back.jpg",
              width: 500.0,
              height: 600.0,
              fit: BoxFit.cover,
            ),
            Text(
              "\n \n Beta sürümümüz ardında bu page de anlık olarak sistemde çekilen elektrik ısı ve diğer enerji türlerini takip etmenizi sağlayacak, ana plan olucak olup bu kısımdan enerji kesintisini ve sistemi kontrol edebileceğiz.",
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
