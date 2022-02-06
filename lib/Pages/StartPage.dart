import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/network_controlller.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spring/spring.dart';

class StartPage extends StatelessWidget {
  final SpringController springController = SpringController();

  NetworkController controller = NetworkController();
  @override
  Widget build(BuildContext context) {
    controller.onInit();

    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
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
          child: Column(children: [
            Container(
              height: 40.h,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
                  child: Column(
                    children: [
                      Text(
                        S.of(context).welcome,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Helvetica",
                          fontSize: 20.sp,
                          color: HexColor('#FFFFFF'),
                        ),
                        softWrap: true,
                      ),
                      Text(
                        S.of(context).welcome_two,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Helvetica",
                          fontSize: 20.sp,
                          color: HexColor('#FFFFFF'),
                        ),
                        softWrap: true,
                      )
                    ],
                  )),
            ),
            Container(
              child: Center(
                child: Spring.scale(
                    springController: springController,
                    start: 0.0, //required
                    end: 1.0, //required
                    animDuration: Duration(milliseconds: 2000), //def=1s,
                    animStatus: (AnimStatus status) {
                      print(status);
                    },
                    curve: Curves.easeInOut, //def=Curves.easeInOut
                    child: RaisedButton(
                      elevation: 10.0,
                      onPressed: () {
                        Get.toNamed('/Home/choicerayon');
                      },
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        side: BorderSide(color: HexColor('#FFD947'), width: 3),
                      ),
                      color: HexColor("#005BAA"),
                      focusColor: HexColor('#FFD947'),
                      splashColor: HexColor('#FFD947'),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'image/logodon.webp',
                            height: 20.h,
                            width: 40.w,
                          ),
                          Text(
                            S.of(context).button_start,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ]),
        ),
      );
    });
  }
}
