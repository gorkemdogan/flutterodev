import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName;
  String password;
  final _degerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _degerKey,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: "Kullanıcı Adı:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                onSaved: (value) {
                  userName = value;
                },
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
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Üye Ol"),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/uyeol");
                    },
                  ),
                  MaterialButton(
                    child: Text("Şifremi Unuttum"),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/sifremiunuttum");
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 43.0),
                child: MaterialButton(
                  highlightColor: Colors.blue,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Giriş"),
                  onPressed: () {
                    _degerKey.currentState.save();
                    debugPrint("userName : $userName password : $password");
                    if (userName == "demo" && password == "demo") {
                      debugPrint("Giriş başarılı");
                      Navigator.pushNamed(context, "/anaSayfa");
                    } else {
                      debugPrint("Kullanıcı adı ya da sifre hatalı");
                    }
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
