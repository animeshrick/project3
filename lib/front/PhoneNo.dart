import 'package:flutter/material.dart';
import '../front/VerifyNo.dart';


class PhoneNo extends StatefulWidget {
  @override
  _PhoneNoState createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  String selectedCountry = "India +91";
  var country = ["India +91", "USA +1"];

  String mobile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter your phone number",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: <Widget>[
            page(),
            button(context),
          ],
        ),
      ),
    );
  }

  page() {
    return Row(
      children: <Widget>[
        countryCode(),
        textField(),
      ],
    );
  }

  countryCode() {
    return Container(
      width: 170,
      child: DropdownButton<String>(
        isExpanded: false,
        value: selectedCountry,
        hint: Text('Select country Code'),
        items: country.map((item) {
          return DropdownMenuItem<String>(
            value: item.toString(),
            child: Text(item.toUpperCase()),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedCountry = value;
          });
        },
      ),
    );
  }

  textField() {
    return Expanded(
      child: TextField(
        keyboardType: TextInputType.number,
        // obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "PhoneNo",
          hintText: "Any Valid Number",
          prefixIcon: Icon(Icons.phone),
//              suffixIcon: Icon(Icons.visibility)),
        ),
      ),
    );
  }

  button(context) {
    return Padding(
      padding: EdgeInsets.only(top: 450),
      child: RaisedButton(
        child: Text("Next"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerifyNo()),
          );
        },
      ),
    );
  }
}
