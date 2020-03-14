

import 'package:flutter/material.dart';
import 'package:kriya_india/Nav_Bar.dart';

class Yoga extends StatefulWidget {
  @override
  _Yoga createState() => new _Yoga();
}

class _Yoga extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(padding:EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 2 / 2),
                itemBuilder: (ctx, i) {
                  return new GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                offset: Offset(0, 3),
                                blurRadius: 3.0),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child:Center(
                                  child: Image.asset('assets/images/8.png'),
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child:Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Yoga",
                                    ),

                                  ],
                                ),

                              )

                            ),
                          ],
                        ),
                      ),
                      onTap:(){
                        debugPrint("${i}");
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new Nav_Bar()));
                      }
                  );

                },
              ),
            ),
          ],
        ),
      )
      

    );
  }
}