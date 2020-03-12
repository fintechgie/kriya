import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kriya_india/Bottom_navbar/Home_File.dart';
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
    Setting(),
    Search(),
    Edit(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

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
        title: Text('Kriya India',textAlign: TextAlign.right,style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
          fontSize: 30,
          fontStyle: FontStyle.normal,),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.black),
            onPressed: () {
            },
          ),
        ],
        backgroundColor: Colors.grey,
      ),

      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/images/Chakra.png",width: 30,),
              title: new Text('Features'),
              backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text('Yoga'),
              backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Medibenifits'),
              backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Food'),
              backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              title: Text('History'),
              backgroundColor: Colors.grey
          )
        ],
      ),
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
class Search extends StatelessWidget {
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
class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: Text(
              "dbsh",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            color: Colors.yellow,
          )),
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


