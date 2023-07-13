import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deals extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),

      ),
      body: Center(
        child: Text('Coming Soon..',style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Color(0xFF05449f),
        ),),
      ),
    );
  }

}