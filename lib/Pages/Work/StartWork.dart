import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StartWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic value = Get.arguments!;
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: Device.screenType.toString() == 'ScreenType.tablet'
                        ? const EdgeInsets.all(32.0)
                        : const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 5.0),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: HexColor('#FFD947'), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          elevation: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              S.of(context).welcome_work,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: HexColor('#005BAA'),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed('/choicegromad/web',
                                              arguments:
                                                  "https://www.dcz.gov.ua/userSearch/vacancy");
                                        },
                                        child: Text(
                                            S.of(context).work_buttton_choice_0,
                                            style: TextStyle(
                                                color: HexColor('#FFFFFF'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14)),
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
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/rayon',
                                              arguments: value);
                                        },
                                        child: Text(
                                            S.of(context).work_buttton_choice_1,
                                            style: TextStyle(
                                                color: HexColor('#FFFFFF'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14)),
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
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/gromada',
                                              arguments: value);
                                        },
                                        child: Text(
                                          S.of(context).work_buttton_choice_2,
                                          style: TextStyle(
                                              color: HexColor('#FFFFFF'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14)),
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
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/pasport');
                                        },
                                        child: Text(
                                            S.of(context).work_buttton_choice_3,
                                            style: TextStyle(
                                                color: HexColor('#FFFFFF'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14)),
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
                                  SizedBox(
                                    height: 5.h,
                                  ),

                                  ///Spacer(),
                                ],
                              )),
                        ),
                      ),

                      // Container(height: 12.h, child: Center(child: CallButton())),
                    ]),
                  ),
                ),
              )));
    });
  }
}

class ItemsButtons {
  String title;
  dynamic action;

  ItemsButtons({required this.title, required this.action});
}
