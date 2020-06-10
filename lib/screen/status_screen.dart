import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:image_picker/image_picker.dart';


class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  Future getImage(source) async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: source);
    print(image.path);

    setState(() {
    });
  }

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
                    tooltip: 'Edit Status Or Story',
                    backgroundColor: Colors.white,
                    elevation: 8.0,
                    child: Icon(
                      Icons.edit,color: Colors.blueAccent,


                    ),
                    onPressed: () {}),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 65.0),
                child: SpeedDial(
                    backgroundColor:Colors.white,
                    animatedIcon: AnimatedIcons.add_event,foregroundColor: Colors.blueAccent,
                    animatedIconTheme: IconThemeData(size: 20.0),
                    closeManually: true,
                    curve: Curves.bounceInOut,
                    tooltip: 'Add Status Or Story',

                    elevation: 8.0,
                    shape: CircleBorder(),
                    children: [
                      SpeedDialChild(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.text_fields,color: Colors.blueAccent),
                          label: 'Text',
                          labelStyle: TextStyle(fontSize: 18.0),
                          onTap: () {

                          }),
                      SpeedDialChild(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.camera_alt,color: Colors.blueAccent,),
                          label: 'Camera',
                          labelStyle: TextStyle(fontSize: 18.0),
                          onTap: () {
                            getImage(ImageSource.camera);
                          }),
                      SpeedDialChild(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.photo_library,color: Colors.blueAccent,),

                          label: 'Choos From Gallery',
                          labelStyle: TextStyle(fontSize: 18.0),
                          onTap: () {
                            getImage(ImageSource.gallery);
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
