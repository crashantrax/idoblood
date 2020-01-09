import 'package:flutter/material.dart';
import 'login_page.dart';

class SearchDonorPage extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    SearchDonorPage.tag: (context) => SearchDonorPage(),
  };
  static String tag = 'searchdonor-page';

  var idUser, username, firstname, lastname, gender, email, phonNumber, address;
  SearchDonorPage(
      {Key key,
      this.idUser,
      this.firstname,
      this.lastname,
      this.username,
      this.gender,
      this.email,
      this.phonNumber,
      this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendRButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {
          Navigator.of(context).canPop();
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Send Request', style: TextStyle(color: Colors.white)),
      ),
    );

    final snor = Row(
      children: <Widget>[
        Icon(Icons.search),
        Text(
          'Search Donor',
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    );

    String dropdownValue = 'A+';

    final logo1 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Hero(
        tag: 'ria',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 10.0,
          child: Image.asset('assets/drop.png'),
        ),
      ),
    );
    final logo2 = Row(
      children: <Widget>[
        Icon(Icons.menu),
        Text(
          'My Details',
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    );

    final name = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: firstname,
      decoration: InputDecoration(
        hintText: 'Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );
    final gender1 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: gender,
      decoration: InputDecoration(
        hintText: 'Gender',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final bloodgroup = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'A+',
      decoration: InputDecoration(
        hintText: 'Bloodgroup',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final email1 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: email,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );
    final contact = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: phonNumber,
      decoration: InputDecoration(
        hintText: 'Contact #',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final address1 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: address,
      decoration: InputDecoration(
        hintText: 'Address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    bool checkedValue = false;
    final check = Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: CheckboxListTile(
        value: checkedValue,
        title: Text("I want to be a donor"), //    <-- label
        onChanged: (newValue) {},
      ),
    );

    final myd = Text(
      "BLOOD BANK",
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
    );

    final logo = Hero(
      tag: 'ria',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 60.0,
        child: Image.asset('assets/profile.png'),
      ),
    );

    final bb = Row(
      children: <Widget>[
        logo1,
        Text(
          'Blood Bank',
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    );

    final edit = Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {
          Navigator.of(context).canPop();
        },
        color: Colors.redAccent,
        child: Text('Edit', style: TextStyle(color: Colors.white)),
      ),
    );

    final update = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 50.0, top: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(),
              onPressed: () {
                Navigator.of(context).canPop();
              },
              color: Colors.redAccent,
              child: Text('Update', style: TextStyle(color: Colors.white)),
            ),
          )
        ]);

    final logout = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 50.0,top: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return LoginPage();
                // }));
                Navigator.of(context).pop();
              },
              color: Colors.redAccent,
              child: Text('Logout', style: TextStyle(color: Colors.white)),
            ),
          )
        ]);

    //create here your main
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: snor,
                ),
                Tab(
                  child: bb,
                ),
                Tab(child: logo2),
              ],
            ),
            title: Text('iDoBlood'),
          ),
          body: TabBarView(
            children: [
              Container(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 30.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "SEARCH DONOR",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Blood Group :                ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        DropdownButton<String>(
                          hint: Text("SELECT"),
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.pinkAccent),
                          underline: Container(
                            height: 2,
                            color: Colors.pinkAccent,
                          ),
                          onChanged: (String newValue) {
                            // setState(() {
                            //   dropdownValue = newValue;
                            // });
                          },
                          items: <String>[
                            'A+',
                            'A-',
                            'B+',
                            'B-',
                            'AB+',
                            'AB-',
                            'O+',
                            'O-'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  )
                ],
              )),

              //BLOOD BANK
              Container(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 30.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "BLOOD BANK",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "A+",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1000",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Blood Group :                ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        DropdownButton<String>(
                          hint: Text("SELECT"),
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.pinkAccent),
                          underline: Container(
                            height: 2,
                            color: Colors.pinkAccent,
                          ),
                          onChanged: (String newValue) {
                            // setState(() {
                            //   dropdownValue = newValue;
                            // });
                          },
                          items: <String>[
                            'A+',
                            'A-',
                            'B+',
                            'B-',
                            'AB+',
                            'AB-',
                            'O+',
                            'O-'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  sendRButton,
                ],
              )),
              Container(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  children: <Widget>[
                    SizedBox(height: 48.0),
                    Center(
                      child: myd,
                    ),
                    SizedBox(height: 10.0),
                    logo,
                    SizedBox(height: 38.0),
                    name,
                    gender1,
                    bloodgroup,
                    email1,
                    contact,
                    address1,
                    // check,
                    Row(
                      children: <Widget>[
                        // edit,
                        update,
                        logout,
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
