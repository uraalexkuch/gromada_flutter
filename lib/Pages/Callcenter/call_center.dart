import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class CallCenter extends StatelessWidget {
  @override
  //ChoiceController controller = ChoiceController();
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
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
                    ? const EdgeInsets.all(40.0)
                    : const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          child: Text(
                              "Донецький обласний центр зайнятості\n\nМи відкриті для спілкування у зручний для Вас спосіб !",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FFD947'),
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 8.h,
                              child: GFButton(
                                onPressed: () async {
                                  _makePhoneCall('tel:0800336167');
                                  /*FlutterPhoneDirectCaller.callNumber(
                                      '0800336167');*/
                                },
                                text: " ",
                                icon: ImageIcon(
                                  AssetImage("image/callcenter.png"),
                                  color: Colors.amber,
                                  size: 8.h,
                                ),
                                // size: GFSize.MEDIUM,
                                shape: GFButtonShape.square,
                                type: GFButtonType.outline2x,
                                //   borderSide: BorderSide(color: Colors.white)
                                //color: GFColors.LIGHT
                              ),
                            )),
                        SizedBox(
                          width: 1.w,
                        ),
                        Container(
                          width: 63.w,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: HexColor('#005BAA'),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '0 800 33 61 67\n',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('#FFD947'),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "Call-центр Донецького  обласного  центру  зайнятості. ",
                                  style: TextStyle(
                                      color: HexColor('#FFD947'),
                                      fontSize: 16.sp),
                                ),
                                TextSpan(
                                  text: "\nБЕЗКОШТОВНО! ",
                                  style: TextStyle(
                                      color: HexColor('#FFD947'),
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5.h,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 8.h,
                              child: GFButton(
                                onPressed: () {
                                  Get.toNamed('/choicegromad/web',
                                      arguments:
                                          "https://www.facebook.com/donemployment/");
                                },
                                text: "",
                                textColor: HexColor('#005BAA'),
                                textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                icon: ImageIcon(
                                  AssetImage("image/fb.png"),
                                  color: Colors.white,
                                  size: 7.h,
                                ),
                                // size: GFSize.MEDIUM,
                                shape: GFButtonShape.square,
                                type: GFButtonType.outline2x,
                                //borderSide: BorderSide(color: Colors.white)
                                //color: GFColors.LIGHT
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "Офіційна сторінка у Facebook",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: "Helvetica",
                                fontSize: 16.sp,
                                color: HexColor('#FFFFFF'),
                              ),
                              softWrap: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              height: 8.h,
                              child: GFButton(
                                onPressed: () {
                                  Get.toNamed('/choicegromad/web',
                                      arguments:
                                          "https://www.youtube.com/c/DonoczGovUa");
                                },
                                text: "",

                                icon: ImageIcon(
                                  AssetImage("image/youtube.png"),
                                  color: Colors.white,
                                  size: 8.h,
                                ),
                                // size: GFSize.MEDIUM,
                                shape: GFButtonShape.square,
                                type: GFButtonType.outline2x,
                                // borderSide: BorderSide(color: Colors.white)
                                //color: GFColors.LIGHT
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                "Офіційний канал на YouTube",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "Helvetica",
                                  fontSize: 16.sp,
                                  color: HexColor('#FFFFFF'),
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              height: 8.h,
                              child: GFButton(
                                onPressed: () {
                                  launch("https://t.me/DonOczBot");
                                },
                                text: "",

                                icon: ImageIcon(
                                  AssetImage("image/telegram.png"),
                                  color: Colors.white,
                                  size: 8.h,
                                ),
                                // size: GFSize.MEDIUM,
                                shape: GFButtonShape.square,
                                type: GFButtonType.outline2x,
                                // borderSide: BorderSide(color: Colors.white)
                                //color: GFColors.LIGHT
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                "Telegram чат-бот",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "Helvetica",
                                  fontSize: 16.sp,
                                  color: HexColor('#FFFFFF'),
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              height: 8.h,
                              child: GFButton(
                                onPressed: () {
                                  Get.toNamed('/choicegromad/web',
                                      arguments: "https://don.dcz.gov.ua/");
                                },
                                text: "",
                                textColor: HexColor('#005BAA'),
                                textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                icon: ImageIcon(
                                  AssetImage("image/web.png"),
                                  color: Colors.white,
                                  size: 8.h,
                                ),
                                // size: GFSize.MEDIUM,
                                shape: GFButtonShape.square,
                                type: GFButtonType.outline2x,
                                //borderSide: BorderSide(color: Colors.white)
                                //color: GFColors.LIGHT
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                "don.dcz.gov.ua",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: "Helvetica",
                                  fontSize: 16.sp,
                                  color: HexColor('#FFFFFF'),
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
