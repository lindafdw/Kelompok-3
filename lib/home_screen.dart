import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'camera.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  static const routeName = "/home_screen";
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .33,
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 202, 220, 1),
                // image: AssetImage('assets/images/small.jpg'),

                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/small.jpg')),

              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 70.0, right: 20.0),
                child: ListView(
                  children: <Widget>[
                    // Header - Greetings and Avatar
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Selamat Malam, Linda",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: Colors.pink
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://eadn-wc03-196922.nxedge.io/cdn/wp-content/uploads/2018/10/young-attractive-woman.jpg'),
                        )
                      ],
                    ),
                    Text("Bagaimana perasaanmu hari ini?\n",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.pink
                      ),
                    ),

                    Container(
                      height: 75,
                      // color: Colors.cyan,
                      color: Color.fromRGBO(252, 202, 220, 1),
                      // child: ClipRRect(
                      //   borderRadius: BorderRadius.circular(50),
                       child: GridView.count(
                          crossAxisCount: 5,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          primary: false,
                          children: <Widget>[
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/images/pain.jpg'),
                                      height: 40,),
                                    Text('Sangat \nBuruk',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        )),
                                  ],
                                )),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/images/sad.jpg'),
                                      height: 40,),
                                    Text('Buruk',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        )),
                                  ],
                                )),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/images/confused.jpg'),
                                      height: 40,),
                                    Text('Biasa',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        )),
                                  ],
                                )),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/images/happy.jpg'),
                                    height: 40,),
                                    Text('Baik',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        )),
                                  ],
                                )),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/images/happy-_1_.jpg'),
                                      height: 40,),
                                    Text('Sangat\nBaik',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        )),
                                  ],
                                )),
                          ]
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      height: 400,
                      color: Colors.white10,
                      child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                                elevation: 4,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                SvgPicture.network(
                                                  'https://www.flaticon.com/svg/static/icons/svg/3408/3408591.svg',
                                                  height: 90,
                                                ),
                                                Text('Artikel',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat Medium',
                                                      color: Color.fromRGBO(63, 63, 63, 1),
                                                    )),
                                              ],
                                            )),
                                        Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50)),
                                            elevation: 4,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Image(image: AssetImage('assets/images/woman.png'),
                                                    height: 90),
                                                Text('Profile',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat Medium',
                                                      color: Color.fromRGBO(63, 63, 63, 1),
                                                    )),
                                              ],
                                            )),
                                        Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50)),
                                            elevation: 4,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Image(image: AssetImage('assets/images/camera.png'),
                                                    height: 90),
                                                FlatButton(
                                                    child: Text(
                                                      'Kamera',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Montserrat Medium',
                                                        color: Color.fromRGBO(63, 63, 63, 1),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context, CameraScreen.routeName);
                                                    }),
                                              ],
                                            )),
                                        Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50)),
                                            elevation: 4,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Image(image: AssetImage('assets/images/heart-rate.png'),
                                                height: 90),

                                                  Text('Konseling',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat Medium',
                                                      color: Color.fromRGBO(63, 63, 63, 1),
                                                    )),
                                              ],
                                            )),
                    ],
                      ),
                    ),
                  ],
    ),
    ),
            ),
          ],
        ),
    );
  }
}