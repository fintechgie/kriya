import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}
class _Home extends State<Home> {
  double pageOffset = 0;
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/images/Asanas/1.png',
    'assets/images/Asanas/2.png',
    'assets/images/Asanas/3.png',
    'assets/images/Asanas/4.png',
    'assets/images/Asanas/5.png'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.all(16) ,
                  child:Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child:Padding(
                        padding:EdgeInsets.all(5) ,
                        child: carouselSlider = CarouselSlider(
                          height: 300.0,
                          initialPage: 0,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayAnimationDuration: Duration(milliseconds: 3000),
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
                                  child: Image.asset(imgUrl,fit: BoxFit.fill,),
                                );
                              },
                            );
                          }).toList(),
                        ),

                      )


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
                      padding: EdgeInsets.all(10),
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
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child:Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Card(
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Image.asset('assets/images/2.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Corporate Mind",
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
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("Nutrition Plans",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,),)
                        ],
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/1.png',),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            )

                        );
                      }),
                ), Container(
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
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Asanas/4.png',fit:BoxFit.cover ,),
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
                      padding: EdgeInsets.all(10),
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
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Asanas/6.png',fit:BoxFit.cover ,),
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
                      padding: EdgeInsets.all(10),
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
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:12,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Image.asset('assets/images/Asanas/17.png',fit:BoxFit.fill ,),
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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.grey[200],
        primarySwatch: Colors.blue,
      ),
      home: ItCrowdPage(),
    );
  }
}



const SCALE_FRACTION = 0.7;
const FULL_SCALE = 1.0;
const PAGER_HEIGHT = 200.0;

class ItCrowdPage extends StatefulWidget {
  @override
  _ItCrowdPageState createState() => _ItCrowdPageState();
}

class _ItCrowdPageState extends State<ItCrowdPage> {
  double viewPortFraction = 0.5;

  PageController pageController;

  int currentPage = 2;

  List<Map<String, String>> listOfCharacters = [{'image': "assets/richmond.png", 'name': "Richmond"},
    {'image': "image/Chakra.png",'name': "Roy"},
    {'image': "image/Chakra.png", 'name': "Moss"},
    {'image': "image/Chakra.png", 'name': "Douglas"},
    {'image': "image/Chakra.png", 'name': "Jen"}
  ];

  double page = 2.0;

  @override
  void initState() {
    pageController =
        PageController(initialPage: currentPage, viewportFraction: viewPortFraction);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          "The IT Crowd",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            height: PAGER_HEIGHT,
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is ScrollUpdateNotification) {
                  setState(() {
                    page = pageController.page;
                  });
                }
              },
              child: PageView.builder(
                onPageChanged: (pos) {
                  setState(() {
                    currentPage = pos;
                  });
                },
                physics: BouncingScrollPhysics(),
                controller: pageController,
                itemCount: listOfCharacters.length,
                itemBuilder: (context, index) {
                  final scale =
                  max(SCALE_FRACTION, (FULL_SCALE - (index - page).abs()) + viewPortFraction);
                  return circleOffer(
                      listOfCharacters[index]['image'], scale);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              listOfCharacters[currentPage]['name'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),

        ],
      ),
    );
  }

  Widget circleOffer(String image, double scale) {

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: PAGER_HEIGHT * scale,
        width: PAGER_HEIGHT * scale,
        child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: CircleBorder(side: BorderSide(color: Colors.grey.shade200, width: 5)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
