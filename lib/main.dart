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
            GestureDetector(
              onTap: (){
                print('tapped gesture');
              },
              child: Icon(Icons.circle),

            ),
            InkWell(
              onTap: (){
                print('tapped inkwell');
              },
              child: Text('tap............'),
              radius: 8,
              splashColor: Colors.red,
              highlightColor: Colors.blue,

            ),
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
                prefixIcon: Icon(Icons.add, color: Colors.red, size: 25,),
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
            Container(
              margin: EdgeInsets.only(left: 10,),
              padding: EdgeInsets.all(20),
              child: Text('Palestine',style: TextStyle(color: Colors.white, fontSize: 25),),
              alignment: Alignment.center,
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
                border: Border.all(
                  color: Colors.red,
                  width: 10,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 15,
                    offset: Offset(4, 5),
                  ),
                ],

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
