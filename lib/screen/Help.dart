import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          backgroundColor: Color(0xfff9f9f9),
          title: Text("Help",
            style:TextStyle(

                fontSize: 25.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                color: Colors.blueGrey),
          ),
         // centerTitle: true,
          elevation: 0,
          actions: <Widget>[

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
          ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.people,color: Colors.blueGrey,),
            title: Text('Contact us',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Questions? , Need Help ?',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => AccountSettings()),
//              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline,color: Colors.blueGrey,),
            title: Text('About Us',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),

            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => AccountSettings()),
//              );
            },
          ),

        ],
      ),
     floatingActionButton: FloatingActionButton(
          tooltip: 'Chate now',
          backgroundColor: Colors.white,
          elevation: 8.0,
          child: Icon(
            Icons.chat_bubble_outline,color: Colors.blueGrey,


          ),
          onPressed: () {

          }
      ),
    );
  }
}
