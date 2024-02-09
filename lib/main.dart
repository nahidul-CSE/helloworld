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

        )),
    );
    throw UnimplementedError();
  }
}
