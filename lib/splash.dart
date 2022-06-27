import 'package:flutter/material.dart';
import 'package:online_sera/LocalAuth.dart';
import 'package:online_sera/add_name.dart';
import 'package:online_sera/controllers/db_helper.dart';
import 'package:online_sera/screens/g%C3%BCbre.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //
  DbHelper dbHelper = DbHelper();

  @override
  void initState() {
    super.initState();
    getName();
  }

  Future getName() async {
    String? name = await dbHelper.getName();
    if (name != null) {
      // user has entered a name
      // since name is also important and can't be null
      // we will check for auth here and will show , auth if it is on
      bool? auth = await dbHelper.getLocalAuth();
      if (auth != null && auth) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => FingerPrintAuth(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => gubre(),
          ),
        );
      }
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => AddName(),
        ),
      );
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      //
      backgroundColor: Colors.green,
      //
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
          padding: EdgeInsets.all(
            16.0,
          ),
        ),
      ),
    );
  }
}
