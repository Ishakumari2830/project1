import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latest official notification')
      ),
      body:  Container(
          height: double.infinity,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          Center(
          child: Container(
          height:600,
              width: 300,

              child: Image.asset('assets/images/notification.jpg'))),
    ],)
      ),    );
  }

}