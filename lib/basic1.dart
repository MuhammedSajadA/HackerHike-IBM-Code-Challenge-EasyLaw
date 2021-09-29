import 'package:flutter/material.dart';
import 'package:hackerhike/fundamental.dart';

class Basic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Row(
            textDirection: TextDirection.ltr,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Fundamental();
                  }));
                },
                child: Container(
                    width: (MediaQuery.of(context).size.width)*(.65),
                    color:Colors.grey,
                    child: Column(
                      children: [
                        SizedBox(height: 35,),
                        Container(
                          child: Center(
                            child: Text("Fundamental",style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Zilla",
                            ),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          child: Center(
                            child: Text("Rights?...",style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: "Zilla",
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),

                      ],
                    )
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("image1");
                },
                child:Container(
                    width: (MediaQuery.of(context).size.width)*(.35),
                    color:Colors.white,
                    child:Image.asset("assets/images/pic2.jfif")
                ) ,
              )
            ],
          ),
        )
      ],
    );
  }
}
