import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,

              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: FloatingActionButton(
                    tooltip: 'Manage Call Log',
                    backgroundColor: Colors.white,
                    elevation: 8.0,
                    child: Icon(
                      Icons.edit,color: Colors.purple,


                    ),
                    onPressed: () {

                    }
                    ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 65.0),
                child: SpeedDial(
                    backgroundColor: Colors.white,
                    animatedIcon: AnimatedIcons.add_event,foregroundColor: Colors.purple,
                    animatedIconTheme: IconThemeData(size: 20.0),
                    closeManually: true,
                    curve: Curves.bounceInOut,
                    tooltip: 'New Call',

                    elevation: 8.0,
                    shape: CircleBorder(),
                    children: [

                      SpeedDialChild(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add_call,color: Colors.purple,),
                          label: 'Voice Call',
                          labelStyle: TextStyle(fontSize: 18.0),
                          onTap: () {

                          }),
                      SpeedDialChild(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.voice_chat,color: Colors.purple,),

                          label: 'Video Call',
                          labelStyle: TextStyle(fontSize: 18.0),
                          onTap: () {

                          })
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
