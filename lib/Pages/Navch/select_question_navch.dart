import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/call_center_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectQuestionNavch extends StatefulWidget {
  @override
  _SelectQuestionState createState() => _SelectQuestionState();
}

class _SelectQuestionState extends State<SelectQuestionNavch> {
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
            width: 100.w,
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
                      // height: 95.h,
                      width: 100.w,

                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16),
                          child: Column(
                            children: [
                              Container(
                                  height: 15.h,
                                  child: Image(
                                      image: AssetImage('image/logodon.webp'))),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100.w,
                                  child: RaisedButton(
                                    elevation: 10.0,
                                    onPressed: () {
                                      Get.toNamed('/choicegromad/profnavch',
                                          arguments: '1');
                                    },
                                    child: Text(
                                      'ПРОФЕСІЙНЕ НАВЧАННЯ',
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
                                          color: HexColor('#FFD947'), width: 3),
                                    ),
                                    color: HexColor("#005BAA"),
                                    focusColor: HexColor('#FFD947'),
                                    splashColor: HexColor('#FFD947'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100.w,
                                  child: RaisedButton(
                                    elevation: 10.0,
                                    onPressed: () {
                                      Get.toNamed('/choicegromad/navch',
                                          arguments: '2');
                                    },
                                    child: Text(
                                      'НАВЧАННЯ ЗА РАХУНОК ВАУЧЕРІВ',
                                      style: TextStyle(
                                          color: HexColor('FFFFFF'),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0)),
                                      side: BorderSide(
                                          color: HexColor('#FFD947'), width: 3),
                                    ),
                                    color: HexColor("#005BAA"),
                                    focusColor: HexColor('#FFD947'),
                                    splashColor: HexColor('#FFD947'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          )),
                    ),
                  ),
                ]),
          ));
    });
  }
}
