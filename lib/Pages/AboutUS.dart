import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/choice_contact_controller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUS extends StatelessWidget {
  ChoiceContactController controller = ChoiceContactController();
  Widget build(BuildContext context) {
    // print(controller.listType[3].toString());
    controller.onInit();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:
              Text(S.of(context).app_barr_title, textAlign: TextAlign.center),
        ),
        body: ResponsiveSizer(builder: (context, orientation, deviceType) {
          return SafeArea(
              child: Container(
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
              child: Column(children: [
                Container(
                  height: 100.h,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 50),
                      child: Column(
                        children: [
                          Container(
                              height: 15.h,
                              child: Image(
                                  image: AssetImage('image/logodon.webp'))),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20.0,
                              bottom: 20,
                            ),
                            height: 15.h,
                            child: Center(
                              child: Text(
                                controller.listType[0],
                                //S.of(context).center_name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "Helvetica",
                                  fontSize: 20.sp,
                                  color: HexColor('#FFD947'),
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              controller.listType[1],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: "Helvetica",
                                fontSize: 18.sp,
                                color: HexColor('#FFD947'),
                              ),
                              softWrap: true,
                            ),
                          ),
                          Container(
                            width: 70.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#FFD947'), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              color: HexColor("#FFFFFF"),
                            ),
                            child: Text(
                              controller.listType[2],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: "Helvetica",
                                fontSize: 18.sp,
                                color: HexColor('#005BAA'),
                              ),
                              softWrap: true,
                            ),
                          ),
                          Row(children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 35.w,
                                  child: RaisedButton(
                                      elevation: 10.0,
                                      onPressed: () {
                                        Get.toNamed('/choicegromad/web',
                                            arguments: controller.listType[3]
                                                .toString());
                                      },
                                      padding: const EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(14.0)),
                                        side: BorderSide(
                                            color: HexColor('#FFD947'),
                                            width: 3),
                                      ),
                                      color: HexColor("#005BAA"),
                                      focusColor: HexColor('#FFD947'),
                                      splashColor: HexColor('#FFD947'),
                                      child: Text(
                                        S.of(context).center_mape,
                                        style: TextStyle(
                                          color: HexColor('#FFFFFF'),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                        ),
                                        softWrap: true,
                                      )),
                                )),
                          ])
                        ],
                      )),
                ),
              ]),
            ),
          ));
        }));
  }
}
