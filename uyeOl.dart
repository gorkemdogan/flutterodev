import 'package:flutter/material.dart';

class UyeOl extends StatefulWidget {
  @override
  _UyeOlState createState() => _UyeOlState();
}

class _UyeOlState extends State<UyeOl> {
  String email;
  String sifre;
  String sifre2;
  final _karsiKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Form(
        key: _karsiKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: "Email:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                onSaved: (value) {
                  email = value;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: "Kullanıcı Adı:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: "Şifre:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                onSaved: (value) {
                  sifre = value;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: "Şifre Tekrar:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                onSaved: (value) {
                  sifre2 = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Vazgeç"),
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                  RaisedButton(
                    child: Text("Kaydol"),
                    textColor: Colors.blue,
                    onPressed: () {
                      _karsiKey.currentState.save();
                      debugPrint("Email : $email Şifre : $sifre");
                      if (sifre == sifre2) {
                        Navigator.pushNamed(context, "/");
                      }
                      if (sifre != sifre2) {
                        debugPrint("Şifreler Aynı değil");
                      } else {}
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
