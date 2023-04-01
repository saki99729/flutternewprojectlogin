import 'package:flutter/material.dart';
import 'package:flutternewprojectlogin/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Asian Bank"),
        centerTitle: true,

      ),
      body: Container(child: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context)=>Loginpage()),
          );

        },child: Text('Log Out')),
      ),
      )
        ,
      );

  }
}
