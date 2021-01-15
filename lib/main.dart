import 'package:flutter/material.dart';
import 'package:vscode_android/awal.dart';
import 'package:vscode_android/signup.dart';
import 'camera.dart';
import 'awal.dart';
import 'home_screen.dart';

void main() {
  var app = new MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'talk.it',
      // home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => AwalPage(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SignupPage.routeName: (context) => SignupPage(),
        CameraScreen.routeName: (context) => CameraScreen()
      },
    );
  }
}
