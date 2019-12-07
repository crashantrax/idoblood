import 'package:flutter/material.dart';
import 'bloodBank_page.dart';
import 'package:http/http.dart' as http;
import 'searchDonor_page.dart';
import 'registration_page.dart';
import 'dart:convert';
import 'dart:async';
import 'new_account.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _pseudoController = new TextEditingController();
  var _passwordController = new TextEditingController();
  var data;
  var _isSecured = true;

  @override
  Widget build(BuildContext context) {
    /*********** GET CONNECTION AND DATA ************/
    Future<String> getLogin(String pseudo) async {
      var response = await http.get(
          Uri.encodeFull(
              "https://projectidoblood.000webhostapp.com/FlutterTraining/Login.php?PSEUDO=${pseudo}"),
          headers: {"Accept": "application/json"});

      print(response.body);
      setState(() {
        var convertDataToJson = json.decode(response.body);
        data = convertDataToJson['result'];
      });
    }

    /*********************Alert Dialog Pseudo******************************/
    void onSignedInErrorPassword() {
      var alert = new AlertDialog(
        title: new Text("Error"),
        content: new Text(
            "There was an Password error signing in. Please try again."),
      );
      showDialog(context: context, child: alert);
    }

    /*********************Alert Dialog Pseudo******************************/
    void onSignedInErrorPseudo() {
      var alert = new AlertDialog(
        title: new Text("Error"),
        content:
            new Text("There was an Pseudo error signing in. Please try again."),
      );
      showDialog(context: context, child: alert);
    }

    /******************* Check Data ****************************/
    VerifData(String pseudo, String password, var datadb) {
      if (data[0]['username'] == pseudo) {
        if (data[0]['password'] == password) {
          // Navigator.of(context).pushNamed("/seconds");

          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new SearchDonorPage(
              idUser: data[0]['user_id'],
              firstname: data[0]['first_name'],
              lastname: data[0]['last_name'],
              username: data[0]['username'],
            ),
          );
          Navigator.of(context).push(route);
        } else {
          onSignedInErrorPassword();
        }
      } else {
        onSignedInErrorPseudo();
      }
    }

    final t = Text (
      "LOGIN",
      style: new TextStyle(
        fontSize:30.0,
        color:Colors.black,
        fontWeight: FontWeight.w700,
        fontFamily: "Roboto"),
      
    );
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    var pseudo = new ListTile(
      leading: const Icon(Icons.person),
      title: TextFormField(
        decoration: InputDecoration(
            labelText: "Username",
            filled: true,
            hintText: "Write your Username please",
            border: InputBorder.none),
        controller: _pseudoController,
      ),
    );

    final password1 = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    var password = new ListTile(
      leading: const Icon(Icons.remove_red_eye),
      title: TextField(
        decoration: InputDecoration(
            // icon: new IconButton(
            //     icon: Icon(
            //       Icons.remove_red_eye,
            //     ),
            //     onPressed: () {
            //       setState(() {
            //         _isSecured = !_isSecured;
            //       });
            //     }),
            labelText: "   Password",
            hintText: "Write your Password please",
            border: InputBorder.none),
        obscureText: _isSecured,
        controller: _passwordController,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          getLogin(_pseudoController.text);
          VerifData(_pseudoController.text, _passwordController.text, data);
          // Navigator.of(context).pushNamed(SearchDonorPage.tag);

        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    var createaccount = new Container(
      child: FlatButton(
        child: const Text('Register'),
        onPressed: () {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new Register(),
          );
          Navigator.of(context).push(route);
        },
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'REGISTER',
        style: TextStyle(color: Colors.redAccent),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(RegistrationPage.tag);
      
      },
    );


    return Scaffold(
     
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Center(child:t,),
            SizedBox(height:48.0),
            logo,
            SizedBox(height: 48.0),
            pseudo,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            createaccount
          ],
        ),
      ),
    );
  }
}