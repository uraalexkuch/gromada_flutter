import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class StartWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic value = Get.arguments!;
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          child: Scaffold(
              resizeToAvoidBottomInset : false,
              appBar: AppBar(
                title: Text('Онлайн помічник'),
              ),
              body: Container(
                decoration: BoxDecoration(
                  color: HexColor("#005BAA"),
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 5.0),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: HexColor('#FFD947'), width: 5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            ' Якщо Ви шукаєте роботу – зверніться до державної служби  зайнятості,яка стане Вашим особистим консультантом та надійним помічником у її пошуку.\n  У  центрі  зайнятості Ви можете самостійно отримати корисну та цікаву для Вас інформацію',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: HexColor('#005BAA'),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55.h,
                        width: 100.w,
                        child: SingleChildScrollView(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed('/choicegromad/web',
                                              arguments:
                                                  "https://www.dcz.gov.ua/userSearch/vacancy");
                                        },
                                        child: Text(
                                            'ПЕРЕГЛЯНУТИ ВАКАНСІЇ ПО УКРАЇНІ',
                                            style: TextStyle(
                                                color: HexColor('#FFD947'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.0)),
                                          side: BorderSide(
                                              color: HexColor('#FFD947'),
                                              width: 5),
                                        ),
                                        color: HexColor("#005BAA"),
                                        focusColor: HexColor('#FFD947'),
                                        splashColor: HexColor('#FFD947'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/rayon');
                                        },
                                        child: Text(
                                            'ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО РАЙОНУ',
                                            style: TextStyle(
                                                color: HexColor('#FFD947'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.0)),
                                          side: BorderSide(
                                              color: HexColor('#FFD947'),
                                              width: 5),
                                        ),
                                        color: HexColor("#005BAA"),
                                        focusColor: HexColor('#FFD947'),
                                        splashColor: HexColor('#FFD947'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/gromada',
                                              arguments: value);
                                        },
                                        child: Text(
                                          'ПЕРЕГЛЯНУТИ ВАКАНСІЇ  ПО ГРОМАДІ',
                                          style: TextStyle(
                                              color: HexColor('#FFD947'),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.0)),
                                          side: BorderSide(
                                              color: HexColor('#FFD947'),
                                              width: 5),
                                        ),
                                        color: HexColor("#005BAA"),
                                        focusColor: HexColor('#FFD947'),
                                        splashColor: HexColor('#FFD947'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.w,
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        onPressed: () {
                                          Get.toNamed(
                                              '/choicegromad/vacancy/pasport');
                                        },
                                        child: Text(
                                            'ІНФОРМАЦІЯ ПРО ПІДПРИЄМСТВА РАЙОНУ',
                                            style: TextStyle(
                                                color: HexColor('#FFD947'),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center),
                                        padding: const EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.0)),
                                          side: BorderSide(
                                              color: HexColor('#FFD947'),
                                              width: 5),
                                        ),
                                        color: HexColor("#005BAA"),
                                        focusColor: HexColor('#FFD947'),
                                        splashColor: HexColor('#FFD947'),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ))
                  ]),
                ),
              )));
    });
  }
}

class ItemsButtons {
  String title;
  dynamic action;

  ItemsButtons({required this.title, required this.action});
}
