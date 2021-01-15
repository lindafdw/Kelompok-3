import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  @override
  SignupPageState createState() => SignupPageState();
  static const routeName = "/SignupPage";
}

class SignupPageState extends State<SignupPage> {
  var isiBeranda = '';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent),
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.pinkAccent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Daftar akun', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('talk.it', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                      ),
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Masukkan Nama',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                          onChanged: (s){
                            isiBeranda = s;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                      ),
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Masukkan Email',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50),),
                      Flexible(
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Masukkan Password',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50),),
                      Flexible(
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Konfirmasi Password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Masukkan Ulang Password',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Container(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Daftar', style: TextStyle(color: Colors.pinkAccent,fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
