import 'package:barta/Settings/Invite_a_friend.dart';
import 'package:flutter/material.dart';

import 'AccountSettings.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff201F23),
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: 27.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text(
              'Accoints & Privacy',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Privacy, Security, Change Number',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountSettings()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text(
              'Chats',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Theme, Chat History, Chat Backup',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Message, group & Call tone, Priority',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text(
              'Data & Storage Usage',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Network Usage, Auto-Ddownload, Wi-fi',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'Help',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'FAQ, Contact us, Privacy policy',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text(
              'Invite a friend',
              style: TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Say More & do More  . . .',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InviteAFriend(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//inviteAFriend(context){
//  return FloatingActionButton(
//  )
//}
