

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';

class History extends StatefulWidget {
  @override
  _History createState() => new _History();
}

class _History extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
                child:Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text("History",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,),)
                    ],
                  ),
                )
            ),
            Container(
              height: 100,
              child: new Card(
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        leading: new Image.asset(
                          "assets/images/Asanas/3.png",
                          fit: BoxFit.cover,
                          width: 100,
                        ),

                        title: new Text(
                          "data",
                          style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text("",
                                  style: new TextStyle(
                                      fontSize: 13.0, fontWeight: FontWeight.normal)),

                            ]),
                        //trailing: ,
                        onTap: () {
                        },
                      )
                    ],
                  )),
            ),
            Container(
              height: 100,
              child: new Card(
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        leading: new Image.asset(
                          "assets/images/Asanas/3.png",
                          fit: BoxFit.cover,
                          width: 100,
                        ),

                        title: new Text(
                          "data",
                          style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text("",
                                  style: new TextStyle(
                                      fontSize: 13.0, fontWeight: FontWeight.normal)),

                            ]),
                        //trailing: ,
                        onTap: () {
                        },
                      )
                    ],
                  )),
            ),


          ],
        ),
      ),
    );
  }
}

