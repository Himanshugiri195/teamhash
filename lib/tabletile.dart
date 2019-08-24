import 'colour.dart';
import 'package:flutter/material.dart';
import 'analysis.dart';
import 'map.dart';
import 'doctor.dart';
import 'policy.dart';

class tabletile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                            onTap: () => print('hello'),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                                  color: Colors.pink.withOpacity(.2),
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.local_hospital,size: 90,color: Colors.blue,),
                              Text("Medicine",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                        new InkWell(
                            onTap: () => print('hello'),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                                  color: Colors.pink.withOpacity(.2),
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.save,size: 90,color: Colors.blue,),
                              Text("Sos",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>policyclass() ),),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                                  color: midcircleleft.withOpacity(.3),
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.note_add,size: 90,color: Colors.red,),
                              Text("Policy",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                    InkWell(
                            onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>mapclass()),),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                                  color: midcircleleft.withOpacity(.3),
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.location_on,size: 90,color: Colors.green,),
                              Text("Maps",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppvoid()),                 ),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                                  color: midcircleleft.withOpacity(.3),
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.hourglass_empty,size: 90,color: Colors.blue,),
                              Text("Doctors",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                      InkWell(
                            onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageo()),
                  ),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                      color: midcircleleft.withOpacity(.3),
                                                  
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.graphic_eq,size: 90,color: Colors.blue,),
                              Text("Analysis",style:TextStyle(fontSize: 30))
                            ],
                          )
                        ),
                      ),
                  ],
                )
              ],
            ),
    );
  }
  
}


class contacticon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
                            onTap: () => print('hello'),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                      
                                                  
                            
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              
                              Icon(Icons.mail,size: 30,color: Colors.blue,),
                              Text("Contact Us",style:TextStyle(fontSize: 20))
                            ],
                          )
                        ),
                      );
  }
  
}

class profilephoto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
                            onTap: () => print('hello'),
                            child: new Container(
                            width: 190.0,
                            height: 150.0,
                            decoration: new BoxDecoration(
                                      
                                                  
                            
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              
                              Icon(Icons.supervised_user_circle,size: 30,color: Colors.blue,),
                              
                            ],
                          )
                        ),
                      );
  }
  
}