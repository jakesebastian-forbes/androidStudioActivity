import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contact_page()
  ));
}

class Contact_page extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return
      Scaffold(
          appBar: AppBar(
            title: const Text("Contacts"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.grey[800],
          body: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[500],
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.zero,
                  child :
                  Row( children: [
                    Icon(Icons.search_outlined),
                    Text("Search number or contact name",
                      style: TextStyle()
                    )
                  ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,top:10),
                  child: Column(
                    children: [
                      Contact_person("Spongebob","img/spongebob.png"),
                      Contact_person("Patrick","img/patrick.png"),
                      Contact_person("Squidward","img/squidward.png"),
                      Contact_person("Mr. Krabs","img/mrkrabs.png"),
                      Contact_person("Plankton", "img/plankton.png"),
                      Contact_person("Sandy", "img/sandy.png")
                    ],
                  ),
                )
                ,

              ],
            ),
          )
      );



  }

}

class Contact_person extends StatelessWidget{
  Contact_person(this.name,this.img);
  final String name,img;

  @override
  Widget build(BuildContext context) {

    return
      Container(
        padding: EdgeInsets.all(2),
        child:Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white60,
                backgroundImage: AssetImage(img)
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 4),
                  child: Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      )
                  )

              )
            ]
        ),
      );
  }
}