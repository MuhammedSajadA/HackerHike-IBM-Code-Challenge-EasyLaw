import 'package:flutter/material.dart';
import 'package:hackerhike/basic1.dart';
import 'package:hackerhike/basic2.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            print("Chat with us");
          },
          label: Text('Connect us'),

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