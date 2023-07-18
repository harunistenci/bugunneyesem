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
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: yemekSayfasi(),
      ),
    );
  }
}

class yemekSayfasi extends StatelessWidget {
  const yemekSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/corba_1.jpg')),
          Expanded(child: Image.asset('assets/yemek_1.jpg')),
          Expanded(child: Image.asset('assets/tatli_1.jpg')),
        ],
      ),
    );
  }
}
