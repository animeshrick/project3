import 'package:barta/frontpage_animation/ui/views/home_view.dart';
import 'package:flutter/material.dart';

import '../ServerAPI.dart';

class AgreeAndStart extends StatefulWidget {
  @override
  _AgreeAndStartState createState() => _AgreeAndStartState();
}

class _AgreeAndStartState extends State<AgreeAndStart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    register();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        body: Column(
      children: <Widget>[
        text1(),
        pic(),
        SizedBox(
          height: 50,
        ),
        text2(),
        SizedBox(
          height: 50,
        ),
        button(context),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}

text1() {
  return Padding(
    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
    child: Center(
      child: Text(
        "Welcome to Barta",
        style: TextStyle(
          fontSize: 25,
          color: Colors.blueGrey,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}

pic() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Image.asset(
      "assets/trail2.png",
      fit: BoxFit.fill,
      width: 300,
    ),
  );
}

text2() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
            text: "Read our Privacy Policy Tap AGREE AND CONTINUE to ",
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: " accept the Terms of Service . . .",
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold)),
            ]),
      ),
    ),
  );
}

button(context) {
  return RaisedButton(
      child: Text("AGREE AND CONTINUE"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        );
      });
}

register() async {
  final result = await ServerAPI().register(
      {'mobile_no': 'mobile_no', 'password': 'password', 'name': 'Subhadip'});
  print(result);
}
