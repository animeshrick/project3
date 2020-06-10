import 'package:barta/Settings/Profile.dart';
import 'package:barta/screen/ChatRoomPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../chat_model.dart';



class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,

                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,

                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].message,

                ),
              ),


              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatRoomPage()),
                );
                },


            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
          backgroundColor: Colors.white,
       // backgroundColor: Colors.blueGrey,
          animatedIcon: AnimatedIcons.list_view,
          animatedIconTheme: IconThemeData(size: 20.0),foregroundColor: Colors.blueGrey,
          closeManually: true,
          curve: Curves.bounceInOut,
          tooltip: 'Do More',

          elevation: 8.0,
          shape: CircleBorder(),
          children: [

            SpeedDialChild(
                backgroundColor: Colors.white,
                child: Icon(Icons.edit),foregroundColor:  Colors.blueGrey,

                label: 'Edit Chats',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {

                }),
            SpeedDialChild(
                backgroundColor: Colors.white,
                child: Icon(Icons.person_add),foregroundColor:  Colors.blueGrey,

                label: 'New Chat',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {}),

            SpeedDialChild(
                backgroundColor: Colors.white,
                child: Icon(Icons.face),foregroundColor:  Colors.blueGrey,

                label: 'Who Is This ?',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {}),

            SpeedDialChild(
                backgroundColor: Colors.white,
                child: Icon(Icons.screen_share),foregroundColor:  Colors.blueGrey,

                label: 'Screen Sharing',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {}),
          ]),
    );
  }
}
