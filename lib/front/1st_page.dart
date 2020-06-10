import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PhoneNo.dart';

class Wellcome_Page extends StatefulWidget {
  @override
  _Wellcome_PageState createState() => _Wellcome_PageState();
}

class _Wellcome_PageState extends State<Wellcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        text1(),
        pic(),
        text2(),
        button(context),
        fromFacebook(),
      ],
    ));
  }
}

text1() {
  return Padding(
    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
    child: Center(
      child: Text(
        "Welcome to WhatsApp",
      ),
    ),
  );
}

pic() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Image.asset(
      "assets/barta.jpg",
      fit: BoxFit.fill,
      width: 300,
    ),
  );
}

text2() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "Read our Privacy Policy Tap AGREE AND CONTINUE to accept the Terms of Service.",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      )
    ],
  );
}

button(context) {
  return RaisedButton(
      child: Text("AGREE AND CONTINUE"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhoneNo()),
        );
      });
}

fromFacebook() {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          height: 20,
        ),
        Text("from"),
        Text(
          "FACEBOOK",
        )
      ],
    ),
  );
}

onClick() {}
