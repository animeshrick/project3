import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy"),
      ),
      body: ListView(children: <Widget>[
        ListTile(
          leading: Icon(Icons.lock),
          title: Text(
            'Last Seen',
            style: TextStyle(
                fontSize: 17.0,
                //fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          onTap: () {},
        ),
      ]),
    );
  }
}
