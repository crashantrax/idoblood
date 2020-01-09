import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


// class MyApp extends StatelessWidget {
//   // final ThemeData _kShrineTheme = _buildTheme();
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Web Online Tutorials',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         fontFamily: 'Nunito',
//       ),
//       home: new Register(),
//     );
//   }
// }

class Register extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {
  // final ThemeData _kShrineTheme = _buildTheme();

  final _formKey = GlobalKey<FormState> ();
  

  void onCreatedAccount() {
    var alert = new AlertDialog(
      title: new Text('Info'),
      content: new SingleChildScrollView(
        child: new ListBody(
          children: <Widget>[
            new Text('You have created a new Account.'),
          ],
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    showDialog(context: context, child: alert);
  }

  var _usernameController = new TextEditingController();
  var _firstnameController = new TextEditingController();
  var _passwordController = new TextEditingController();
  var _genderController = new TextEditingController(); 
  var _emailController = new TextEditingController();
  var _phoneNumberController = new TextEditingController();
  var _addressController = new TextEditingController();
  
  void _addData() {
    var url =
        "https://projectidoblood.000webhostapp.com/FlutterTraining/NewUser.php";

    http.post(url, body: {
      "username": _usernameController.text,
      "firstname": _firstnameController.text,
      "password": _passwordController.text,
      "gender": _genderController.text,
      "email": _emailController.text,
      "phoneNumber": _phoneNumberController.text,
      "address": _addressController.text,
      
    });
    onCreatedAccount();
    //print(_adresseController.text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent,),
      body: new Form(
        key: _formKey,
        //padding: const EdgeInsets.only(
           // left: 16.0, top: 30.0, right: 16.0, bottom: 16.0),
        child: ListView(
          children: <Widget>[
           new ListTile(
              leading: const Icon(Icons.person),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'User name must be filled';
                  };
                },
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 17.0
                  ),
                    labelText: "UserName : ", hintText: " User Name "),
                controller: _usernameController,
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.person),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'First name must be filled';
                  };
                },
                decoration: InputDecoration(
                    labelText: "FirstName : ", hintText: " First Name "),
                controller: _firstnameController,
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.remove_red_eye),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'Password must be filled';
                  };
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password : ", hintText: "Password "),
                controller: _passwordController,
              ),
            ),
           
            new ListTile(
              leading: const Icon(Icons.person),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'Gender must be filled';
                  };
                },
                decoration: InputDecoration(
                    labelText: "Gender : ", hintText: " Gender "),
                controller: _genderController,
              ),
            ),
             
             new ListTile(
              leading: const Icon(Icons.email),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'Email must be filled';
                  };
                },
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Email: ", hintText: "Email "),
                controller: _emailController,
              ),
            ),
             new ListTile(
              leading: const Icon(Icons.phone),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'PhoneNumber must be filled';
                  };
                },
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "PhoneNumber: ", hintText: "Phone number "),
                controller: _phoneNumberController,
              ),
            ),
             new ListTile(
              leading: const Icon(Icons.location_city),
              title: TextFormField(
                validator: (String value) {
                  if (value.isEmpty){
                    return 'Address must be filled';
                  };
                },
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Address: ", hintText: "Address "),
                controller: _addressController,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new RaisedButton.icon(
                    label: Text(
                      'Back ',
                      textScaleFactor: 1.0,
                    ),
                    textColor: Colors.white,
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      Navigator.of(context).pop();
                      //_UpdateData(widget.idUser, _nom.text, _pseudo.text, _prenom.text, _numTel.text);
                    },
                    color: Colors.redAccent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0,right: 20),
                    child: new RaisedButton.icon(
                
                      onPressed: () {
                        if (_formKey.currentState.validate()){
                              _addData();
                        }
                      
                      },
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      icon: Icon(Icons.add),
                      label: Text(
                        'Register',
                        textScaleFactor: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}