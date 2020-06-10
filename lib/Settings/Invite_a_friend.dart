import 'package:flutter/material.dart';
import 'package:share/share.dart';

class InviteAFriend extends StatefulWidget {
  InviteAFriend(BuildContext context);

  @override
  _InviteAFriendState createState() => _InviteAFriendState();
}

class _InviteAFriendState extends State<InviteAFriend> {
  String text = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share Plugin Demo'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("press"),
            onPressed: () {
              final RenderBox box = context.findRenderObject();
              Share.share('Visit my website http://google.com');
            },
          ),
        ),
      ),
    );
  }
}
