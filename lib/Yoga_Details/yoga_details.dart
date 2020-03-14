

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kriya_india/Nav_Bar.dart';

class Yoga_Details extends StatefulWidget {
  @override
  _Yoga_Details createState() => new _Yoga_Details();
}

class _Yoga_Details extends State<Yoga_Details> {

  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
            backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
            value: 10.1,
            valueColor: AlwaysStoppedAnimation(Colors.green)),
      ),
    );

    final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0)),
      child: new Text(
        "\$cfsdfcsdkh" ,
        style: TextStyle(color: Colors.white),
      ),
    );



    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/Asanas/4.png"),
                fit: BoxFit.fill,
              ),
            )),
        Positioned(
          left: 8.0,
          top: 30.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black),
          ),
        )
      ],
    );

    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[

            topContent,
            Container(
                child:Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text("Daily Routine",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,),)
                    ],
                  ),
                )
            ),
            Container(
                child:Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Daily Routinef Daily Routinef Daily Routinef Daily Routinef Daily Routinef Daily Routinef Daily Routinef",softWrap: true,)
                )
            ),
            Divider(color: Colors.grey,),
            IntrinsicHeight(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.timelapse,
                          ),
                           SizedBox(width: 16,),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,

                             children: <Widget>[
                                Text("Duration"),
                                Text("60 Mins")
                              ],
                            ),


                        ],
                      ),
                    ),

                    VerticalDivider(color: Colors.grey,),
                    Container(
                      height: 60,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.show_chart,
                          ),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Text("Difficulty"),
                              Text("Intermediate")
                            ],
                          ),


                        ],
                      ),
                    ),

                  ],
                )),
            Divider(color: Colors.grey,),
            Container(
                child:Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text("Benifits",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,),)
                    ],
                  ),
                )
            ),
            SizedBox(height: 100,),
            Divider(color: Colors.grey,),
            Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () => {},
                  color: Colors.deepPurple,
                  child:
                  Text("TAKE THIS LESSON", style: TextStyle(color: Colors.white)),
            ))

          ],
        ),
      )
    );

  }
}