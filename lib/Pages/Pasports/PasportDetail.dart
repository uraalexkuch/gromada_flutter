import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/ChoiceQuestion/WebView.dart';
import 'package:gromada/Pages/Search/models/pasport.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PassportDetail extends StatelessWidget {
  dynamic value = Get.arguments!;

  @override
  Widget build(BuildContext context) {
    print(value.map);
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(title: new Text('Картка роботодавця')),
        body: new Container(
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
                                      ' ${value.namerobot}',
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
                                      "Вид економічної діяльності",
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
                                    ' ${value.kved}',
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
                                      "Юридична адреса ПОУ",
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
                                    ' ${value.adressur}',
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
                                      "Фактична адреса ПОУ",
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
                                    ' ${value.adresreal}',
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
                                      "Основний професійний склад працівників",
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
                                    ' ${value.profesia}',
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
                                      "Чисельність працівників",
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
                                    ' ${value.shtat}',
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
                                      "Режим роботи, змінність",
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
                                    ' ${value.timework}',
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
                                      "Ринкоутворююче",
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
                                    ' ${value.big}',
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
                                      "Транспортна доступність",
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
                                    ' ${value.transport}',
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
                                      "ПІБ керівника",
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
                                    ' ${value.nameboss}',
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
                                      "Наявність гуртожитку, житла",
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
                                    ' ${value.house}',
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
                                      "Телефон відділу кадрів",
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
                                    ' ${value.telhr}',
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
                                      "Телефон рекрутера",
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
                                    ' ${value.telrec}',
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
                                    width: 35.w,
                                    child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed('/choicegromad/web',
                                              arguments: value.map as String);
                                          print(value.map);
                                        },
                                        child: Text(
                                          "переглянути на карті",
                                          style: TextStyle(
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          softWrap: true,
                                        )),
                                  )),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  )),
            ])))));
  }
}
