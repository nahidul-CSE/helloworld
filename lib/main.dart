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
        //crossAxisAlignment: CrossAxisAlignment.end,
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
      /*showModalBottomSheet(context: context, builder: (context){
        return Column(
          children: [
            Text('Text from bottom Sheet')
          ],
        ),
      });*/
              ElevatedButton(onPressed: (){
                showModalBottomSheet(
                  isDismissible: false,
                    backgroundColor: Colors.lightBlue,
                    context: context, builder: (context){
                  return Column(
                    children: [
                      Text('Text from Modal Sheet11111111111111111111111',),
                      Text('Text from Modal Sheet 2'),
                      RichText(text: TextSpan(
                        text: 'Please Accept the ',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '& Conditions',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 25,
                            ),
                          ),
                        ],

                      ),),
                    ],
                  );
                });
              }, child: Text('Tap')),

            ],
          ),
        ],

      ),




    );
    throw UnimplementedError();
  }
}
