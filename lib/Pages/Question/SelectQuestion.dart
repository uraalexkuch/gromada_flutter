import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
          title: Text(S.of(context).app_barr_title),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                tileMode: TileMode.mirror,
                begin: Alignment(0.0, -0.3),
                end: Alignment(1.0, 0.1),
                colors: [
                  Color(0xff100b63),
                  Color(0xff2196f3),
                ],
                stops: [
                  0,
                  1,
                ],
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100.w,
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 16),
                            child: Column(
                              children: [
                                Container(
                                    height: 14.h,
                                    child: Image(
                                        image:
                                            AssetImage('image/logodon.webp'))),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
                                      ),
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
                                        S.of(context).select_question,
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF'),
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
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
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
                                        S.of(context).select_question1,
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF'),
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
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
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
                                        S.of(context).select_question2,
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF'),
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
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
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
                                        S.of(context).select_question3,
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF'),
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
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
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
                                        S.of(context).select_question4,
                                        style: TextStyle(
                                            color: HexColor('#FFFFFF'),
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
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                    ),
                                  ),
                                ),
                                Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? SizedBox(
                                        height: 4.h,
                                      )
                                    : SizedBox(
                                        height: 1.h,
                                      ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.w,
                                    child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/callcenter');
                                      },
                                      child: Text(
                                        S.of(context).select_question4,
                                        style: TextStyle(
                                            color: HexColor('#005BAA'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(35.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFFFFF'),
                                            width: 3),
                                      ),
                                      color: HexColor("#FFD947"),
                                      focusColor: HexColor('#005BAA'),
                                      splashColor: HexColor('#005BAA'),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ])),
      );
    });
  }
}
