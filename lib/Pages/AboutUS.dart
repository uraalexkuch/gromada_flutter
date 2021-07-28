import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutUS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
        title: const Text('Онлайн помічник', textAlign: TextAlign.center),
    ),
    body:  ResponsiveSizer(builder: (context, orientation, deviceType) {
      return  SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Container(
          decoration: BoxDecoration(
            color: HexColor("#005BAA"),
          ),
          child: SingleChildScrollView(
          child: Column(
              children: [

            Container(
height: 100.h,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: Column(
                    children: [
                      Container(
                          height: 15.h,
                          child: Image(
                              image:
                              AssetImage('image/logodon.webp'))),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0,bottom: 20, ),
                        height: 15.h,
                        child: Center(

                          child: Text(
                            'Волноваський районний центр зайнятості',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: "Helvetica",
                              fontSize: 20.sp,
                              color: HexColor('#FFD947'),
                            ),
                            softWrap: true,
                          ),
                        ),
                      ),

                      Container(margin: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          '85700, м. Волноваха,вул.Обручева, 17\nтел. "гарячої лінії": \n(095)186-59-25,\n (06244)4-19-38, \ne-mail:volnovah.trud@donocz.gov.ua',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: "Helvetica",
                            fontSize: 18.sp,
                            color: HexColor('#FFD947'),
                          ),
                          softWrap: true,
                        ),
                      ),

                      Container(

                        decoration: BoxDecoration(
                        border: Border.all(
                            color: HexColor('#FFD947'),
                            width: 5),
                        borderRadius: BorderRadius.all(
                            Radius.circular(25)),
                        color: HexColor("#FFFFFF"),
                      ),
                        child: Text(
                          'Режим роботи:\nПонеділок - Четвер:\n 8.00-17.00\nбез перерви\nП\'ятниця: 8.00 - 15.45\n без перерви\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: "Helvetica",
                            fontSize: 18.sp,
                            color: HexColor('#005BAA'),
                          ),
                          softWrap: true,
                        ),
                      ),

                      Row(
                          children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 35.w,
                              child: RaisedButton(
                                  elevation: 10.0,
                                  onPressed: () {
                                    Get.toNamed('/choicegromad/web',
                                        arguments:
                                        "https://goo.gl/maps/bcnYv9VwfQqymm9r5");

                                  },
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(color: HexColor('#FFD947'), width: 5),
                                  ),
                                  color: HexColor("#005BAA"),
                                  focusColor:HexColor('#FFD947'),
                                  splashColor: HexColor('#FFD947'),
                                  child:Text("Ми на карті",
                                    style: TextStyle(
                                      color: HexColor('#FFD947'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    softWrap: true,
                                  )
                              ),
                            )),

                      ])
                    ],
                  )),
            ),

          ]),
        ),
      ));
    }));
  }
}
