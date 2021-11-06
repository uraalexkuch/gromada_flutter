import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/calc_controlller.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var chosenValue;
  var zp = '0';
  late bool load;
  CalcController controller = CalcController();
  @override
  void initState() {
    controller.onInit();
    load = !controller.isLoading.value;
    print(load);
    super.initState();
  }

  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title:
                Text(S.of(context).app_barr_title, textAlign: TextAlign.center),
          ),
          body: SafeArea(
              child: Obx(
            () => controller.isLoading.value
                ? Container(
                    height: 100.h,
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
                        padding:
                            Device.screenType.toString() == 'ScreenType.tablet'
                                ? const EdgeInsets.all(32.0)
                                : const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: HexColor('#005BAA'),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: S.of(context).calc,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#FFFFFF'),
                                      ),
                                    ),
                                    TextSpan(
                                      text: S.of(context).calc1,
                                      style: TextStyle(
                                          color: HexColor('#FFD947'),
                                          fontSize: 18.sp),
                                    ),
                                    TextSpan(
                                      text: S.of(context).calc2,
                                      style: TextStyle(
                                          color: HexColor('#FFFFFF'),
                                          fontSize: 16.sp),
                                    ),
                                    TextSpan(
                                      text: S.of(context).calc3,
                                      style: TextStyle(
                                          color: HexColor('#FFD947'),
                                          fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Text(S.of(context).calc4,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#FFFFFF'),
                                    ))),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: HexColor('#FFD947'), width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: HexColor("#FFFFFF"),
                                ),
                                height: 6.h,
                                width: 100.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: Center(
                                    child: DropdownButton<String>(
                                        dropdownColor: HexColor("#ffffff"),
                                        value: chosenValue,
                                        //elevation: 5,
                                        style: TextStyle(color: Colors.black),
                                        items: [
                                          DropdownMenuItem(
                                            child: Text(S.of(context).calc5,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#005BAA'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                            value: '0.5',
                                          ),
                                          DropdownMenuItem(
                                            child: Text(S.of(context).calc6,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#005BAA'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                            value: '0.55',
                                          ),
                                          DropdownMenuItem(
                                            child: Text(
                                              S.of(context).calc7,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: HexColor('#005BAA'),
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: '0.6',
                                          ),
                                          DropdownMenuItem(
                                            child: Text(S.of(context).calc8,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#005BAA'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                            value: '0.7',
                                          ),
                                        ],
                                        hint: Text(S.of(context).calc9,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: HexColor('#005BAA'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.justify),
                                        onChanged: (value) {
                                          setState(() {
                                            chosenValue = value!;
                                            load = false;
                                            print(chosenValue);
                                          });

                                          print(value);
                                        }),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Text(S.of(context).calc10,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#FFFFFF'),
                                    ))),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: HexColor('#FFD947'), width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: HexColor("#FFFFFF"),
                                  ),
                                  height: 6.h,
                                  width: 100.w,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(child: buildTextField()),
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Center(
                                  child: Text(S.of(context).calc11,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#FFD947'),
                                      )),
                                )),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: HexColor('#FFD947'), width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: HexColor("#FFFFFF"),
                                  ),
                                  height: 12.h,
                                  width: 100.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, bottom: 2.0),
                                        child: Text(S.of(context).calc12,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: HexColor('#005BAA'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: HexColor('#FFD947'),
                                              width: 3),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          color: HexColor("#005BAA"),
                                        ),
                                        height: 6.h,
                                        width: 100.w,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Text(
                                                '${countDB().toStringAsFixed(2)} грн',
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#FFD947'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Device.screenType.toString() == 'ScreenType.tablet'
                                ? SizedBox(
                                    height: 3.h,
                                  )
                                : SizedBox(
                                    height: 1.h,
                                  ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: HexColor('#FFD947'), width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: HexColor("#FFFFFF"),
                                  ),
                                  height: 11.h,
                                  width: 100.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, bottom: 2.0),
                                        child: Text(S.of(context).calc13,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: HexColor('#005BAA'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: HexColor('#FFD947'),
                                              width: 3),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          color: HexColor("#005BAA"),
                                        ),
                                        height: 5.h,
                                        width: 100.w,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Text(
                                                '${countDB1().toStringAsFixed(2)} грн',
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#FFD947'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Device.screenType.toString() == 'ScreenType.tablet'
                                ? SizedBox(
                                    height: 3.h,
                                  )
                                : SizedBox(
                                    height: 1.h,
                                  ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: HexColor('#FFD947'), width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: HexColor("#FFFFFF"),
                                  ),
                                  height: 11.h,
                                  width: 100.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0, bottom: 2.0),
                                        child: Text(S.of(context).calc14,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: HexColor('#005BAA'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: HexColor('#FFD947'),
                                              width: 3),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          color: HexColor("#005BAA"),
                                        ),
                                        height: 5.h,
                                        width: 100.w,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Text(
                                                '${countDB2().toStringAsFixed(2)} грн',
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: HexColor('#FFD947'),
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                : Loading(),
          )));
    });
  }

  TextField buildTextField() {
    return TextField(
        style: TextStyle(
            decoration: TextDecoration.none,
            color: HexColor('#005BAA'),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintStyle: TextStyle(
                decoration: TextDecoration.none,
                color: HexColor('#005BAA'),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
            // textAlign: TextAlign.justify,
            hintText: S.of(context).calc15),
        onChanged: (value) {
          setState(
            () {
              //int val = int.tryParse(value) ?? defaultValue;
              int? parsedValue2 = int.tryParse(value);
              if (parsedValue2 == null) {
                print(parsedValue2); // null
                zp = '0';
              } else {
                zp = value;
              }
              ;
              print(zp);
            },
          );
        });
  }

  countDB() {
    print(controller.bezrab[0].minimum * 4);
    if (load) {
      return 0.00;
    } else
      return ((double.parse(chosenValue) * int.parse(zp)) <
              int.parse(controller.bezrab[0].minimum) * 4
          ? ((double.parse(chosenValue) * int.parse(zp)))
          : int.parse(controller.bezrab[0].minimum) * 4);
  }

  countDB1() {
    if (load) {
      return 0.00;
    } else
      return (((double.parse(chosenValue) * int.parse(zp)) * 0.8) <
              int.parse(controller.bezrab[0].minimum) * 4
          ? ((double.parse(chosenValue) * int.parse(zp)) * 0.8)
          : int.parse(controller.bezrab[0].minimum) * 4);
  }

  countDB2() {
    if (load) {
      return 0.00;
    } else
      return (((double.parse(chosenValue) * int.parse(zp)) * 0.7) <
              int.parse(controller.bezrab[0].minimum) * 4
          ? ((double.parse(chosenValue) * int.parse(zp)) * 0.7)
          : int.parse(controller.bezrab[0].minimum) * 4);
  }
}
