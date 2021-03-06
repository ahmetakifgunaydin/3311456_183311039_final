import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashBoard extends StatefulWidget {
  const GridDashBoard({Key? key}) : super(key: key);

  @override
  State<GridDashBoard> createState() => _GridDashBoardState();
}

class _GridDashBoardState extends State<GridDashBoard> {
  Items item1 = new Items(
    title: "Ana sayfa",
    subtitle: "Dashboard",
    event: "",
    img: "assets/home.png",
  );

  Items item2 = new Items(
    title: "Üretim",
    subtitle: "Balık,Tahıl ",
    event: "",
    img: "assets/uretim.png",
  );
  Items item3 = new Items(
    title: "Stok",
    subtitle: "Stok raporu",
    event: "",
    img: "assets/stok.png",
  );
  Items item4 = new Items(
    title: "Enerji Tüketimi",
    subtitle: "Elektrik enerjisi",
    event: "",
    img: "assets/energy.png",
  );
  Items item5 = new Items(
    title: "Hava Durumu",
    subtitle: "Detaylı hava durumu raporu",
    event: "sıcaklık,nem,rüzgar hızı",
    img: "assets/cloud.png",
  );
  Items item6 = new Items(
    title: "İletişim",
    subtitle: "İletişim adreslerimiz",
    event: "e posta , tel",
    img: "assets/phone.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 75,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items(
      {required this.title,
      required this.subtitle,
      required this.event,
      required this.img});
}
