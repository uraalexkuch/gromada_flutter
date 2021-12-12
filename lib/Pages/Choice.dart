import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/choice_controller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Choice extends StatelessWidget {
  @override
  ChoiceController controller = ChoiceController();

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#FFD947'), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: HexColor("#FFFFFF"),
                    ),
                    height: 5.h,
                    width: 100.w,
                    child: Obx(() => DropdownButton<String>(
                          dropdownColor: HexColor("#ffffff"),
                          alignment: AlignmentDirectional.centerStart,
                          //value: chosenValue,
                          //elevation: 5,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: HexColor('#005BAA'),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                          value: controller.selected.value,
                          items: controller.listType.map((map) {
                            return DropdownMenuItem(
                              child: Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                width: 70.w,
                                child: Text(map['name'].toString()),
                              ),
                              value: map['value'],
                            );
                          }).toList(),

                          hint: Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text(
                              S.of(context).choice_gromad,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          onChanged: (newValue) {
                            controller.setSelected(newValue);
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                /*SizedBox(
                    height: 25.h,
                  ),*/
                // Container(height: 5.h, child: Center(child: CallButton())),
              ]),
            ),
          ),
        ),
      ));
    });
  }
}
