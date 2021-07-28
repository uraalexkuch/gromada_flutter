import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return  SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Container(
             decoration: BoxDecoration(
            color: HexColor("#005BAA"),
          ),
          child: Column(children: [

            Container(
              height: 40.h,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
                  child: Column(
                    children: [
                      Text(
                        'Вітаємо!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Helvetica",
                          fontSize: 20.sp,
                          color: HexColor('#FFD947'),
                        ),
                        softWrap: true,
                      ),
                      Text(
                        '     До  Ваших послуг онлайн помічник з питань зайнятості !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Helvetica",
                          fontSize: 20.sp,
                          color: HexColor('#FFD947'),
                        ),
                        softWrap: true,
                      )
                    ],
                  )),
            ),
            Container(
              child: Center(
                child: RaisedButton(
                  elevation: 10.0,
                  onPressed: () {
                    Get.toNamed('/Home/choice');
                  },
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    side: BorderSide(color: HexColor('#FFD947'), width: 5),
                  ),
                  color: HexColor("#005BAA"),
                  focusColor:HexColor('#FFD947'),
                  splashColor: HexColor('#FFD947'),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'image/logodon.webp',
                        height: 20.h,
                        width: 40.w,
                      ),
                      Text(
                        ' Розпочати',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: HexColor('#FFD947'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      );
    });
  }
}
