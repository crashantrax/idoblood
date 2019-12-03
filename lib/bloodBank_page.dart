import 'package:flutter/material.dart';

class BloodBankPage extends StatelessWidget {
  static String tag = 'bloodbank-page';
  var idUser, username, firstname, lastname;
  BloodBankPage(
      {Key key, this.idUser, this.firstname, this.lastname, this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Text(
        "Search Donor",
        style: new TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto"),
      ),
    );

    final bb = Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Text(
        "Blood Bank",
        style: new TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto"),
      ),
    );

    final md =
        // Padding(
        // padding: EdgeInsets.symmetric(horizontal: 0.5),
        // child:
        Text(
      "My Details",
      style: new TextStyle(
          fontSize: 18.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );


    final logo1 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Hero(
        tag: 'ria',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 15.0,
          child: Image.asset('assets/drop.png'),
        ),
      ),
    );
    final logo2 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Icon(Icons.menu),
    );

    final bb1 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.0),
      child: Text(
        "SEARCH DONOR",
        style: new TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto"),
      ),
    );

    //create here your main
    return Scaffold(
      appBar: AppBar(
        title: Text("iDoBlood"),
      ),
      body: Center(
        child:
         ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    s,
                    logo1,
                    bb,
                    logo2,
                    md,
                    SizedBox(height: 150.0),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    bb1,
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
