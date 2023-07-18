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
  @override
  Widget build(BuildContext context) {
    int corbaNo = 1;
    int yemekNo = 1;
    int tatliNo = 1;

    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.yellow),
                ),
                onPressed: () {
                  print('$corbaNo Numaralı Çorba Aktif Edildi');
                },
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.red),
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                ),
                onPressed: () {
                  print('$yemekNo Numaralı Yemek Aktif Edildi');
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green),
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                ),
                onPressed: () {
                  print('$tatliNo Numaralı Tatlı Aktif Edildi');
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
