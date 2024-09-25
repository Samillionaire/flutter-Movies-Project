import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movies_project/home_page.dart';
class Firstpage extends StatefulWidget{
  const Firstpage({super.key});
  @override
  State<Firstpage> createState()=> _FirstpageState();
}
class _FirstpageState extends State<Firstpage>{
  @override
  void initState(){
    Timer(
        Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>  HomePage()));
    }
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset('assets/images/splashh.jpg',fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Image.asset('assets/images/blackLogo.png'),
                  )),
            ],
          ),
        )
    );
  }
}
