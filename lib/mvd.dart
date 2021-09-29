import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      ExpansionTile(
                        leading:Icon(Icons.add_chart),
                        iconColor: Colors.black,
                        textColor: Colors.green,
                        title: Text('Production of documents'),
                        children: <Widget>[
                          ListTile(leading:Icon(Icons.circle,color:Colors.black),title: Text('Driving Licence')),
                          ListTile(leading:Icon(Icons.circle,color: Colors.black,),title: Text('Regestration Certificate')),
                        ],
                      ),
                      Divider(thickness:2,color: Colors.black,),
                      ExpansionTile(
                        leading:Icon(Icons.add_chart),
                        iconColor: Colors.black,
                        textColor: Colors.green,
                        title: Text('Towig'),
                        children: <Widget>[
                          ListTile(leading:Icon(Icons.circle,color:Colors.black),title: Text('No vehicle other than a mechanically disabled motor vehicle or incompletely assembled motor vehicle, a registered trailer or a side car, shall be drawn or towed by any motor vehicle, except for purposes of delivery and to the nearest filling station or garage.')),
                          ListTile(leading:Icon(Icons.circle,color: Colors.black,),title: Text('No motor vehicle when towing anothervehicles other than a trailer or sidecar shall be driven at a speed exceeding twenty-four kilometres per hour.')),
                        ],
                      ),
                      Divider(thickness:2,color: Colors.black,),
                      ExpansionTile(
                        leading:Icon(Icons.add_chart),
                        iconColor: Colors.black,
                        textColor: Colors.green,
                        title: Text('Driving of Tractors and ood vehicles'),
                        children: <Widget>[
                          ListTile(leading:Icon(Icons.circle,color:Colors.black),title: Text('A driver when driving a tractor shall not carry or allow any person to be carried on tractor. A driver of goods carriage shall not carry in the driver''s cabin more number of persons than that is mentioned in the registration certificate and shall not carry passengers for hire or reward.')),

                        ],
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


