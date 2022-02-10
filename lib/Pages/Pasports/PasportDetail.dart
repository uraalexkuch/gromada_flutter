import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PassportDetail extends StatelessWidget {
  dynamic value = Get.arguments!;

  @override
  Widget build(BuildContext context) {
    print(value);
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(title: new Text(S.of(context).pasport_title)),
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
              Card(
                margin: Device.screenType.toString() == 'ScreenType.tablet'
                    ? const EdgeInsets.only(
                        left: 32.0, right: 32.0, bottom: 32.0, top: 32.0)
                    : const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: HexColor('#FFD947'), width: 5),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30.w,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    S.of(context).pasport,
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  ),
                                )),
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
                              width: 84.w,
                              decoration: BoxDecoration(
                                color: HexColor("#005BAA"),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).pasport0,
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport1,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport2,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport3,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport4,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport5,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                              width: 84.w,
                              decoration: BoxDecoration(
                                color: HexColor("#005BAA"),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).pasport6,
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport7,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport8,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport9,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport10,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport11,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport12,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                          Container(
                              width: 30.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  S.of(context).pasport13,
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  softWrap: true,
                                ),
                              )),
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
                      ],
                    ),
                  ),
                ),
              ),
            ])))));
  }
}
