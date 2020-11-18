import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  @override
  SurveyPageState createState() => SurveyPageState();
}

class SurveyPageState extends State<SurveyPage> {
  var alamat = '';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah asal'),
        backgroundColor: Colors.pinkAccent,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Dari mana kota asalmu?',
                ),
                onChanged: (s){
                  alamat = s;
                },
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop(alamat);
                },
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
    );
  }
}