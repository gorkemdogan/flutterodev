import 'package:flutter/material.dart';
import 'package:uyeol/anasayfa.dart';
import 'package:uyeol/loginEkrani.dart';
import 'package:uyeol/sifremiunuttum.dart';
import 'package:uyeol/uyeol.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "/uyeol": (context) => UyeOl(),
        "/sifremiunuttum": (context) => SifremiUnuttum(),
        "/anaSayfa": (context) => Anasayfa(),
      },
    );
  }
}
