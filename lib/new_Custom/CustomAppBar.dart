import 'package:flutter/material.dart';

class CustomAppBar extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = Path();
//
//    path.lineTo(0, size.height);
//    path.quadraticBezierTo(
//        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
//
//    path.quadraticBezierTo(
//        3 / 4 * size.width, size.height, size.width, size.height - 20);
//
//    path.lineTo(size.width, 0);
//
//    return path;
//  }

//  @override
//  Path getClip(Size size) {
//    Path path = Path();
//    path.lineTo(0, size.height);
//    path.quadraticBezierTo(
//        size.width / 2, size.height - 100, size.width, size.height);
//    path.lineTo(size.width, 0);
//
//    return path;
//  }

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 40;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
