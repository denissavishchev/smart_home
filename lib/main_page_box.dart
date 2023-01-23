import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class MainPageBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var paintFrame = Paint()
      ..color = Colors.white.withOpacity(0.4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    var pathFrame = Path()
      ..moveTo(0, size.height * 0.745)
      ..quadraticBezierTo(0, size.height * 0.81, size.width * 0.13, size.height * 0.82)
      ..quadraticBezierTo(size.width * 0.24, size.height * 0.83, size.width * 0.275, size.height * 0.87)
      ..quadraticBezierTo(size.width * 0.295, size.height * 0.937, size.width * 0.41, size.height * 0.958)
    
      ..moveTo(size.width, size.height * 0.77)
      ..quadraticBezierTo(size.width, size.height * 0.81, size.width * 0.89, size.height * 0.83)
      ..quadraticBezierTo(size.width * 0.76, size.height * 0.84, size.width * 0.73, size.height * 0.87)
      ..quadraticBezierTo(size.width * 0.7, size.height * 0.937, size.width * 0.59, size.height * 0.9585)
    
      ..moveTo(size.width, size.height * 0.596)
      ..cubicTo(size.width, size.height * 0.39,
                size.width * 0.42, size.height * 0.6,
                size.width * 0.4, size.height * 0.31)
    ;

    canvas.drawPath(pathFrame, paintFrame);


    var paint = Paint()
      ..shader = const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.2, 0.7, 1],
          colors: [
            Colors.black,
            kLightBlack,
            kLightBlack,
          ]).createShader(colors)
      ..color = const Color(0xff142329)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    var path = Path()
    ..moveTo(size.width * 0.4, 0)
    ..lineTo(size.width * 0.4, size.height *0.3)
      ..cubicTo(size.width * 0.4, size.height * 0.6,
                size.width, size.height * 0.4,
                size.width, size.height * 0.59)
      ..lineTo(size.width, size.height * 0.75)

      ..cubicTo(size.width * 0.975, size.height * 0.875,
                size.width * 0.74, size.height * 0.79,
                size.width * 0.705, size.height * 0.9)

      ..cubicTo(size.width * 0.65, size.height * 0.99,
                size.width * 0.35, size.height * 0.99,
                size.width * 0.3, size.height * 0.9)
      ..cubicTo(size.width * 0.25, size.height * 0.78,
          0, size.height * 0.85,
          0, size.height * 0.75)
    ..lineTo(0, 0);

    canvas.drawPath(path, paint);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}