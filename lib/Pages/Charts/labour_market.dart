import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/char_controller.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LabourMarket extends StatefulWidget {
  @override
  _LabourMarketState createState() => _LabourMarketState();
}

class _LabourMarketState extends State<LabourMarket> {
  ChartController controller = ChartController();
  dynamic value;

  @override
  void initState() {
    controller.onInit();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    value = Get.arguments!;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).app_barr_title),
        ),
        body: Obx(
          () => !controller.isLoading.value
              ? Column(children: [
                  Expanded(
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
                          width: 100.w,
                          height: 100.h,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        S.of(context).labour,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: HexColor('#FFFFFF'),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 11.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour1,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].maintown}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          height: 11.h,
                                          width: 30.w,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour2,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].counttown}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 11.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour3,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor("#FFFFFF"),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].sgromada}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          height: 11.h,
                                          width: 40.w,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 5.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0,
                                                          left: 8.0,
                                                          right: 8.0,
                                                          bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour4,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].people} осіб',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RaisedButton(
                                          //  color: HexColor("#005BAA"),
                                          onPressed: () {
                                            Get.toNamed('/choicegromad/web',
                                                arguments: controller
                                                    .bezrab[0].mapgromada);
                                          },
                                          //height: 6.h,
                                          child: Column(children: [
                                            Container(
                                              height: 4.h,
                                              width: 35.w,
                                              child: Text(
                                                S.of(context).labour5,
                                                style: TextStyle(
                                                    color: HexColor('#FFFFFF'),
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                          ]),
                                          padding: const EdgeInsets.all(16),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0)),
                                            side: BorderSide(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                          ),
                                          color: HexColor("#005BAA"),
                                          focusColor: HexColor('#FFD947'),
                                          splashColor: HexColor('#FFD947'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          height: 11.h,
                                          width: 42.w,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour7,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].uridcompany}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 11.h,
                                          width: 42.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour8,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].fop} ',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          height: 11.h,
                                          width: 88.w,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 4.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour9,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '${controller.bezrab[0].economic}',
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color:
                                                          HexColor('#FFD947'),
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        S.of(context).labour9 +
                                            "\n" +
                                            "за  ${controller.bezrab[0].period} ",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: HexColor('#FFFFFF'),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              // use whichever suits your need
                                              children: [
                                                SizedBox(width: 10.w),
                                                Container(
                                                  width: 35.w,
                                                  height: 11.h,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            HexColor('#FFD947'),
                                                        width: 3),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    color: HexColor("#005BAA"),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 6.h,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 8.0,
                                                                  bottom: 0),
                                                          child: Text(
                                                            S
                                                                .of(context)
                                                                .labour11,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                color: HexColor(
                                                                    '#FFFFFF'),
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Text(
                                                            '${controller.bezrab[0].labourmarket} осіб',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                color: HexColor(
                                                                    '#FFD947'),
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),
                                                Container(
                                                  width: 35.w,
                                                  height: 11.h,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            HexColor('#FFD947'),
                                                        width: 3),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    color: HexColor("#005BAA"),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 6.h,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 8.0,
                                                                  left: 8.0,
                                                                  right: 8.0,
                                                                  bottom: 0),
                                                          child: Text(
                                                            S
                                                                .of(context)
                                                                .labour12,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                color: HexColor(
                                                                    '#FFFFFF'),
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Text(
                                                            '${controller.bezrab[0].vacancy} одиниць',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                color: HexColor(
                                                                    '#FFD947'),
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        S.of(context).labour13,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: HexColor('#FFFFFF'),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 11.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour14,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].allpraz} осіб',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 11.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor('#FFD947'),
                                                width: 3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: HexColor("#005BAA"),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour15,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.bezrab[0].bezrabnavch} осіб',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          height: 11.h,
                                          width: 30.w,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 0),
                                                  child: Text(
                                                    S.of(context).labour16,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFFFFF'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    '${controller.allgromad()} осіб',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            HexColor('#FFD947'),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )))
                ])
              : Loading(),
        ));
  }
}
