import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'awal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:  Colors.pinkAccent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'talk it',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AwalPage(),
    );
  }
}
