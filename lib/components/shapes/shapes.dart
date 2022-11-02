import 'package:flutter/material.dart';
import 'dart:math';

class StarPath extends CustomClipper<Path> {
  StarPath({this.scale = 2.5});

  final double scale;

  double perDegree = 36;

  /// 角度转弧度公式
  double degree2Radian(double degree) {
    return (pi * degree / 180);
  }

  @override
  Path getClip(Size size) {
    print('size是什么:${size.width}');
    var R = min(size.width / 2, size.height / 2);
    var r = R / scale;
    var x = size.width / 2;
    var y = size.height / 2;

    var path = Path();
    path.moveTo(x, y - R);
    path.lineTo(x - sin(degree2Radian(perDegree)) * r,
        y - cos(degree2Radian(perDegree)) * r);
    path.lineTo(x - sin(degree2Radian(perDegree * 2)) * R,
        y - cos(degree2Radian(perDegree * 2)) * R);
    path.lineTo(x - sin(degree2Radian(perDegree * 3)) * r,
        y - cos(degree2Radian(perDegree * 3)) * r);
    path.lineTo(x - sin(degree2Radian(perDegree * 4)) * R,
        y - cos(degree2Radian(perDegree * 4)) * R);
    path.lineTo(x - sin(degree2Radian(perDegree * 5)) * r,
        y - cos(degree2Radian(perDegree * 5)) * r);
    path.lineTo(x - sin(degree2Radian(perDegree * 6)) * R,
        y - cos(degree2Radian(perDegree * 6)) * R);
    path.lineTo(x - sin(degree2Radian(perDegree * 7)) * r,
        y - cos(degree2Radian(perDegree * 7)) * r);
    path.lineTo(x - sin(degree2Radian(perDegree * 8)) * R,
        y - cos(degree2Radian(perDegree * 8)) * R);
    path.lineTo(x - sin(degree2Radian(perDegree * 9)) * r,
        y - cos(degree2Radian(perDegree * 9)) * r);
    path.lineTo(x - sin(degree2Radian(perDegree * 10)) * R,
        y - cos(degree2Radian(perDegree * 10)) * R);
    return path;
  }

  @override
  bool shouldReclip(StarPath oldClipper) {
    return oldClipper.scale != this.scale;
  }
}

class QuadraticBezierPath extends CustomClipper<Path>{
  QuadraticBezierPath({this.scale = 2.5});

  final double scale;

  double perDegree = 36;

  /// 角度转弧度公式
  double degree2Radian(double degree) {
    return (pi * degree / 180);
  }

  @override
  Path getClip(Size size) {
    print('size是什么:${size.width}');
    var R = min(size.width / 2, size.height / 2);
    var r = R / scale;
    var x = size.width / 2;
    var y = size.height / 2;

    var path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 30,100,100);
    path.lineTo(0, 100);
    return path;
  }

  @override
  bool shouldReclip(QuadraticBezierPath oldClipper) {
    return oldClipper.scale != this.scale;
  }
}

class CubicToPath extends CustomClipper<Path>{
  CubicToPath({this.scale = 2.5});

  final double scale;

  double perDegree = 36;

  /// 角度转弧度公式
  double degree2Radian(double degree) {
    return (pi * degree / 180);
  }

  @override
  Path getClip(Size size) {
    var R = min(size.width / 2, size.height / 2);
    var r = R / scale;
    var x = size.width / 2;
    var y = size.height / 2;

    var path = Path();
    path.moveTo(0, 0);
    path.cubicTo(0, 30,0,100,100,100);
    path.lineTo(0, 100);
    return path;
  }

  @override
  bool shouldReclip(CubicToPath oldClipper) {
    return oldClipper.scale != this.scale;
  }
}

class AddPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    var path2 = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 30,50,50);
    path.lineTo(0, 50);
    path2.moveTo(50, 50);
    path2.cubicTo(50, 30,50,100,100,100);
    path2.lineTo(50, 100);
    path.addPath(path2,Offset(20,0));
    return path;
  }

  @override
  bool shouldReclip(AddPath oldClipper){
    return true;
  }
}

class HoldPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addRRect(RRect.fromLTRBAndCorners(60, 80, 60, 80,topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0),bottomLeft: Radius.circular(5.0),bottomRight: Radius.circular(5.0)));
    return path;
  }

  @override
  bool shouldReclip(HoldPath oldClipper){
    return true;
  }
}