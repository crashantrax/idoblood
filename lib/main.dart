import 'package:flutter/material.dart';

import 'login_page.dart';
import 'home_page.dart';
import 'searchDonor_page.dart';
import 'new_account.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    SearchDonorPage.tag: (context) => SearchDonorPage(),
    HomePage.tag: (context) => HomePage(),
    Register.tag: (context) => Register(),
  };

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'iDoBlood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}