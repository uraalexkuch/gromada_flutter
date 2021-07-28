import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gromada/Controllers/ChoiceController.dart';
import 'package:gromada/Pages/ChoiceQuestion/PageQuestion.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class Choice extends StatelessWidget {
  @override
  ChoiceController controller = ChoiceController();

  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {

      return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: const Text('Онлайн помічник', textAlign: TextAlign.center),
        ),
        body: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          child: Container(
            decoration: BoxDecoration(
              color: HexColor("#005BAA"),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  ' Оберіть відповідну громаду',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "Helvetica",
                    fontSize: 20.sp,
                    color: HexColor('#FFD947'),
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
                      border: Border.all(color: HexColor('#FFD947'), width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: HexColor("#FFFFFF"),
                    ),
                    height: 5.h,
                    width: 100.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Obx(() => DropdownButton<String>(
                            dropdownColor: HexColor("#ffffff"),
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
                                child: Text(map['name'].toString()),
                                value: map['value'],
                              );
                            }).toList(),

                            hint: Text(
                              "Оберіть відповідну громаду",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (newValue) {
                              controller.setSelected(newValue);

                            },
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
