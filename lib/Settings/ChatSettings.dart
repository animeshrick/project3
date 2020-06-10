import 'package:flutter/material.dart';

class ChatSettings extends StatefulWidget {
  @override
  _ChatSettingsState createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xfff9f9f9),
        title: Text("Chats",  style:TextStyle(
            fontSize: 27.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            color: Colors.blueGrey)
        ),
        centerTitle: true,
        elevation: 0.7,
      ),

      body: ListView(
        children: <Widget>[
ListTile(
  title: Text('Display',
    style:TextStyle(
        fontSize: 17.5,
        //fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.green
    ),
  ),
),
          ListTile(
            leading: Icon(Icons.remove_red_eye,color: Colors.green,),
            title: Text('Theme',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Dark, Light',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {

            },
          ),


          ListTile(
            leading: Icon(Icons.wallpaper,color: Colors.green,),
            title: Text('Wallpaper',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {

            },
          ),


          ListTile(
            title: Text('Chat settings',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.check_box_outline_blank,color: Colors.transparent,),
            title: Text(
              'Enter is send ',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Enter key will send your message'
                  ,
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
            leading: Icon(Icons.check_box_outline_blank,color: Colors.transparent,),
            title: Text(
              'Media visibility ',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              'Show newly downloaded media in your'
              "phone's gallery"
              ,
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
  leading: Icon(Icons.check_box_outline_blank,color: Colors.transparent,),
  title: Text(
    'Font size ',
    style:TextStyle(
        fontSize: 17.5,
        //fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.black54
    ),
  ),
  subtitle: Text(
    'Medium'
    ,
    style: TextStyle(
      fontSize: 15.0,
      fontStyle: FontStyle.italic,
      //fontWeight: FontWeight.bold,
      // color: Colors.black54
    ),
  ),
  onTap: (){

  },
),
          ListTile(
            leading: Icon(Icons.check_box_outline_blank,color: Colors.transparent,),
            title: Text(
              'App Language',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text(
              "Phone's language(English)"
              ,
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.backup,color: Colors.green,),
            title: Text('Chat backup',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.history,color: Colors.green,),
            title: Text('Chat history',
              style:TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {

            },
          ),

        ],
      ),



    );
  }
}
