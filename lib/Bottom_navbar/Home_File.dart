import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}
class _Home extends State<Home> {
  double pageOffset = 0;
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child:Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Card(
                      child: carouselSlider = CarouselSlider(
                        height: 280.0,
                        initialPage: 0,
                        autoPlay: true,
                        reverse: false,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        pauseAutoPlayOnTouch: Duration(seconds: 10),
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        items: imgList.map((imgUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Image.network(
                                  imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.brown[800] : Colors.white,
                      ),
                    );
                  }),
                ),
                Container(
                    child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Text("Featured programs",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,),)
                        ],
                      ),
                    )
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child:Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Card(
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                          color: Color(0xffe5e6ea),
                                        ),
                                        child: Image.asset('assets/images/Chakra.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Wome Sofa",
                                            style: Theme.of(context).textTheme.title,
                                          ),
                                          Text(
                                            index.toString(),
                                            style: Theme.of(context).textTheme.subhead.apply(color: Colors.grey[500]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          )

                        );
                  }),
                ),
                Container(
                    child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Text("Our Plans",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,),)
                        ],
                      ),
                    )
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Chakra.png',fit:BoxFit.cover ,),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            )

                        );
                      }),
                ),
                Container(
                    child:Padding(
                      padding: EdgeInsets.all(20),
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
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Mudra.png',fit:BoxFit.cover ,),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            )

                        );
                      }),
                ),
                Container(
                    child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Text("Keep Calm Your Day",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,),)
                        ],
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Yoga.png',fit:BoxFit.cover ,),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            )

                        );
                      }),
                ),
                Container(
                    child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Text("Mudra's",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,),)
                        ],
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Mudra.png',fit:BoxFit.cover ,),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            )
                        );
                      }),
                ),
               ],
            ),
          ),
          ),
        );
  }
}
