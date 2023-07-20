
import 'package:flutter/material.dart';
import 'package:ui_designs/musify/musifyhome.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: musifysplash(),
  ));
}

class musifysplash extends StatefulWidget {
  const musifysplash({super.key});

  @override
  State<musifysplash> createState() => _musifysplashState();
}

class _musifysplashState extends State<musifysplash> {

   @override
  void initState() {
    musifysplashfunction();
    super.initState();
  }
  Future<void>musifysplashfunction()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>musicUI2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/images/musify-logo.png"),
      ),
    );
  }
}