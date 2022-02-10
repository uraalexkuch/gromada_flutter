import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Controllers/char_controller.dart';
import 'package:gromada/Pages/ChoiceQuestion/FlickPortraitControls.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spring/spring.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PageQuestion extends StatefulWidget {
  @override
  _PageQuestionState createState() => _PageQuestionState();
}

class _PageQuestionState extends State<PageQuestion> {
  late FlickManager flickManager;
  final SpringController springController = SpringController();
  ChartController controller = ChartController();
  @override
  void initState() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset("image/intronew.webm"),
    );
    FlickDisplayManager(flickManager: flickManager);
    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic value = Get.arguments!;
    controller.savehash();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:
              Text(S.of(context).app_barr_title, textAlign: TextAlign.center),
        ),
        body: ResponsiveSizer(builder: (context, orientation, deviceType) {
          return SafeArea(
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
                child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          VisibilityDetector(
                              key: ObjectKey(flickManager),
                              onVisibilityChanged: (visibility) {
                                if (visibility.visibleFraction == 0 &&
                                    this.mounted) {
                                  flickManager.flickControlManager?.autoPause();
                                } else if (visibility.visibleFraction == 1) {
                                  flickManager.flickControlManager
                                      ?.autoResume();
                                }
                              },
                              child: Padding(
                                  padding: Device.screenType.toString() ==
                                          'ScreenType.tablet'
                                      ? const EdgeInsets.all(32.0)
                                      : const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 29.h,
                                    child: FlickVideoPlayer(
                                      flickManager: flickManager,
                                      flickVideoWithControls:
                                          FlickVideoWithControls(
                                        willVideoPlayerControllerChange: false,
                                        controls: FlickControls(),
                                      ),
                                    ),
                                  ))),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                              height: 100.h,
                              width: 100.w,
                              child: Padding(
                                padding: Device.screenType.toString() ==
                                        'ScreenType.tablet'
                                    ? const EdgeInsets.only(
                                        left: 32, right: 32, top: 15)
                                    : const EdgeInsets.only(
                                        left: 5, right: 5, top: 5),
                                child: Spring.scale(
                                    springController: springController,
                                    start: 0.0, //required
                                    end: 1.0, //required
                                    animDuration:
                                        Duration(milliseconds: 3000), //def=1s,
                                    animStatus: (AnimStatus status) {
                                      print(status);
                                    },
                                    curve:
                                        Curves.easeInOut, //def=Curves.easeInOut
                                    child: GridView.count(
                                      shrinkWrap: true,
                                      crossAxisCount: 2,
                                      childAspectRatio: 2.3,
                                      mainAxisSpacing: 20.sp,
                                      crossAxisSpacing: 15.sp,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed(
                                                    '/choicegromad/employment',
                                                    arguments: value);
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#FFFFFF'),
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed(
                                                    '/choicegromad/vacancy',
                                                    arguments: value);
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice1,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed(
                                                    '/choicegromad/questionprof',
                                                    arguments: value);
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice2,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed(
                                                    '/choicegromad/questionnavch',
                                                    arguments: value);
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice3,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed('/choicegromad/web',
                                                    arguments:
                                                        "https://www.dcz.gov.ua/EReception/#/appointment");
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice4,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            height: 9.h,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed('/choicegromad/web',
                                                    arguments:
                                                        "https://www.dcz.gov.ua/cabinet");
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice5,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed(
                                                    '/choicegromad/question');
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice6,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
                                              ),
                                              color: HexColor("#005BAA"),
                                              focusColor: HexColor('#FFD947'),
                                              splashColor: HexColor('#FFD947'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 100.w,
                                            child: RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                Get.toNamed('/Home/about',
                                                    arguments: value);
                                              },
                                              child: Center(
                                                child: Text(
                                                  S.of(context).main_choice7,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#FFFFFF'),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14.0)),
                                                side: BorderSide(
                                                    color: HexColor('#FFD947'),
                                                    width: 3),
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
                            //Spacer(),
                            //Container(height: 12.h, child: Center(child: CallButton())),
                          )
                        ]))),
          );
        }));
  }
}
