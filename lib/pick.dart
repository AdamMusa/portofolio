import 'dart:math';
import 'package:flutter/material.dart';

class Pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height:300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(50),
          bottomRight:Radius.circular(50)
        )
        ),
        child: Transform(
          transform: Matrix4.rotationY(pi),
          alignment: Alignment.center,
          child: Image.asset(
            'images/dev.jpeg',
          ),
        ),
      ),
    );
  }
}
