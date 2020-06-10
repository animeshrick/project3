import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.white,
          //backgroundColor: Color(0xff201F23),
          animatedIcon: AnimatedIcons.menu_close,foregroundColor: Colors.green,
          animatedIconTheme: IconThemeData(size: 20.0),
          closeManually: true,
          curve: Curves.bounceInOut,
          tooltip: 'Manage Groups',

          elevation: 8.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
                backgroundColor:Colors.white,
                child: Icon(Icons.mode_edit,color: Colors.green,),

                label: 'Edit Group',
                labelStyle: TextStyle(fontSize: 18.0),

                onTap: ()  {
                  //getImage(ImageSource.camera);
                }),
            SpeedDialChild(
                backgroundColor: Colors.white,
                child: Icon(Icons.group_add,color: Colors.green,),

                label: 'Creat Group',
                labelStyle: TextStyle(fontSize: 18.0),

                onTap: ()  {
                  // getImage(ImageSource.gallery);
                })
          ]),
    );
  }
}
