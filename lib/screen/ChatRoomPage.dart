import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ChatRoomPage extends StatefulWidget {
  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  Future getImage(source) async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: source);
    print(image.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          titleSpacing: 0.0,
          elevation: 8.0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/profile.png'))),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(right: 15.0, left: 13),
                    child: Text(
                      'Barta',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, right: 5),
                    child: Text(
                      "Online",
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle.apply(
                            color: Colors.green,
                          ),
                    ),
                  )
                ],
              )
            ],
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.videocam,
                    color: Colors.black,
                    size: 28.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 26,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => faltu()),
//                    );
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 28,
                  ),
                )),
          ]),
      bottomNavigationBar: (Container(
        margin: EdgeInsets.all(15.0),
        height: 61,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.face), onPressed: () {}),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type Something...",
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.photo_camera),
                      onPressed: () {
                        getImage(ImageSource.camera);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: InkWell(
                child: Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                ),
                onLongPress: () {
                  setState(() {
                    //_showBottom = true;
                  });
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
