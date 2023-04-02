import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

class ArcTextWidget extends StatelessWidget {
  const ArcTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ArcText(
      radius: 110,
      text: 'ENJOY EASY ✦ MAKEUP DETECTION',
      textStyle: TextStyle(fontSize: 20, color: Colors.white),
      startAngle: pi + 1.55,
      startAngleAlignment: StartAngleAlignment.start,
      placement: Placement.outside,
      direction: Direction.clockwise);
}