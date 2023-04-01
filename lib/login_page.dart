

import 'package:flutter/material.dart';
import 'package:flutternewprojectlogin/home_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _username=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Company Name"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset("images/Bank.png"),),
            TextFormField(
            controller: _username,decoration: InputDecoration (
              border: UnderlineInputBorder(),
              labelText: 'Enter Your Username',
                hintText:'Username'

            ),
            ),
            TextFormField(
              controller: _password,decoration: InputDecoration (
                border: UnderlineInputBorder(),
                labelText: 'Enter Your Passowrd',
                hintText:'Password'

            ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              width: 300,
              child: ElevatedButton(onPressed: LoginButton,child: Text("Login")
              ),),
            
          ],
        )
      ),
    ));
  }
  void LoginButton()
  {
    if(_username.text=='user123' && _password.text=='1234')
      {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      }else{
      print("Login Fail");
    }
  }
}
