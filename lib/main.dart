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
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                print('You tap me');
              },
              onLongPress: (){
                print('Why long Pressed?');
              },
              child: Text('Click'),
              style: ElevatedButton.styleFrom( //new style add krlam
                backgroundColor: Colors.red,
                //foregroundColor: Colors.lightBlueAccent,
                minimumSize: Size(200, 50),
                elevation: 7, //shadow dekhabe click krle
                shadowColor: Colors.blueGrey,
                //padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20,),
                padding: EdgeInsets.only(top: 30, bottom: 20,),

                textStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
               return AlertDialog(
                 title: Text('Alert!!',),
               );
              }
              );
            }, child: Text('Text Button',),),
            IconButton(onPressed: (){}, icon: Icon(Icons.add),),
            TextField(
              //controller: ,
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text(
                      'You are typing', style: TextStyle(color: Colors.white,),
                    ),
                    backgroundColor: Colors.blue,
                  );

                },
                );
              },
              onChanged: (String input){
                print(input);
              },
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'Enter Data',
                label: Text('Type'),
                border: OutlineInputBorder(

                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      },
        
        child: Icon(Icons.add,),
        backgroundColor: Colors.blue,
        
        
      ),

    );
    throw UnimplementedError();
  }
}
