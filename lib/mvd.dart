import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hackerhike/jsonpage.dart';

class Mvd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/pic1.jpg",
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,),
            IconButton(
              padding:EdgeInsets.only(left:20,top:40),
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))
                ),
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height)/2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height:35),
                      Divider(thickness:2,color: Colors.black,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return JsonPage();
                          }));
                        },
                        child: Container(
                          color:Colors.white,
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Icon(Icons.ac_unit),
                                Text('Production of Document'),
                                Icon(Icons.arrow_forward)
                              ])

                        ),
                      ),
                      Divider(thickness:2,color: Colors.black,),
                      
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


