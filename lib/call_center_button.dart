import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:marquee/marquee.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class CallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ResponsiveSizer(builder: (context, orientation, deviceType) {
          return SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: true,
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#005BAA"),
              ),
              child: Marquee(
                  text:
                      'Call-центр  Донецького  обласного  центру  зайнятості  0 800 33 61 67   ',
                  style: TextStyle(
                      color: HexColor('#FFD947'),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 10.0,
                  velocity: 100.0,
                  pauseAfterRound: Duration(milliseconds: 0),
                  startPadding: 10.0,
                  accelerationDuration: Duration(seconds: 0),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: Duration(milliseconds: 0),
                  decelerationCurve: Curves.easeInOut),
            ),
          );
        }));
  }
}
