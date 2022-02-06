import 'dart:ui';

import 'package:awesome_select/awesome_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gromada/Controllers/choice_controller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Choice extends StatelessWidget {
  @override
  ChoiceController controller = ChoiceController();
  bool? choiceDivider;

  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:
              Text(S.of(context).app_barr_title, textAlign: TextAlign.center),
        ),
        body: SafeArea(
          child: Container(
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
            child: Padding(
              padding: Device.screenType.toString() == 'ScreenType.tablet'
                  ? const EdgeInsets.all(32.0)
                  : const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  S.of(context).choice_gromad,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Helvetica",
                    fontSize: 20.sp,
                    color: HexColor('#FFFFFF'),
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                    width: 95.w,
                    child: SingleChildScrollView(
                      child: SmartSelect.single(
                          title: (S.of(context).choice_gromad),
                          choiceActiveStyle: S2ChoiceStyle(
                            color: Colors.lightBlueAccent,
                            titleStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Device.screenType.toString() ==
                                      'ScreenType.tablet'
                                  ? 18.sp
                                  : 16.sp,
                              color: Colors.lightGreen,
                            ),
                          ),
                          //showCheckmark:true,
                          choiceDivider: true,
                          choiceStyle: S2ChoiceStyle(
                            titleStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Device.screenType.toString() ==
                                      'ScreenType.tablet'
                                  ? 18.sp
                                  : 16.sp,
                              color: Colors.indigo,
                            ),
                            subtitleStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Device.screenType.toString() ==
                                      'ScreenType.tablet'
                                  ? 18.sp
                                  : 16.sp,
                              color: Colors.indigo,
                            ),
                            showCheckmark: true,
                            //  highlightColor: Colors.deepPurple,
                            // accentColor: Colors.lightGreen,
                            color: Colors.lightBlueAccent,
                          ),
                          //  choiceType: ,

                          selectedValue: controller.selected.value,
                          choiceItems: controller.listType,
                          onChange: (selectedValue) {
                            controller
                                .setSelected(selectedValue.value.toString());
                          },
                          modalType: S2ModalType.popupDialog,
                          tileBuilder: (context, state) {
                            return Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: HexColor('#FFD947'), width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                color: HexColor("#FFFFFF"),
                              ),
                              child: S2Tile.fromState(state,
                                  title: Text(
                                    S.of(context).choice_gromad,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Device.screenType.toString() ==
                                              'ScreenType.tablet'
                                          ? 18.sp
                                          : 16.sp,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                  isTwoLine: true,
                                  hideValue: true,
                                  enabled: true,
                                  selected: true,
                                  leading: CircleAvatar(
                                    radius: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 60
                                        : 35,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.amber,
                                    child: Image.asset(
                                      controller.sourse.toString(),
                                      height: 70,
                                    ),

                                    //NetworkImage(
                                    //  'https://source.unsplash.com/xsGxhtAsfSA/100x100',
                                    //),
                                  )),
                            );
                          }),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20.h,
                      child: Lottie.asset(
                          'image/93863-3d-loading-cube-animation.json'),
                    )),

                SizedBox(
                  height: 10.h,
                ),

                // Container(height: 5.h, child: Center(child: CallButton())),
              ]),
            ),
          ),
        ),
      ));
    });
  }
}
