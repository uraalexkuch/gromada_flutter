import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VacDetail extends StatelessWidget {
  @override
  dynamic value = Get.arguments!;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(title: new Text('Картка вакансії')),
        body: new Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: HexColor("#005BAA"),
            ),
            child: SingleChildScrollView(
                child: new Center(
                    child: Column(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Card(
                    margin: EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 5.0, top: 5.h),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: HexColor('#FFD947'), width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
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
                                        "Номер вакансії:",
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
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                    color: HexColor("#005BAA"),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Основні вимоги до кандидата',
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
                                      "Посада:",
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
                                      "Освітній рівень:",
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
                                            "Спеціальність (назва):",
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
                                      "Завдання та обов'язки:",
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
                                      "Місце проведення робіт:",
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
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                    color: HexColor("#005BAA"),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Умови праці',
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
                                      "Режими роботи:",
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
                                      "Характеристики робіт:",
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
                                      "Умови праці:",
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
                                      "Заробітна плата:",
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
                                        "Телефон для зв'язку:",
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
