import 'package:flutter/material.dart';

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    double w = size.width;
    double h = size.height;

    var path = Path();


    path.moveTo(0, h*0.5); //1
    path.lineTo(0, h); //2
    path.lineTo(w, h); //3
    path.lineTo(w, h*0.5); //4

    path.quadraticBezierTo(w*0.5, 0, 0, h*0.5);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
