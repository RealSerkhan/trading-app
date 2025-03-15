import 'package:flutter/material.dart';

class DottedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double gapLength;

  DottedBorderPainter({
    required this.color,
    this.strokeWidth = 2.0,
    this.dashLength = 5.0,
    this.gapLength = 3.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Path path = Path();

    // Draw top border
    _drawDashedLine(canvas, const Offset(0, 0), Offset(size.width, 0), paint, path);
    // Draw right border
    _drawDashedLine(canvas, Offset(size.width, 0), Offset(size.width, size.height), paint, path);
    // Draw bottom border
    _drawDashedLine(canvas, Offset(size.width, size.height), Offset(0, size.height), paint, path);
    // Draw left border
    _drawDashedLine(canvas, Offset(0, size.height), const Offset(0, 0), paint, path);
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Paint paint, Path path) {
    double distance = (end - start).distance;
    double currentPosition = 0;

    while (currentPosition < distance) {
      double nextDashEnd = currentPosition + dashLength;
      if (nextDashEnd > distance) {
        nextDashEnd = distance;
      }
      path.moveTo(start.dx + (end.dx - start.dx) * (currentPosition / distance),
          start.dy + (end.dy - start.dy) * (currentPosition / distance));
      path.lineTo(start.dx + (end.dx - start.dx) * (nextDashEnd / distance),
          start.dy + (end.dy - start.dy) * (nextDashEnd / distance));
      currentPosition += dashLength + gapLength;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
