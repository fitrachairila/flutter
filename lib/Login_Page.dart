import 'package:flutter/material.dart';
import 'Home_Page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
//  String akun_email = 'fitrachairila@gmail.com';
//  String nama = 'Fitra Chairil Akbar';
//  String password = 'pitbar192';

  @override
  _LoginPageState createState() => new _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 45.0),
              child: Image.asset("Gambar/flutter.png"),
            ),
          ]),
    );

    final email = TextFormField(
      controller: ctrl1,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Masukan Email Anda',
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );

    final password = TextFormField(
      controller: ctrl2,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Masukan Password',
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.fromLTRB(250, 0, 10, 0),
      child: RaisedButton(
          padding: EdgeInsets.fromLTRB(0.0, .0, 0.0, 0.0),
          color: Colors.lightBlueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Text(
            'M a s u k',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            if (ctrl1.text == "admin" && ctrl2.text == "admin") {
              Navigator.of(context).pushNamed(HomePage.tag);
            } else {
              AlertDialog(
                  title: Text('Warning!'),
                  content: const Text('Username/Password Kamu salah'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }
                    )
//              final snackBar = SnackBar(content: Text('Username/Password Kamu salah'));
//
//         Scaffold.of(context).showSnackBar(snackBar);
                  ]);
            }
          }),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            Padding(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
            ),
            email,
            SizedBox(width: 15),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
            ),
            password,
            Padding(padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0)),
            loginButton,
            Padding(padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0)),
          ],
        ),
      ),
    );
  }
}
