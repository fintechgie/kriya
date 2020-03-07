import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class Nav_Bar extends StatefulWidget {
  @override
  _Nav_Bar createState() => new _Nav_Bar();
}

class _Nav_Bar extends State<Nav_Bar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text('FAQs'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),Divider(color: Colors.grey,),
              ListTile(
                title: Text('Rate Us'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),Divider(color: Colors.grey,),
              ListTile(
                title: Text('About Us'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),Divider(color: Colors.grey,),
              ListTile(
                title: Text('Terms and Conditions'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),Divider(color: Colors.grey,),
              ListTile(
                title: Text('Privacy Policy'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),Divider(color: Colors.grey,),
              ListTile(
                title: Text('Disclaimer'),
                trailing:Icon(Icons.arrow_forward),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new IconButton(
                    icon: new Image.asset("assets/images/facebook.png"),
                    onPressed: () { /* Your code */ },
                  ),
                  new IconButton(
                    icon: new Image.asset("assets/images/instagram.png"),
                    onPressed: () { /* Your code */ },
                  ),
                  new IconButton(
                    icon: new Image.asset("assets/images/twitter.png"),
                    onPressed: () { /* Your code */ },
                  ),
                  new IconButton(
                    icon: new Image.asset("assets/images/youtube.png"),
                    onPressed: () { /* Your code */ },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text("Team of Kriya",style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
          fontSize: 20,
          fontStyle: FontStyle.normal,),),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Chakra.png'),
                    radius: 30,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3EH3H80b_LL5QnTLjSfxZru5AgrG9OZI08HoLumlXzVYWDPj',
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3EH3H80b_LL5QnTLjSfxZru5AgrG9OZI08HoLumlXzVYWDPj',
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3EH3H80b_LL5QnTLjSfxZru5AgrG9OZI08HoLumlXzVYWDPj',
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3EH3H80b_LL5QnTLjSfxZru5AgrG9OZI08HoLumlXzVYWDPj',
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 30,)

            ],
          ),
        ),
    ))
    );
  }
}
final String url = "http://chuteirafc.cartacapital.com.br/wp-content/uploads/2018/12/15347041965884.jpg";

class CustomAppBar extends StatelessWidget
    with PreferredSizeWidget{

  @override
  Size get preferredSize => Size(double.infinity, 230);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            boxShadow: [
              BoxShadow(
                  color: Colors.deepOrange,
                  blurRadius: 20,
                  offset: Offset(0, 0)
              )
            ]
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
//                Icon(Icons.arrow_back),

                Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(url)
                          )
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text("Kriya India", style:GoogleFonts.playfairDisplay( textStyle: TextStyle(color:Colors.brown[800], letterSpacing: .5),
                      fontSize: 30,
                      fontStyle: FontStyle.normal,),)
                  ],
                ),


              ],
            ),

            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height-70);
    p.lineTo(size.width, size.height);

    p.lineTo(size.width, 0);

    p.close();

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}