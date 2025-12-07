import 'package:flutter/material.dart';
import 'package:my_portfolio/Constants/Colors.dart';

class CursorGlow extends StatefulWidget {
  const CursorGlow({super.key});

  @override
  CursorGlowState createState() => CursorGlowState();
}

class CursorGlowState extends State<CursorGlow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: CustomColors.primaryGlow.withValues(alpha: 0.2),
            spreadRadius: -10,
            blurRadius: 1000,
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:my_portfolio/Constants/Colors.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';

// class CursorGlow extends StatefulWidget {
//   const CursorGlow({super.key});

//   @override
//   CursorGlowState createState() => CursorGlowState();
// }

// class CursorGlowState extends State<CursorGlow> {
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       foregroundPainter: CircleBlurPainter(circleWidth: 30, blurSigma: 300.0),
//     );
//   }
// }

// class CircleBlurPainter extends CustomPainter {
//   CircleBlurPainter({required this.circleWidth, required this.blurSigma});

//   double circleWidth;
//   double blurSigma;

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint line = Paint()
//       ..color = CustomColors.primaryHighlight.withValues(alpha: 0.2)
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.fill
//       ..strokeWidth = circleWidth
//       ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);
//     Offset center = Offset(size.width / 2, size.height / 2);
//     double radius = min(size.width / 2, size.height / 2);
//     canvas.drawCircle(center, radius, line);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
