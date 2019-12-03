import 'package:flutter/material.dart';
import 'registration_page.dart';

class HomePage extends StatelessWidget {
  var idUser, username, firstname, lastname;
  HomePage(
      {Key key, this.idUser, this.firstname, this.lastname, this.username})
      : super(key: key);

  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final t = Text(
      "Registration Form",
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
        child: Image.asset('assets/logo.png'),
      ),
    );
    final fullname = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'fullname',
        fillColor: Colors.redAccent,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
    String dropdownValue = 'Female';

    final gender = DropdownButton<String>(
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
      items: <String>['Female', 'Male']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final cnumber = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Contact Number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final address = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final city = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'City',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

     final a = Text (
      "Athentication Details",
      style: new TextStyle(
        fontSize:30.0,
        color:Colors.black,
        fontWeight: FontWeight.w700,
        fontFamily: "Roboto"),
    );

    final nextButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Next', style: TextStyle(color: Colors.white)),
      ),
    );
    //create here your main
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.red,
        title: Text(""),),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            
            Center(
              child: t,
            ),
            SizedBox(height: 48.0),
            logo,
            SizedBox(height: 48.0),
            fullname,
            SizedBox(height: 48.0),

            //dropdown / combobox
            gender,
            SizedBox(height: 48.0),
            //dropdown end

            email,
            SizedBox(height: 48.0),
            cnumber,
            SizedBox(height: 48.0),
            address,
            SizedBox(height: 48.0),
            city,
            SizedBox(height: 48.0),
            nextButton,
          ],
        ),
      ),
    );
  }
}


class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final t = Text(
      "Registration Form",
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
        child: Image.asset('assets/logo.png'),
      ),
    );
    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final id = TextFormField(
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'ID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final nextButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationPage()));
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
            
            Center(
              child: t,
            ),
            SizedBox(height: 48.0),
            logo,
            SizedBox(height: 48.0),
            username,
            SizedBox(height: 48.0),
            password,
            SizedBox(height: 48.0),
            id,
            SizedBox(height: 48.0),
            nextButton,
          ],
        ),
      ),
    );
  }
}