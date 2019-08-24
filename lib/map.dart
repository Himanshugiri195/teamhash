import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart' show LatLng;


class mapclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(' Maps')),
        body: new FlutterMap(
                              options: new MapOptions(
                                            center: new LatLng(13.0827, 80.2707), 
                                              minZoom: 5.0
                                                      ),
                              layers: [
                                        new TileLayerOptions(
                                                            urlTemplate:
                                                                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                                            subdomains: ['a', 'b', 'c']
                                                            ),
                              ]
                             ),
          );
  }
}
