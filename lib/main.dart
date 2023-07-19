import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(bugunNeYesem());
}

class bugunNeYesem extends StatelessWidget {
  const bugunNeYesem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'İstenci Esnaf Lokantası',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(5)),
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.yellow),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(5)),
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.red),
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(5)),
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green),
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
