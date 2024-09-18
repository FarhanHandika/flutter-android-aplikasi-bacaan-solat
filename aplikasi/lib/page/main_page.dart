import 'package:aplikasi/page/ayat_kursi_page.dart';
import 'package:aplikasi/page/bacaan_sholat_page.dart';
import 'package:aplikasi/page/niat_shalat_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NiatSholat()));
                  },
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/niat.jpeg"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Niat Shalat",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BacaanSholat()));
                  },
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/bg_doa.jpeg"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bacaan Shalat",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AyatKursi()));
                  },
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/bg_quran.jpeg"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ayat Kursi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
