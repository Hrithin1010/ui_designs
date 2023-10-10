import 'package:flutter/material.dart';
import 'package:ui_designs/signup&login/screens/loginSignupSplash.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   
       home: LoginSignUpSplash()
      );

  }
}