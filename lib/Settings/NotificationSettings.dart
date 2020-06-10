import 'package:flutter/material.dart';
//import 'package:audio_picker/audio_picker.dart';

class NotificationSettings extends StatefulWidget {
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  String _absolutePathOfAudio;
  final navigatorKey = GlobalKey<NavigatorState>();
  void showLoading() {
    showDialog(
      context: navigatorKey.currentState.overlay.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              new CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Loading"),
              ),
            ],
          ),
        );
      },
    );
  }

  void dismissLoading() {
    Navigator.pop(navigatorKey.currentState.overlay.context);
  }

//  void openAudioPicker() async {
//    showLoading();
//    var path = await AudioPicker.pickAudio();
//    dismissLoading();
//    setState(() {
//      _absolutePathOfAudio = path;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xfff9f9f9),
        title: Text("Notification",  style:TextStyle(
            fontSize: 27.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            color: Colors.blueGrey)
        ),
        centerTitle: true,
        elevation: 0.7,

          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.blueGrey,
                ),
                tooltip: 'Reset Notification',
                onPressed: null)
          ],
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: Text(
              'Conversation Tones',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Play sound for incoming'
                  ' and outgoing messages',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
            trailing: Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          ListTile(
            title: Text(
              'Notification tone',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
             // openAudioPicker();
            },
          ),
          _absolutePathOfAudio == null
              ? Container()
              : Text(
            "Absolute path",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          ListTile(
            title: Text(
              'Vibrate',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
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
            title: Text(
              'Popup Notification',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'No popup',
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
            title: Text(
              'Light',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'White',
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
            title: Text(
              'Use high priority notifications',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Show preview of notifications at the top of the screen',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
            trailing: Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            title: Text(
              'Groups',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          ListTile(
            title: Text(
              'Notification tone',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              //openAudioPicker();
            },
          ),
          _absolutePathOfAudio == null
              ? Container()
              : Text(
            "Absolute path",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          ListTile(
            title: Text(
              'Vibrate',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
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
            title: Text(
              'Popup Notification',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'No popup',
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
            title: Text(
              'Light',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'White',
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
            title: Text(
              'Use high priority notifications',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Show preview of notifications at the top of the screen',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
            trailing: Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            title: Text(
              'Calls',
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
          ListTile(
            title: Text(
              'Ringtone',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              //openAudioPicker();
            },
          ),
          _absolutePathOfAudio == null
              ? Container()
              : Text(
            "Absolute path",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          ListTile(
            title: Text(
              'Vibrate',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Default',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
        ]));
  }
}




