import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/Question/Calculator.dart';
import 'package:gromada/Pages/Question/ShablonAnswer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flick_video_player/flick_video_player.dart';

class SelectQuestion extends StatefulWidget {
  @override
  _SelectQuestionState createState() => _SelectQuestionState();
}

class _SelectQuestionState extends State<SelectQuestion> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Онлайн помічник'),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: HexColor("#005BAA"),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 95.h,
                      width: 100.w,
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 16),
                            child: Column(
                              children: [
                                Container(
                                    height: 15.h,
                                    child: Image(
                                        image:
                                            AssetImage('image/logodon.webp'))),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/answer',
                                            arguments: '1');
                                      },
                                      child: Text(
                                        'ПІДХОДЯЩА РОБОТА',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/answer',
                                            arguments: '2');
                                      },
                                      child: Text(
                                        'ТЕРМІН ЗВЕРНЕННЯ ПІСЛЯ ЗВІЛЬНЕННЯ',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/answer',
                                            arguments: '3');
                                      },
                                      child: Text(
                                        'ДОКУМЕНТИ ДЛЯ РЕЄСТРАЦІЇ',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/answer',
                                            arguments: '4');
                                      },
                                      child: Text(
                                        'РОЗМІР ДОПОМОГИ',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/answer',
                                            arguments: '5');
                                      },
                                      child: Text(
                                        'ПОРЯДОК ВИПЛАТИ',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/calculator');
                                      },
                                      child: Text(
                                        'КАЛЬКУЛЯТОР ДОПОМОГИ',
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 5),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  )
                ])),
      );
    });
  }
}
