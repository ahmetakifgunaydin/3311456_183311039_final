import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /*Icon(Icons.add_card, color: Colors.blue, size: 100.0),*/
                  Image.asset(
                    'assets/sera.png',
                    width: 100,
                    color: Colors.green,
                  ),
                  Text(
                    "Online Sera",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white10,
                    Colors.blueGrey,
                  ]),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Anasayfa"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/mainpage");
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.warehouse_outlined),
            title: Text('Stok'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Gübre'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/gubre");
                },
              ),
              ListTile(
                title: Text('Balık Yemi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/yem");
                },
              ),
              ListTile(
                title: Text('Tohum'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/tohum");
                },
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.agriculture),
            title: Text('Üretim'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Balik'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/balik");
                },
              ),
              ListTile(
                title: Text('Tahıl'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/tahil");
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.energy_savings_leaf_outlined),
            title: Text('Enerji Tüketimi'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/enerji");
            },
          ),
          ListTile(
            leading: Icon(Icons.cloud_done_outlined),
            title: Text('Hava Durumu'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/havadurumu");
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Kurumsal'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Hakkımızda'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/hakkimizda");
                },
              ),
              ListTile(
                title: Text('Vizyonumuz/Misyonumuz'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/vizyonumuzmisyonumuz");
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.contact_phone_outlined),
            title: Text('İletişim'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/iletisim");
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Çıkış'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/LoginPage");
            },
          ),
        ],
      ),
    );
  }
}
