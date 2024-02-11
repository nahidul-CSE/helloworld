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
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),
          Text('Column'),

          Column(
            children: [
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              Text('Row'),
              ElevatedButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Hi Nahid from Alert'),
                    content: Text('Study Hard'),
                    actions: [
                      ElevatedButton(onPressed: (){

                      }, child: Text('cancel')),
                    ],
                  );
                });
              }, child: Text('Click')),

            ],
          ),
        ],

      ),




    );
    throw UnimplementedError();
  }
}
