import 'package:flutter/material.dart';
import 'package:hackerhike/basic1.dart';
import 'package:hackerhike/basic2.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer:Drawer(
          backgroundColor: Colors.grey.shade50,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Divider(thickness: 2,),
              ListTile(
                leading:Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward),
                title: Text("Kerala"),
              ),
              Divider(thickness: 2,),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          actions: [
            Container(
              child:IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: (){
                  print("search pressed");
                  // search bar
                },
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child:IconButton(
                icon: Icon(Icons.settings),
                onPressed: (){
                  print("setting  pressed");
                  // search bar
                },
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ],
         ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
           print("Chat Bot");
          },
          label: Text('Chat'),

          icon: Icon(Icons.chat_bubble_rounded),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.pinkAccent,
            child:Column(
              children: [
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                Basic(),
                Divider(thickness: 2,color: Colors.white,),
                Basic2(),

              ],
            )
          ),
        ),
      ),
    );
  }
}
