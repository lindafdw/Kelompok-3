import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:vscode_android/signup.dart';


class AwalPage extends StatefulWidget {
  @override
  AwalPageState createState() => AwalPageState();
}

class AwalPageState extends State<AwalPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                Image(image: AssetImage('assets/images/bg.jpg'),),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Hidup Bebas dari Masalah Pribadi,', style: TextStyle(color: Colors.pinkAccent, fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Tinggal Selangkah Lagi', style: TextStyle(color: Colors.pinkAccent, fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.width * 0.10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.pinkAccent,
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Masuk', style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Padding(
                  padding: EdgeInsets.symmetric( horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('atau', style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                ),
                Padding(
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text('Daftar', style: TextStyle(color: Colors.pinkAccent,fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  padding: EdgeInsets.symmetric( horizontal: 50),
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Text('Buat akun > ',
                  //         style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold)
                  //
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
