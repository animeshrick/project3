import 'package:flutter/material.dart';
import '../wappHome.dart';

class VerifyNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,

      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            text(),
            FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/trail2.png')),

            sms(),
            Container(
              height: 10,
            ),
            button(context),

          ],
        ),
      ),
    );
  }
}


text() {
  return
    Center(
      heightFactor: 3,
      child: Text(
        "Verification of the given number",
        style: TextStyle(fontSize: 25,
            color: Colors.blueGrey,
            fontWeight:FontWeight.w900),
      ),
    );

}

sms() {
  return Padding(
    padding: EdgeInsets.only(left: 60, right: 60, top: 15),
    child: TextField(
      keyboardType: TextInputType.phone,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "OTP",
          hintText: "--- --- --- --- --- ---",
          prefixIcon: Icon(Icons.sms),
          suffixIcon: Icon(Icons.visibility_off)),
    ),
  );
}

button(context) {

  return Center(
    child: RaisedButton(
        child: Text("Verify"),
        onPressed: () async {
          await Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => wappHome()),
          );
        }),
  );
}
