import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/ChoiceSearch/ChoiceSearch.dart';
import 'package:gromada/Pages/services/ChartsDepository.dart';
import 'package:gromada/Pages/services/PasportDepository.dart';
import 'package:gromada/Pages/services/VacDepository.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PageQuestion extends StatefulWidget {
  @override
  _PageQuestionState createState() => _PageQuestionState();
}

class _PageQuestionState extends State<PageQuestion> {
  late FlickManager flickManager;

  @override
  void initState() {
    VacRepository.getAllVac();
    PassportRepository.getAllPassport();
    ChartsRepository.getAllCharts();
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset("image/info.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic value = Get.arguments!;

    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
        title: const Text('Онлайн помічник', textAlign: TextAlign.center),
    ),
    body: ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Container(
            decoration: BoxDecoration(
              color: HexColor("#005BAA"),
            ),
            child: SingleChildScrollView(
            child:Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
                child: Container(
                  height: 35.h,
                  child: VisibilityDetector(
                    key: ObjectKey(flickManager),
                    onVisibilityChanged: (visibility) {
                      if (visibility.visibleFraction == 0 && this.mounted) {
                        flickManager.flickControlManager?.autoPause();
                      } else if (visibility.visibleFraction == 1) {
                        flickManager.flickControlManager?.autoResume();
                      }
                    },
                    child:
                    FlickVideoPlayer(
                      flickManager: flickManager,

                      flickVideoWithControls: FlickVideoWithControls(
                        controls: FlickPortraitControls(),
                      ),
                      flickVideoWithControlsFullscreen: FlickVideoWithControls(
                        controls: FlickLandscapeControls(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60.h,
                  width: 100.w,
                  child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100.w,
                                child: RaisedButton(
                                  elevation: 10.0,
                                  onPressed: () {
                                    Get.toNamed('/choicegromad/vacancy',
                                        arguments: value);
                                  },
                                  child: Text(
                                    'ПОШУК РОБОТИ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
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
                                    Get.toNamed('/choicegromad/question');
                                  },
                                  child: Text(
                                    'ПОШИРЕНІ ПИТАННЯ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
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
                                    Get.toNamed('/choicegromad/web',
                                        arguments:
                                            "https://www.dcz.gov.ua/cabinet");
                                  },
                                  child: Text(
                                    'ЕЛЕКТРОННИЙ КАБІНЕТ ШУКАЧА РОБОТИ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
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
                                    Get.toNamed('/choicegromad/web',
                                        arguments:
                                            "https://www.dcz.gov.ua/EReception/#/appointment");
                                  },
                                  child: Text(
                                    'ЗАПИСАТИСЯ НА ВІДВІДУВАННЯ ЦЗ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
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
                                    Get.toNamed('/choicegromad/employment',
                                        arguments: value);
                                  },
                                  child: Text(
                                    'СТАН РИНКУ ПРАЦІ ГРОМАДИ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
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
                                    Get.toNamed('/Home/about');
                                  },
                                  child: Text(
                                    'КОНТАКТИ ЦЕНТРУ ЗАЙНЯТОСТІ',
                                    style: TextStyle(
                                        color: HexColor('#FFD947'),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    side: BorderSide(
                                        color: HexColor('#FFD947'), width: 5),
                                  ),
                                  color: HexColor("#005BAA"),
                                  focusColor: HexColor('#FFD947'),
                                  splashColor: HexColor('#FFD947'),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              )
            ]
            )
            )
        ),
      );
    }));
  }
}
