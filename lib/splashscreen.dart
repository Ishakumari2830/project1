import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/loginpage.dart';
import 'package:untitled9/main.dart';



class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> loginpage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Container(
                      height:300,
                      width: 300,

                      child: Image.asset('assets/images/ggvlogo.png'))),
              SizedBox(
                height: 20,
              ),

              Container(
                  height: 80,
                  width: 290,
                  color: Colors.white,
                child :// Text('G buddy'),),
                Center(
                  child: Column(
                    children: [
                      RichText(

              text: TextSpan(

                      children: <TextSpan>[
                       TextSpan(text: 'G',style: TextStyle(fontSize: 70,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontStyle:FontStyle.italic,)),
                        TextSpan(text: 'Buddy  ',style: TextStyle(
                           fontSize: 70,
                          color: Color(0xFF05449f),
                          fontWeight: FontWeight.bold,
                           fontStyle:FontStyle.italic,
                         )),],
                      ),),
                    ],
                  ),
                ),),


              Text('GGV Bilaspur',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),)


            ],
          )),



    );
  }
}