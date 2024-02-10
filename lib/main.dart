import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.white54,),
        title: Text('First App', style: TextStyle(
          color: Colors.white70,
        ),),
        backgroundColor: Colors.black,
      ),

      /*
      body: Center(child: Text('Hello world Nahid Hello world Nahid,Hello world Nahid,Hello world Nahid,Hello world Nahid,',
        style: TextStyle(
          fontSize: 20,
          color: Colors.lightGreenAccent,
          backgroundColor: Color(0xffd43737),
          letterSpacing: 4,
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.clip,

        ),

      ),*/
      /*body: Image.network('https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
      ),*/
      body: Center(
          child: Image.asset(
        'images/cse.png',
        height: 300,
        width: 300,
        fit: BoxFit.contain,
      )),
    );
    throw UnimplementedError();
  }
}
