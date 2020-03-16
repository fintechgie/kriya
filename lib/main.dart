import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kriya_india/Bottom_navbar/Food_File.dart';
import 'package:kriya_india/Bottom_navbar/History_File.dart';
import 'package:kriya_india/Bottom_navbar/Home_File.dart';
import 'package:kriya_india/Bottom_navbar/Medifits_File.dart';
import 'package:kriya_india/Bottom_navbar/Yoga_File.dart';
import 'package:kriya_india/Nav_Bar.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: MyHomePage(),
        builder: (BuildContext context) => BottomNavigationBarProvider(),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePage createState() =>
      _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentPage=0;
  var currentTab = [
    Home(),
    Yoga(),
    Medifits(),
    Food(),
    History(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    String title="Kriya India";

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
        title:Center( child:Text(title.toUpperCase(),style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .1),
          fontSize: 25,
          fontStyle: FontStyle.normal,),
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.black),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.search,color: Colors.black),
            onPressed: () {
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),

      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/images/features.png",width: 30,),
              title: new Text('Features',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
              icon:new Image.asset("assets/images/yoga_ico.png",width: 30,),
              title: new Text('Yoga',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/images/medibenifits.png",width: 30,),
              title: Text('Medibenifits',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/images/food.png",width: 30,),
              title: Text('Food',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/images/history.png",width: 30,),
              title: Text('History',style: TextStyle(color: Colors.black),),
          )
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}


