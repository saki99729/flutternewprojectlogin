import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLoginScreen(context);
  }
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('images/Bank.png'),),

          ],
        ),
      ),

    );
  }
  
  void navigateToLoginScreen(BuildContext context)
  {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
  }
}
