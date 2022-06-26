import 'package:flutter/material.dart';
import 'package:online_sera/login_page.dart';

void main() {
  runApp(MaterialApp(home: openpage()));
}

class openpage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<openpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 600),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.centerRight,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return LoginPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/arkaplan.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(60.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Online Sera",
              style: TextStyle(
                color: Colors.green[900],
                /* color: Colors.purple.withOpacity(0.95),*/
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/sera.png"),
            ),
          ),
        ),
      ),
    );
  }
}
