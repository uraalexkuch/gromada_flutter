import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/Navch/time_line_vaucher.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const List content1 = [
  ('Обираєте власний професійний шлях, плануєте змінити професію?\n Хочете дізнатись більше про себе, визначити свої здібності та можливості?\n Скористайтесь сервісами Державної служби зайнятості для проходження профорієнтаційного тестування!'),
  ('ДОДАТОК «Центр професійної орієнтації»'),
  ('https://play.google.com/store/apps/details?id=com.cz.centerofproforientioncp'),
  ("image/info.mp4"),
];

const List content2 = [
  ('Ваучер - документ встановленого зразка, що дає особі право на перепідготовку або підготовку  за іншою спеціальністю, підготовку на наступному рівні освіти, спеціалізацію, підвищення кваліфікації у закладах освіти чи у роботодавця.'),
  ('ДОДАТОК «Центр розвитку підприємництва»'),
  ('https://play.google.com/store/apps/details?id=cz.com.businessconsulntigcenter'),
  ("image/crp.mp4"),
];
const List content3 = [
  ("Діджиталізація забезпечить здатність ефективно та безпечно використовувати сучасні цифрові технології в роботі та навчанні, в професійному та особистісному розвитку."),
  ('ПЛАТФОРМA «Дія. Цифрова освіта»'),
  ('https://osvita.diia.gov.ua/'),
  ('https://play.google.com/store/apps/details?id=com.cz.centerofproforientioncp&hl=ru&gl=UA'),
];

class NavchAnswer extends StatefulWidget {
  @override
  _ProforienAnswerState createState() => _ProforienAnswerState();
}

class _ProforienAnswerState extends State<NavchAnswer> {
  late final dynamic value;
  late List gromada = [];

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Онлайн помічник'),
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
        child: Column(children: [
          SizedBox(
            height: 3.h,
          ),
          Container(
            child: Card(
              margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: HexColor('#FFD947'), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '     Ваучер - документ встановленого зразка, що дає особі право на перепідготовку або підготовку  за іншою спеціальністю, підготовку на наступному рівні освіти, спеціалізацію, підвищення кваліфікації у закладах освіти чи у роботодавця.',
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#005BAA"),
              ),
              width: 100.w,
              child: SuccessTimeline(),
            ),
          ),
          //SizedBox(height: 2.h)
        ]),
      ),
      floatingActionButton: Container(
        margin: new EdgeInsets.only(bottom: 7.h),
        child: SpeedDial(
            elevation: 10.sp,
            buttonSize: 30.0.sp,
            label: Text(
              "Посилання",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Helvetica",
                fontSize: 16.sp,
                color: HexColor('#FFD947'),
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Icons.live_help,
            shape: StadiumBorder(
                side: BorderSide(
                    color: Colors.white70, width: 3, style: BorderStyle.solid)),
            foregroundColor: Colors.yellow,
            backgroundColor: Colors.black12,
            //Colors.amber.shade50.withOpacity(0.7),
            overlayOpacity: 0.5,
            children: [
              SpeedDialChild(
                child: Icon(Icons.home_work_sharp),
                labelStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Helvetica",
                  fontSize: 18.sp,
                  color: HexColor('#005BAA'),
                ),
                label: "Перелік закладів освіти",
                backgroundColor: Colors.amberAccent,
                onTap: () {
                  Get.toNamed('/choicegromad/web',
                      arguments:
                          "https://mon.gov.ua/ua/ministerstvo/poslugi/licenzuvannya/perelik-navchalnih-zakladiv-yaki-mayut-pravo-zdijsnyuvati-diyalnist-u-sferi-vishoyi-osviti-ta-profesijno-tehnichnoyi-osviti-dlya-navchannya-v-yakih-mozhe-buti-vidanij-vaucher");
                },
              ),
              SpeedDialChild(
                child: Icon(Icons.document_scanner),
                labelStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Helvetica",
                  fontSize: 18.sp,
                  color: HexColor('#005BAA'),
                ),
                label: 'Перелік документів \n для отримання ваучера',
                backgroundColor: Colors.amberAccent,
                onTap: () {
                  Get.toNamed('/choicegromad/web',
                      arguments: "https://www.dcz.gov.ua/storinka/vauchery");
                },
              ),
              SpeedDialChild(
                child: Icon(Icons.corporate_fare),
                labelStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Helvetica",
                  fontSize: 18.sp,
                  color: HexColor('#005BAA'),
                ),
                label:
                    'Перелік професій, спеціальностей\n для навчання за ваучером',
                backgroundColor: Colors.amberAccent,
                onTap: () {
                  Get.toNamed('/choicegromad/web',
                      arguments:
                          "https://www.dcz.gov.ua/publikaciya/perelik-profesiy-specialnostey-dlya-navchannya-za-yakymy-mozhe-buty-vydanyy-vaucher");
                },
              ),
            ]),
      ),
    );
  }
}
