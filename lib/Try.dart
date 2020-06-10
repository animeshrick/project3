import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/trail2.png"),
                          fit: BoxFit.cover)),
                  child: Text("Header"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}









/*
  child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(

              child:  InkWell(

                child: Container(

//                padding: EdgeInsets.only(right: 5.0,left: 5.0, top: 1.0),
//                height: 0,
//                 width: 0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/trail2.png'))
                  ),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Profile())),
              ),
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blueGrey, Colors.white]),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Friends',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => AccountSettings()),
//                );
              },
            ),



            ListTile(
              leading: Icon(
                Icons.vpn_key,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Accounts & Privacy',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountSettings()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.blueGrey,),
              title: Text(
                'Chats',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatSettings()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_active, color: Colors.blueGrey,),
              title: Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationSettings()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.data_usage, color: Colors.blueGrey,),
              title: Text(
                'Data & Storage Usage',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.blueGrey,),
              title: Text(
                'Help',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Try()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.share, color: Colors.blueGrey,),
              title: Text(
                'Share me',
                style: TextStyle(
                    fontSize: 15,
                    //fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              subtitle: Text(
                'say More & do More  . . .',
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                  //fontWeight: FontWeight.bold,
                  // color: Colors.black54
                ),
              ),
              onTap: () { Share.share('Hello');
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => InviteAFriend(context)),
//                );
              },
            ),
          ]),
 */