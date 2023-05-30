import 'dart:math';

import 'package:flutter/material.dart';

class ItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path()
      ..moveTo(width * 0.1, 0)
      ..lineTo(width, 0)
      ..lineTo(
        width,
        height * 0.1,
      )
      ..lineTo(width, height * 0.55)
      ..conicTo(width, height * 0.6, width * 0.9, height * 0.65, 1)
      ..lineTo(width * 0.40, height * 0.95)
      ..conicTo(width * 0.325, height, width * 0.25, height * 0.96, 1)
      ..conicTo(0, height * 0.85, 0, height * 0.83, 1)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ItemSecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;

    Path path = Path()
      ..moveTo(width * 0.9, height)
      ..lineTo(0, height)
      ..lineTo(
        0,
        height * 0.9,
      )
      ..lineTo(0, height * 0.45)
      ..conicTo(0, height * 0.4, width * 0.1, height * 0.35, 1)
      ..lineTo(width * 0.60, height * 0.05)
      ..conicTo(width * 0.675, 0, width * 0.75, height * 0.04, 1)
      ..conicTo(width, height * 0.15, width, height * 0.17, 1)
      ..lineTo(width, height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
