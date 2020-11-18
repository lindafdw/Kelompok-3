import 'package:flutter/material.dart';
import 'survey.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var isiBeranda = [
    'Anda berasal dari ',
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('Beranda'),
          backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => SurveyPage()),
          ).then((value) {
            isiBeranda.add(value);
          });
      },
        child: Icon(Icons.add_location),
      ),
      body: ListView(
        children: isiBeranda.map((isi_beranda) {
          return Container(
            child: Text(isi_beranda),
            padding: EdgeInsets.all(10),
          );
        }).toList(),
       )
    );
  }
}