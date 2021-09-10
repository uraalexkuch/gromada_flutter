import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/Navch/time_line_vaucher.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfNavchAnswer extends StatefulWidget {
  @override
  _ProforienAnswerState createState() => _ProforienAnswerState();
}

class _ProforienAnswerState extends State<ProfNavchAnswer> {
  late final dynamic value;
  late List gromada = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Онлайн помічник'),
      ),
      body: Container(
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
          child: Column(children: [
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: HexColor('#FFD947'), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '     Якщо Ви бажаєте отримати гідну роботу та досягти успіху – скористайтеся можливістю пройти професійне навчання шляхом:' +
                          '\n' +
                          '\n' +
                          "•	професійної підготовки" +
                          '\n' +
                          "•	перепідготовки" +
                          '\n' +
                          "•	підвищення кваліфікації",
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: HexColor('#FFD947'), width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '     Професійне навчання здійснюється у закладах професійної (професійно-технічної), фахової передвищої та вищої освіти, у тому числі у центрах професійно-технічної освіти державної служби зайнятості,  на підприємствах, в установах та організаціях незалежно від форми власності, виду діяльності та господарювання або безпосередньо у роботодавців - замовників кадрів.'
                              '\n' +
                          '     Для організації професійного навчання  зареєстрованих безробітних та (або) їх проживання в період такого навчання центр зайнятості здійснює відбір закладів освіти.'
                              '\n' +
                          '\n' +
                          '     За додатковою інформацією звертайтесь до найближчого центру зайнятості',
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
            ),
          ]),
        ),
      ),
      floatingActionButton: SpeedDial(
          label: Text(
            "Посилання",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: "Helvetica",
              fontSize: 16.sp,
              color: HexColor('#005BAA'),
            ),
          ),
          icon: Icons.live_help,
          backgroundColor: Colors.amber,
          children: [
            SpeedDialChild(
              child: Icon(Icons.home_work_sharp),
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Helvetica",
                fontSize: 16.sp,
                color: HexColor('#005BAA'),
              ),
              label: "Перелік закладів освіти",
              backgroundColor: Colors.amberAccent,
              onTap: () {
                Get.toNamed('/choicegromad/web',
                    arguments:
                        "https://www.dcz.gov.ua/publikaciya/zvedenyy-perelik-zakladiv-");
              },
            ),
            SpeedDialChild(
              child: Icon(Icons.document_scanner),
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Helvetica",
                fontSize: 16.sp,
                color: HexColor('#005BAA'),
              ),
              label:
                  'Перелік центрів професійно-технічної\n освіти державної служби зайнятості ',
              backgroundColor: Colors.amberAccent,
              onTap: () {
                Get.toNamed('/choicegromad/web',
                    arguments:
                        "https://www.dcz.gov.ua/publikaciya/zvedenyy-perelik-zakladiv-profesiynoyi-profesiyno-tehnichnoyi-osvity-derzhavnoyi-sluzhby");
              },
            ),
          ]),
    );
  }
}
