import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VacDetail extends StatelessWidget {
  @override
  dynamic value = Get.arguments!;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(title: new Text(S.of(context).app_barr_vac_detail)),
        body: new Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: HexColor("#005BAA"),
            ),
            child: SingleChildScrollView(
                child: new Center(
                    child: Column(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    margin: EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 5.0, top: 5.h),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: HexColor('#FFD947'), width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: 30.w,
                                      child: Text(
                                        S.of(context).vac_detail_number,
                                        style: TextStyle(
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                        ),
                                        softWrap: true,
                                      )),
                                ),
                                Container(
                                    width: 54.w,
                                    child: Text(
                                      ' ${value.numbervac}',
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    ))
                              ],
                            ),
                            Divider(),
                            Row(children: [
                              Container(
                                width: 89.w,
                                decoration: BoxDecoration(
                                  color: HexColor("#005BAA"),
                                ),
                                child: Center(
                                  child: Text(
                                    S.of(context).vac_detail_vumog,
                                    style: TextStyle(
                                      color: HexColor('#FFD947'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_posad,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.posadavac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Divider(),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_osvit,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.osvitavac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Divider(),
                            (value.specvac != '')
                                ? Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          width: 30.w,
                                          child: Text(
                                            S.of(context).vac_detail_spec,
                                            style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                            ),
                                            softWrap: true,
                                          )),
                                    ),
                                    Container(
                                        width: 54.w,
                                        child: Text(
                                          ' ${value.specvac}',
                                          style: TextStyle(
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          softWrap: true,
                                        ))
                                  ])
                                : SizedBox(
                                    height: 0,
                                  ),
                            Divider(),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_responsibility,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.taskvac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_placework,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.placevac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Row(children: [
                              Container(
                                  width: 89.w,
                                  decoration: BoxDecoration(
                                    color: HexColor("#005BAA"),
                                  ),
                                  child: Center(
                                    child: Text(
                                      S.of(context).vac_detail_conditions,
                                      style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    ),
                                  )),
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_operating_modes,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.operatinvac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_characteristics,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.characteristicsvac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_conditions,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.conditionsvac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ))
                            ]),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 30.w,
                                    child: Text(
                                      S.of(context).vac_detail_salary,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    )),
                              ),
                              Container(
                                  width: 54.w,
                                  child: Text(
                                    ' ${value.salaryvac}',
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  )),
                            ]),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: 30.w,
                                      child: Text(
                                        S.of(context).vac_detail_tel,
                                        style: TextStyle(
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                        ),
                                        softWrap: true,
                                      )),
                                ),
                                Container(
                                    width: 54.w,
                                    child: Text(
                                      ' ${value.tel}',
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                      ),
                                      softWrap: true,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ])))));
  }
}
