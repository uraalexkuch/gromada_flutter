import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/all_vac_controller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spring/spring.dart';

class ChoiceRayon extends StatelessWidget {
  final SpringController springController =
      SpringController(initialAnim: Motion.play);
  AllVacController controller = AllVacController();
  Widget build(BuildContext context) {
    controller.savehash();
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
              width: 100.w,
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      S.of(context).choice_rayon,
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
                      height: 10.h,
                    ),
                    Spring.slide(
                      springController: springController, //optional
                      slideType: SlideType.slide_in_top, //required
                      withFade: true, // default false
                      animDuration: Duration(seconds: 3), //default 1 second
                      curve: Curves.easeIn, //default Curves.eadInOut
                      delay: Duration(milliseconds: 300), //default 0 second
                      extend: 30, //default 10
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            '/Home/choice',
                            arguments: '1',
                          );
                        },
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 70.w,
                              //define the size of text widget here
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 10),
                              padding: EdgeInsets.only(
                                  left: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 100
                                      : 60,
                                  top: 10,
                                  bottom: 10,
                                  right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                color: HexColor("#005BAA"),
                                border: Border.all(
                                    color: HexColor('#FFD947'),
                                    width: 3 // red as border color
                                    ),
                              ),
                              child: Text(
                                'Бахмутський район',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 18.sp
                                        : 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                                radius: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? 45
                                    : 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 42
                                      : 32,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.amber,
                                  child: Image.asset('image/buxm.png',
                                      height:
                                          50), // Replace this icon widget with your Image asset widget.
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Spring.slide(
                      springController: springController, //optional
                      slideType: SlideType.slide_in_left, //required
                      withFade: true, // default false
                      animDuration: Duration(seconds: 3), //default 1 second
                      curve: Curves.easeIn, //default Curves.eadInOut
                      delay: Duration(milliseconds: 300), //default 0 second
                      extend: 30,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home/choice', arguments: '2');
                        },
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 70.w,
                              //define the size of text widget here
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 10),
                              padding: EdgeInsets.only(
                                  left: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 100
                                      : 60,
                                  top: 10,
                                  bottom: 10,
                                  right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                color: HexColor("#005BAA"),
                                border: Border.all(
                                    color: HexColor('#FFD947'),
                                    width: 3 // red as border color
                                    ),
                              ),
                              child: Text(
                                'Волноваський район',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 18.sp
                                        : 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                                radius: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? 45
                                    : 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 42
                                      : 32,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.amber,
                                  child: Image.asset(
                                      'image/volnovaha-rayon.png',
                                      height:
                                          50), // Replace this icon widget with your Image asset widget.
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Spring.slide(
                      springController: springController, //optional
                      slideType: SlideType.slide_in_right, //required
                      withFade: true, // default false
                      animDuration: Duration(seconds: 3), //default 1 second
                      curve: Curves.easeIn, //default Curves.eadInOut
                      delay: Duration(milliseconds: 300), //default 0 second
                      extend: 30,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home/choice', arguments: '3');
                        },
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 70.w,
                              //define the size of text widget here
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 5),
                              padding: EdgeInsets.only(
                                  left: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 100
                                      : 60,
                                  top: 10,
                                  bottom: 10,
                                  right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                color: HexColor("#005BAA"),
                                border: Border.all(
                                    color: HexColor('#FFD947'),
                                    width: 3 // red as border color
                                    ),
                              ),
                              child: Text(
                                'Краматорський район',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 18.sp
                                        : 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                                radius: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? 45
                                    : 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 42
                                      : 32,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.amber,
                                  child: Image.asset('image/kram.png',
                                      height:
                                          60), // Replace this icon widget with your Image asset widget.
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Spring.slide(
                      springController: springController, //optional
                      slideType: SlideType.slide_in_left, //required
                      withFade: true, // default false
                      animDuration: Duration(seconds: 3), //default 1 second
                      curve: Curves.easeIn, //default Curves.eadInOut
                      delay: Duration(milliseconds: 300), //default 0 second
                      extend: 30,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home/choice', arguments: '4');
                        },
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 70.w,
                              //define the size of text widget here
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 5),
                              padding: EdgeInsets.only(
                                  left: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 100
                                      : 60,
                                  top: 10,
                                  bottom: 10,
                                  right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                color: HexColor("#005BAA"),
                                border: Border.all(
                                    color: HexColor('#FFD947'),
                                    width: 3 // red as border color
                                    ),
                              ),
                              child: Text(
                                'Маріупольский район',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 18.sp
                                        : 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                                radius: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? 45
                                    : 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 42
                                      : 32,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.amber,
                                  child: Image.asset('image/mariupol.png',
                                      height:
                                          50), // Replace this icon widget with your Image asset widget.
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Spring.slide(
                      springController: springController, //optional
                      slideType: SlideType.slide_in_bottom, //required
                      withFade: true, // default false
                      animDuration: Duration(seconds: 3), //default 1 second
                      //optional
                      animStatus: (AnimStatus status) {
                        print(status.toString());
                      },
                      curve: Curves.easeIn, //default Curves.eadInOut
                      delay: Duration(milliseconds: 300), //default 0 second
                      extend: 30, //default 10

                      //optional   delay: Duration(milliseconds: 500),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home/choice', arguments: '5');
                        },
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 70.w,
                              //define the size of text widget here
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 5),
                              padding: EdgeInsets.only(
                                  left: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 100
                                      : 60,
                                  top: 10,
                                  bottom: 10,
                                  right: 5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                color: HexColor("#005BAA"),
                                border: Border.all(
                                    color: HexColor('#FFD947'),
                                    width: 3 // red as border color
                                    ),
                              ),
                              child: Text(
                                'Покровський район',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Device.screenType.toString() ==
                                            'ScreenType.tablet'
                                        ? 18.sp
                                        : 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                                radius: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? 45
                                    : 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? 42
                                      : 32,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.amber,
                                  child: Image.asset('image/pokr.png',
                                      height:
                                          65), // Replace this icon widget with your Image asset widget.
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),

                // Container(height: 5.h, child: Center(child: CallButton())),
              ),
            ),
          ),
        ),
      );
    });
  }
}
