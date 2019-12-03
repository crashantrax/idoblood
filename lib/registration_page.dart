import 'package:flutter/material.dart';
import 'searchDonor_page.dart';

class RegistrationPage extends StatelessWidget {
  static String tag = 'profile-page';

  @override
  Widget build(BuildContext context) {
    final t = Text(
      "Information",
      style: new TextStyle(
          fontSize: 30.0,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: "Roboto"),
    );
    final logo = Hero(
      tag: 'ria',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/profile.png'),
      ),
    );

    final uploadButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 60.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => null));
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Upload', style: TextStyle(color: Colors.white)),
      ),
    );

    final bg = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 60.0),
      child: Text(
        "Blood Group:",
        style: new TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto"),
      ),
    );
    String dropdownValue = 'A+';
    final type = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 70.0),
      child: DropdownButton<String>(
        hint: Text("data"),
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),
        onChanged: (String newValue) {
          // setState(() {
          //   dropdownValue = newValue;
          // });
        },
        items: <String>['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    bool checkedValue = false;

    final check = Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: CheckboxListTile(
        value: checkedValue,
        title: Text("I want to be a Donor"), //    <-- label
        onChanged: (newValue) {},
      ),
    );

    final reg = Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchDonorPage()));
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Next', style: TextStyle(color: Colors.white)),
      ),
    );

    //create here your main
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            Center(
              child: t,
            ),
            SizedBox(height: 48.0),
            logo,
            SizedBox(height: 38.0),
            uploadButton,
            SizedBox(height: 28.0),
            type,
            check,
            SizedBox(height: 48.0),
            reg,
          ],
        ),
      ),
    );
  }
}
