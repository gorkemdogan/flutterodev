import 'package:flutter/material.dart';

class SifremiUnuttum extends StatefulWidget {
  @override
  _SifremiUnuttumState createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  String mail;
  final _mailKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Form(
        key: _mailKey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: "Mail adresini giriniz:",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder()),
                  onSaved: (value) {
                    mail = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Giriş"),
                  onPressed: () {
                    _mailKey.currentState.save();
                    debugPrint("$mail adresine şifre sıfırlama gönderildi");
                    Navigator.pushNamed(context, "/");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
