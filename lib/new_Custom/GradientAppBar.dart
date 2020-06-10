import 'dart:math' as math;

import 'package:flutter/material.dart';

class GradientAppBar extends StatefulWidget {
  @override
  _GradientAppBarState createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<GradientAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(),
//      bottomNavigationBar: _getNavBar(context),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
          ),
          Transformer(),
          Textstyle(),
          ClickableText(),
//          abc(),
//          TextField(
//              decoration: InputDecoration(
//            enabledBorder: OutlineInputBorder(
//              borderSide: BorderSide(
//                color: Colors.blueAccent,
//              ),
//              borderRadius: BorderRadius.circular(10.0),
//            ),
//            hintText: "Enabled decoration text ...",
//          )),
//          SizedBox(height: 10),
//          TextField(
//            decoration: InputDecoration(
//              disabledBorder: OutlineInputBorder(
//                borderSide: BorderSide(
//                  color: Colors.grey,
//                ),
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              hintText: "Disabled decoration text ...",
//            ),
//            enabled: false,
//          ),
//          SizedBox(height: 10),
//          TextField(
//            decoration: InputDecoration(
//                errorBorder: OutlineInputBorder(
//                  borderSide: BorderSide(
//                    color: Colors.red,
//                  ),
//                  borderRadius: BorderRadius.circular(10.0),
//                ),
//                hintText: "Error decoration text ...",
//                errorText: "Ooops, something is not right!",
//                errorStyle:
//                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
//          ),
//          SizedBox(height: 10),
//          TextField(
//            decoration: InputDecoration(
//              focusedBorder: OutlineInputBorder(
//                borderSide: BorderSide(
//                  color: Colors.blue,
//                ),
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              hintText: "Focus decoration text ...",
//            ),
//          ),
//          SizedBox(height: 10),
//          TextField(
//            decoration: InputDecoration(
//              border: OutlineInputBorder(
//                borderSide: BorderSide(
//                  color: Colors.red, //this has no effect
//                ),
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              hintText: "Border decoration text ...",
//            ),
//          )
        ],
      ),
    );
  }
}

//abc() {
//  return TextField(
//    decoration: InputDecoration(
//      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
//      filled: true,
//      fillColor: Colors.grey,
//      hintText: "Filled Color text...",
//    ),
//  );
//}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.redAccent,
            Colors.white,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Transform.rotate(
            angle: math.pi / 2,
            child: IconButton(
              icon: Icon(
                Icons.airport_shuttle,
                color: Colors.black,
              ),
              onPressed: () {
                print("hi");
              },
            ),
          ),

          ///          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Text(
            'Oww ! Ki Lagcha !',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}

ClickableText() {
  return GestureDetector(
      child: Text("Press here",
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.blue)),
      onTap: () {
        print("printed");
      });
}

Textstyle() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
            text: "Hello huny Buny ! ",
            style: TextStyle(color: Colors.orange, fontSize: 25),
            children: [
              TextSpan(text: "Here !", style: TextStyle(color: Colors.blue))
            ]),
      ),
    ),
  );
}

Transformer() {
  return Container(
    color: Colors.white,
    child: Transform.rotate(
      angle: math.pi / 2,
      child: IconButton(
        icon: Icon(
          Icons.details,
          color: Colors.red,
        ),
        onPressed: () {
          print("hi");
        },
      ),
    ),
//    Transform(
//      alignment: Alignment.topRight,
//      transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
//      child: Container(
//        padding: const EdgeInsets.all(8.0),
//        color: const Color(0xFFE8581C),
//        child: const Text('Apartment for rent!'),
//      ),
//    ),
  );
}

//_getNavBar(context) {
//  return Stack(
//    children: <Widget>[
//      Positioned(
//        bottom: 0,
//        child: ClipPath(
//          clipper: NavBarClipper(),
//          child: Container(
//            height: 60,
//            width: MediaQuery.of(context).size.width,
//            decoration: BoxDecoration(
//                gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomCenter,
//                    colors: [
//                  Colors.grey,
//                  Colors.red,
//                ])),
//          ),
//        ),
//      ),
//      Positioned(
//        bottom: 45,
//        width: MediaQuery.of(context).size.width,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            _buildNavItem(Icons.gps_fixed, true),
//            SizedBox(width: 1),
//            _buildNavItem(Icons.chat_bubble_outline, false),
//            SizedBox(width: 1),
//            _buildNavItem(Icons.call, true),
//          ],
//        ),
//      ),
//      Positioned(
//        bottom: 10,
//        width: MediaQuery.of(context).size.width,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Text('GPS',
//                style: TextStyle(
//                    color: Colors.white.withOpacity(0.5),
//                    fontWeight: FontWeight.w500)),
//            SizedBox(
//              width: 1,
//            ),
//            Text('Message',
//                style: TextStyle(
//                    color: Colors.white.withOpacity(0.9),
//                    fontWeight: FontWeight.w500)),
//            SizedBox(
//              width: 1,
//            ),
//            Text('Calls',
//                style: TextStyle(
//                    color: Colors.white.withOpacity(0.9),
//                    fontWeight: FontWeight.w500)),
//          ],
//        ),
//      )
//    ],
//  );
//}
//
//_buildNavItem(IconData icon, bool active) {
//  return CircleAvatar(
//    radius: 30,
//    backgroundColor: Colors.teal.shade900,
//    child: CircleAvatar(
//      radius: 25,
//      backgroundColor:
//          active ? Colors.white.withOpacity(0.9) : Colors.transparent,
//      child: Icon(
//        icon,
//        color: active ? Colors.black : Colors.white.withOpacity(0.9),
//      ),
//    ),
//  );
//}
//
//class NavBarClipper extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = Path();
//    var sw = size.width;
//    var sh = size.height;
//
//    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
//    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
//    path.cubicTo(
//        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
//    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
//    path.cubicTo(
//        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
//    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
//    path.lineTo(sw, sh);
//    path.lineTo(0, sh);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//}
