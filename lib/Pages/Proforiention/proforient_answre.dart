import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/generated/l10n.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
//import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

const List content1 = [
  ('      Обираєте власний професійний шлях, плануєте змінити професію?\n       Хочете дізнатись більше про себе, визначити свої здібності та можливості?\n       Скористайтесь сервісами державної служби зайнятості для проходження профорієнтаційного тестування!'),
  ('ДОДАТОК «Центр професійної орієнтації»'),
  ('https://play.google.com/store/apps/details?id=com.cz.centerofproforientioncp'),
  ("image/cp.mp4"),
];

const List content2 = [
  ('      Якщо Ви бажаєте відкрити власну справу,\n Вам стануть у нагоді уроки з підготовки бізнес плану.'),
  ('ДОДАТОК «Центр розвитку підприємництва»'),
  ('https://play.google.com/store/apps/details?id=cz.com.businessconsulntigcenter'),
  ("image/crp.mp4"),
];
const List content3 = [
  ("      Діджиталізація забезпечить здатність ефективно та безпечно використовувати сучасні цифрові технології в роботі та навчанні, в професійному та особистісному розвитку."),
  ('ПЛАТФОРМA «Дія. Цифрова освіта»'),
  ('https://osvita.diia.gov.ua/'),
  ("image/diya.webm"),
];

class ProforienAnswer extends StatefulWidget {
  @override
  _ProforienAnswerState createState() => _ProforienAnswerState();
}

class _ProforienAnswerState extends State<ProforienAnswer> {
  late final dynamic value;
  late List gromada = [];
  late FlickManager flickManager;

  @override
  void initState() {
    value = Get.arguments!;
    super.initState();
    if (int.parse(value) == 1) {
      gromada = content1;
    } else {
      if (int.parse(value) == 2) {
        gromada = content2;
      } else {
        if (int.parse(value) == 3) {
          gromada = content3;
        } else
          gromada = [];
      }
    }
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(gromada[3]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      print(Device.screenType.toString());

      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text(S.of(context).app_barr_title),
              ),
              body: Container(
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
                width: 100.w,
                child: Column(children: [
                  Container(
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
                      width: 100.w,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 21.h,
                                child: Card(
                                  margin: EdgeInsets.only(
                                      left: 5.0, right: 5.0, bottom: 5.0),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: HexColor('#FFD947'), width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(14))),
                                  elevation: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      '${gromada[0]}',
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
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 88.w,
                                  height: 8.h,
                                  child: RaisedButton(
                                    elevation: 10.0,
                                    onPressed: () {
                                      Get.toNamed(
                                        '/choicegromad/web',
                                        arguments: '${gromada[2]}',
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        "${gromada[1]}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: HexColor('#FFD947'),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(14.0)),
                                      side: BorderSide(
                                          color: HexColor('#FFD947'), width: 3),
                                    ),
                                    color: HexColor("#005BAA"),
                                    focusColor: HexColor('#FFD947'),
                                    splashColor: HexColor('#FFD947'),
                                  ),
                                ),
                              ),
                              Device.screenType.toString() ==
                                      'ScreenType.tablet'
                                  ? SizedBox(
                                      height: 12.h,
                                    )
                                  : SizedBox(
                                      height: 5.h,
                                    ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, top: 16.0),
                                child: Container(
                                  height: 43.h,
                                  width: 50.w,
                                  child: FlickVideoPlayer(
                                    flickManager: flickManager,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                ]),
              )));
    });
  }
}
