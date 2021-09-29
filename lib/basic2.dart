import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackerhike/mvd.dart';

class Basic2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            boxShadow: [BoxShadow(
              color: Colors.grey[300],
              blurRadius: 5
            )]
          ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Divider(thickness: 2,color: Colors.black12,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Mvd();
                      }));
            },
                    child: Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.sports_motorsports_sharp),
                              color: Colors.blue,
                            ),
                          SizedBox(height: 5,),
                          Text("MVD",style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Merienda"
                          ),),

                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  buildGesture("WOMEN",Icons.wc_outlined,"Women"),
                  VerticalDivider(),
                  buildGesture("CHILD",Icons.perm_identity,"Child"),


                ],
              ),
            ),
            Divider(thickness: 2,color: Colors.black12,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildGesture("TAX",Icons.add,"tax"),
                  VerticalDivider(),
                  buildGesture("PWD",Icons.account_balance_sharp,"pwd"),
                  VerticalDivider(),
                  buildGesture("LAND",Icons.add_box_outlined,"land"),
              ]

              ),
            ),
            Divider(thickness: 2,color: Colors.black12,),
          ],
        ),

      ),
    );
  }
}

GestureDetector buildGesture(String text,IconData icon,String text3){
  return  GestureDetector(
    onTap:(){
      print(text3);
    },
    child: Container(
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            color: Colors.black87,
          ),
          SizedBox(height: 5,),
          Text(text,style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
              fontFamily: "Merienda"
          ),)

        ],
      ),
    ),
  );
}