import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class TemperatureBoxDecor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var paintTop = Paint()
      ..shader = LinearGradient(
          colors: [
            Colors.white.withOpacity(0.3),
            Colors.white,
            Colors.white.withOpacity(0.3),
          ],
      ).createShader(colors)
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    var pathTop = Path()
      ..moveTo(0, size.height * 0.14)
      ..quadraticBezierTo(size.width * 0.5, 0, size.width, size.height * 0.14)
      ..lineTo(size.width, size.height * 0.15)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.05, 0, size.height * 0.15);

    canvas.drawPath(pathTop, paintTop);


    var paintBottom = Paint()
      ..shader = LinearGradient(
        colors: [
          Colors.white.withOpacity(0.3),
          Colors.white,
          Colors.white.withOpacity(0.3),
        ],
      ).createShader(colors)
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    var pathBottom = Path()
      ..moveTo(size.width * 0.1, size.height * 0.94)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.8, size.width * 0.9, size.height * 0.94)
      ..lineTo(size.width * 0.9, size.height * 0.95)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.85, size.width * 0.1, size.height * 0.95);

    canvas.drawPath(pathBottom, paintBottom);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TemperatureBoxBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var paintShadow = Paint()
      ..shader = LinearGradient(
        colors: [
          Colors.white.withOpacity(0.0),
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.6),
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.0),
        ],
      ).createShader(colors)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..isAntiAlias = true;

    var pathShadow = Path()
      ..moveTo(size.width * 0.1, size.height * 0.67)
      ..quadraticBezierTo(size.width * 0.5, -20, size.width * 0.9, size.height * 0.62);

    canvas.drawPath(pathShadow, paintShadow);

    var paint = Paint()
      ..shader = LinearGradient(
        colors: [
          kLightBlack.withOpacity(0.1),
          kLightBlack,
          kLightBlack.withOpacity(0.1),
        ],
      ).createShader(colors)
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    var path = Path()
      ..moveTo(size.width * 0.1, size.height)
      ..quadraticBezierTo(0, size.height * 0.8, size.width * 0.2, size.height * 0.46)
      ..quadraticBezierTo(size.width * 0.5, -8, size.width * 0.9, size.height * 0.6)
      ..quadraticBezierTo(size.width, size.height * 0.8, size.width * 0.9, size.height)
      ..lineTo(size.width * 0.1, size.height);

    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}