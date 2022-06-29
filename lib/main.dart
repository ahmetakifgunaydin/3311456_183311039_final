import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_sera/login_page.dart';
import 'package:online_sera/screens/OpenPage.dart';
import 'package:online_sera/screens/anlik_takip.dart';
import 'package:online_sera/screens/balik.dart';
import 'package:online_sera/screens/enerji.dart';
import 'package:online_sera/screens/gubre.dart';
import 'package:online_sera/screens/hakkimizda.dart';
import 'package:online_sera/screens/havadurumu.dart';
import 'package:online_sera/screens/iletisim.dart';
import 'package:online_sera/screens/rapor.dart';
import 'package:online_sera/screens/tahil.dart';
import 'package:online_sera/screens/tohum.dart';
import 'package:online_sera/screens/vizyonumuz_misyonumuz.dart';
import 'package:online_sera/screens/yem.dart';

import 'home_page.dart';

main() async {
  await Hive.initFlutter();
  await Hive.openBox('gubre');
  await Hive.openBox('yem');
  await Hive.openBox('tohum');

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC6L112UxiC1qdRRHsMlmpsbHL6og-mpj0",
          appId: "OnlineSera",
          messagingSenderId: "222944772018",
          projectId: "onlinesera-5dbb"));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => openpage(),
      "/OpenPage": (context) => LoginPage(),
      "/havadurumu": (context) => havadurumu(),
      "/home_page": (context) => HomePage(),
      "/gubre": (context) => gubre(),
      "/balik": (context) => balik(),
      "/tahil": (context) => tahil(),
      "/enerji": (context) => enerji(),
      "/yem": (context) => yem(),
      "/tohum": (context) => tohum(),
      "/hakkimizda": (context) => hakkimizda(),
      "/iletisim": (context) => iletisim(),
      "/rapor": (context) => rapor(),
      "/vizyonumuzmisyonumuz": (context) => vizyon(),
      "/mainpage": (context) => mainpage(),
    },
  ));
}

class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    havadurumu(),
    anlik_takip(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green[900],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined),
              label: "Hava Durumu",
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hourglass_empty_outlined),
              label: "Anlık Takip",
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ),
      );
}
