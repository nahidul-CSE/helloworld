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
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Row(
            children: [
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
            ],
          ),
        ],

      ),





    );
    throw UnimplementedError();
  }
}
