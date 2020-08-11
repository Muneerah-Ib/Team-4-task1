 import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
 class BackgroundPaint extends CustomPainter {
   @override
   void paint(Canvas canvas, Size size) {
     Paint paint = Paint();
     paint.color = Style.cBackgroundGrey;
     paint.style = PaintingStyle.fill;
     Path path = Path();
     path.moveTo(size.width * 0.4, 0);
     path.quadraticBezierTo(
         size.width * 0.65, size.height * 0.28, 0, size.height * 0.43);
     // path.arcToPoint(Offset(0,size.height * 0.37),radius: Radius.circular(200));
     path.lineTo(0, 0);
     path.moveTo(size.width, size.height * 0.35);
     path.arcTo(
         Rect.fromCircle(
             center: Offset(size.width, size.height * 0.635), radius: 220),
         11 / 7,
         22 / 7,
         true);
     path.moveTo(0, size.height * 0.58);
     path.quadraticBezierTo(
         size.width * 0.5, size.height * 0.6, size.width * 0.42, size.height);
     path.lineTo(0, size.height);
     canvas.drawPath(path, paint);
   }

   @override
   bool shouldRepaint(CustomPainter oldDelegate) {
     return true;
   }
 }