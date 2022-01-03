import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/services/ApiProviderStatHash.dart';
import 'package:gromada/Pages/services/ChartsDepository.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

List grom55900 = [
  '55900',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];

List grom55901 = [
  '55901',
  '5',
  "343.9 км 2 ",
  "19495",
  "17305",
  "2190",
  "Ольгинка",
  "сільське господарство, добувна промисловість"
];
List grom55902 = [
  '55902',
  '13',
  "663.0 км 2 ",
  "12382",
  "0",
  "012382",
  "Хлібодарівка",
  "сільське господарство, добувна промисловість "
];
List grom55903 = [
  '55903',
  '5',
  "415.4 км 2 ",
  "12004",
  "4261",
  "7743",
  "Мирне",
  "сільське господарство"
];

List grom54300 = [
  '54300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom55700 = [
  '55700',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom55701 = [
  '55701',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom55702 = [
  '55702',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50300 = [
  '50300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50301 = [
  '50301',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];

List grom50500 = [
  '50500',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50501 = [
  '50501',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50502 = [
  '50502',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50503 = [
  '50503',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50504 = [
  '50504',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom50505 = [
  '50505',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51100 = [
  '51100',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51300 = [
  '51300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51500 = [
  '51500',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51501 = [
  '51501',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51502 = [
  '51502',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51503 = [
  '51503',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom51700 = [
  '51700',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52300 = [
  '52300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52301 = [
  '52301',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52500 = [
  '52500',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52700 = [
  '52700',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52701 = [
  '52701',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52702 = [
  '52702',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom52900 = [
  '52900',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53300 = [
  '53300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53301 = [
  '53301',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53500 = [
  '53500',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53700 = [
  '53700 ',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53701 = [
  '55900',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53702 = [
  '53702',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53703 = [
  '53703',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom53704 = [
  '53704',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom55100 = [
  '55100',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom55101 = [
  '55101',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom56100 = [
  '56100',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom56101 = [
  '56101',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom56900 = [
  '56900',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom56901 = [
  '56901',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom57300 = [
  '57300',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];
List grom58500 = [
  '58500',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];

class ChartController extends GetxController {
  late dynamic value;
  List stat = [];
  RxBool isLoading = true.obs;
  late List gromada = [].obs;
  List bezrab = [].obs;
  List bezrab0 = [];
  final HiveService hiveService = HiveService();
  @override
  Future<void> onInit() async {
    await Hive.initFlutter();
    await Hive.openBox("stat");
    value = Get.arguments;
    gromada = int.parse(value) == 50300
        ? grom50300
        : int.parse(value) == 50301
            ? grom50301
            : int.parse(value) == 50500
                ? grom50500
                : int.parse(value) == 50501
                    ? grom50501
                    : int.parse(value) == 50502
                        ? grom50502
                        : int.parse(value) == 50503
                            ? grom50503
                            : int.parse(value) == 50504
                                ? grom50504
                                : int.parse(value) == 50505
                                    ? grom50505
                                    : int.parse(value) == 51100
                                        ? grom51100
                                        : int.parse(value) == 51300
                                            ? grom51300
                                            : int.parse(value) == 51500
                                                ? grom51500
                                                : int.parse(value) == 51501
                                                    ? grom51501
                                                    : int.parse(value) == 51502
                                                        ? grom51502
                                                        : int.parse(value) ==
                                                                51503
                                                            ? grom51503
                                                            : int.parse(value) ==
                                                                    51700
                                                                ? grom51700
                                                                : int.parse(value) ==
                                                                        52300
                                                                    ? grom52300
                                                                    : int.parse(value) ==
                                                                            52301
                                                                        ? grom52301
                                                                        : int.parse(value) ==
                                                                                52500
                                                                            ? grom52500
                                                                            : int.parse(value) == 52700
                                                                                ? grom52700
                                                                                : int.parse(value) == 52701
                                                                                    ? grom52701
                                                                                    : int.parse(value) == 52702
                                                                                        ? grom52702
                                                                                        : int.parse(value) == 52900
                                                                                            ? grom52900
                                                                                            : int.parse(value) == 53300
                                                                                                ? grom53300
                                                                                                : int.parse(value) == 53301
                                                                                                    ? grom53301
                                                                                                    : int.parse(value) == 53500
                                                                                                        ? grom53500
                                                                                                        : int.parse(value) == 53700
                                                                                                            ? grom53700
                                                                                                            : int.parse(value) == 53701
                                                                                                                ? grom53701
                                                                                                                : int.parse(value) == 53702
                                                                                                                    ? grom53702
                                                                                                                    : int.parse(value) == 53703
                                                                                                                        ? grom53703
                                                                                                                        : int.parse(value) == 53704
                                                                                                                            ? grom53704
                                                                                                                            : int.parse(value) == 54300
                                                                                                                                ? grom54300
                                                                                                                                : int.parse(value) == 55100
                                                                                                                                    ? grom55100
                                                                                                                                    : int.parse(value) == 55101
                                                                                                                                        ? grom55101
                                                                                                                                        : int.parse(value) == 55700
                                                                                                                                            ? grom55700
                                                                                                                                            : int.parse(value) == 55701
                                                                                                                                                ? grom55701
                                                                                                                                                : int.parse(value) == 55702
                                                                                                                                                    ? grom55702
                                                                                                                                                    : int.parse(value) == 55900
                                                                                                                                                        ? grom55900
                                                                                                                                                        : int.parse(value) == 55901
                                                                                                                                                            ? grom55901
                                                                                                                                                            : int.parse(value) == 55902
                                                                                                                                                                ? grom55902
                                                                                                                                                                : int.parse(value) == 55903
                                                                                                                                                                    ? grom55903
                                                                                                                                                                    : int.parse(value) == 56100
                                                                                                                                                                        ? grom56100
                                                                                                                                                                        : int.parse(value) == 56101
                                                                                                                                                                            ? grom56101
                                                                                                                                                                            : int.parse(value) == 56900
                                                                                                                                                                                ? grom56900
                                                                                                                                                                                : int.parse(value) == 56901
                                                                                                                                                                                    ? grom56901
                                                                                                                                                                                    : int.parse(value) == 57300
                                                                                                                                                                                        ? grom57300
                                                                                                                                                                                        : int.parse(value) == 58500
                                                                                                                                                                                            ? grom58500
                                                                                                                                                                                            : [];
    fetchVac();

    //print(gromada.length);
    print(value);
    print(gromada);
    super.onInit();
  }

  void savehash() async {
    await Hive.initFlutter();
    var box = await Hive.openBox("stathash");
    String? stathash = box.get('hash').toString();
    print('Getting main ${stathash}');
    if (stathash != await ApiProviderStatHash.fetchHash()) {
      String? vachash = (await ApiProviderStatHash.fetchHash());
      box.put('hash', vachash);
      saveLocal();
      print('Getting stathashmain ${box.get('hash').toString()}');
    } else {
      print('No update!');
    }
  }

  void saveLocal() async {
    await Hive.initFlutter();
    var box = await Hive.openBox("stathash");
    String stathash = (await ApiProviderStatHash.fetchHash());
    box.put('hash', stathash);
    print('Getting hashsave ${box.get('hash').toString()}');
    await Hive.openBox("stat");
    final HiveService hiveService = HiveService();
    Hive.box('stat').clear();
    stat = await ChartsRepository.getAllCharts();
    hiveService.addBoxes(stat, "stat");
    Get.snackbar(
      "Онлайн помічник", // title
      "Інформація щодо громади оновлено!", // message
      icon: Icon(Icons.alarm),
      shouldIconPulse: true,
      colorText: HexColor('#005BAA'),
      backgroundColor: Colors.amber,
      barBlur: 20,

      isDismissible: true,
      duration: Duration(seconds: 3),
    );
    print("Getting vac ${stat.length}");
  }

  void fetchVac() async {
    stat = await hiveService.getBoxes("stat");
    // print("Getting loaclstoreIncharts ${stat.length}");
    if (stat.length != 0) {
      // print("Getting  ${await hiveService.getBoxes("stat")}");
      // print("Getting2  ${(await ChartsRepository.getAllCharts()).toList()}");
      bezrab0 = await hiveService.getBoxes("stat");

      print("Getting data from HiveCharts");
    } else {
      bezrab0 = await ChartsRepository.getAllCharts();
      //saveLocal();
      print("Getting data from API");
    }

    //bezrab = bezrab0.where((item) =>(int.tryParse(item.gromada)==int.tryParse(value)) as List<Charts>);
    bezrab = bezrab0
        .where((item) =>
            (item.gromada.toLowerCase().contains(value.toLowerCase())))
        .toList();
    //print(bezrab[0]);

    isLoading.value = false;
  }

  allgromad() {
    int? a = int.tryParse(bezrab[0].temporarywork);
    int? b = int.tryParse(bezrab[0].gromadwork);

    int? d;
    d = (a! + b!);
    return d.toStringAsFixed(0);
  }

  Map<String, double> data = new Map();

  Map<String, double> data1 = new Map();
}
