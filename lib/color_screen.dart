import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
   ColorScreen(this.colorPageScreen,{super.key});
  Color colorPageScreen;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: colorPageScreen,
      ),
    );
  }
}
