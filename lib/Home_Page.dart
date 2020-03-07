
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';


import 'package:kriya_india/Bottom_navbar/Home_File.dart';
import 'package:kriya_india/Bottom_navbar/Yoga_File.dart';
import 'package:kriya_india/Nav_Bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    var currentTab = [
      Home(),
      Yoga(),
      Setting(),
      Setting(),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: new Image.asset("assets/images/Kriya_India.png"), // set your color here
            onPressed: () {
              Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Nav_Bar()));
            }
        ),
        title: Text(widget.title,textAlign: TextAlign.right,style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
          fontSize: 30,
          fontStyle: FontStyle.normal,),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: new AppDrawer(
           // Populate the Drawer in the next step.
      ),

      body: currentTab[currentPage],
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.accessibility, title: "Yoga"),
            TabData(iconData: Icons.directions_run, title: "Run"),
            TabData(iconData: Icons.shopping_cart, title: "Basket")
          ],
          onTabChangedListener: (position) {
            setState(() {
              print(position);
              currentPage = position;
            });
          },
        )
    );
  }

}
class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: new Text("DRAWER HEADER.."),
                decoration: new BoxDecoration(color: Colors.orange),
              ),
              new ListTile(
                title: new Text("Item => 1"),
                onTap: () {
//                  Navigator.pop(context);
//                  Navigator.push(context,
//                      new MaterialPageRoute(builder: (context) => new HomePage()));
                },
              ),
            ],
          )),
    );
  }
}



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          child: Text(
            "Yoga",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: Text(
              "Run",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            color: Colors.cyan,
          )),
    );
  }
}
