import 'colour.dart';
import 'tabletile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epic Services',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new maindesign(),
    );
  }
}

class maindesign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
            width: 600,
            height: 600,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerLeft,
                stops: [0,1],
                colors: [
                  lastcircleleft,
                  lastcircleright
                ]
              ),
              shape: BoxShape.circle,  
            ),
          ),
          top: -180,
          left: -150,
          ),
          Positioned(
            child: Container(
            width: 550,
            height: 550,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerLeft,
                stops: [0,1],
                colors: [
                  midcircleleft,
                  midcircleright
                ]
              ),
              shape: BoxShape.circle,
              
            ),
          ),
          top: -210,
          left: -180,
          ),
          Positioned(
            child: Container(
            width: 500,
            height: 500,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                stops: [0.2,1],
                colors: [
                  smallcircleleft,
                  smallcircleright
                ]
              ),
              shape: BoxShape.circle
            ),
            
            
          ),
          top: -280,
          left: -250,
          ) ,
          Positioned(
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(color: Colors.black12 )
              ,
            ),
            top: -200,
            left: -200,
          ),
          Positioned(
            child: tabletile(),
            top: 420,
            left: 17.5,
          )
          ,
          Positioned(
            child: contacticon(),
            top: 5,
            left: 20

            ,
          ),
          Positioned(
            child: profilephoto(),
            top: 5,
            right: -150,
          )
        ],
      )
    );
  }

}