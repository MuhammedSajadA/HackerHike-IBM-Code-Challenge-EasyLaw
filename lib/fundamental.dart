import 'package:flutter/material.dart';

class Fundamental extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20))
          ),
          child: Column(
            children: [
              IconButton(
                padding:EdgeInsets.only(right:350,top:40),
                icon:Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 20,),
              Divider(thickness: 5,),
              buildExpansion("Right to equality (Articles 14–18)"),
              Divider(thickness: 5,),
              buildExpansion("Right to freedom (Articles 19–22)")
            ],
          ),
        ),
      ),
    );
  }
}

ExpansionTile buildExpansion(String text){
  return ExpansionTile(
leading:Icon(Icons.add_chart),
iconColor: Colors.black,
textColor: Colors.green,
title: Text(text),
children: <Widget>[
ListTile(leading:Icon(Icons.circle,color:Colors.black),title: Text('sample')),

],
);
}