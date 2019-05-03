import 'package:flutter/material.dart';
import 'Login_Page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
//      decoration: BoxDecoration(
//          gradient: LinearGradient(
//        colors: [
//          Colors.blue,
//          Colors.lightBlueAccent,
//        ],
//      )),
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            )),
      ]),
    );

    final CekSaldo = Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
          //Navigator.of(context).pushNamed(HomePage.tag);
        padding: EdgeInsets.all(0),
        color: Colors.lightBlueAccent,
        child: Text('Cek Saldo', style: TextStyle(color: Colors.white)),
      ),
    );

    final Transfer = Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          //Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(0),
        color: Colors.lightBlueAccent,
        child: Text('Transfer', style: TextStyle(color: Colors.white)),
      ),
    );

    final Penarikan = Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          //Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(0),
        color: Colors.lightBlueAccent,
        child: Text('Penarikan', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            body, Padding (padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),),
            CekSaldo, Padding (padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),),
            Transfer, Padding (padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),),
            Penarikan, Padding (padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),),
          ],
        ),
      ),
    );
  }
}
