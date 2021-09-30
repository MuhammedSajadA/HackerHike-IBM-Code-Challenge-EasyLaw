import'dart:convert';
import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState  extends State<JsonPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Production of Document"),),
      body: Center(
        child: FutureBuilder(builder: (context,snapshot){
      var showData=json.decode(snapshot.data.toString());
        return ListView.builder(

        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: Icon(Icons.ac_unit_sharp),
            title: Text(showData[index]['item']),

          );
        },
        itemCount: showData.length,
      );
      }, future: DefaultAssetBundle.of(context).loadString("assets/emprecord.json"),
        ),
      ),
    );
  }
}