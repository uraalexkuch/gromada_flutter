import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/services/ApiProviderStatHash.dart';
import 'package:gromada/Pages/services/ChartsDepository.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
    fetchVac();
    //print(gromada.length);
    print(value);
    //print(gromada);
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
      "Інформація щодо громади оновлено!",
      // message
      messageText: Text(
        "Інформація щодо громади оновлено!",
        style:
            TextStyle(fontWeight: FontWeight.bold, color: HexColor('#005BAA')),
      ),
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
      print(bezrab0.map((item) => [
            item.gromada,
            item.maintown,
            item.counttown,
            item.sgromada,
            item.people,
            item.economic,
            item.period
          ]));
      print(
        bezrab0[0],
      );
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
    print("filter:${bezrab}");
    print("filter:${bezrab.map((item) => [item.gromada, item.maintown])}");
    isLoading.value = false;
  }

  allgromad() {
    int? a = int.tryParse(bezrab[0].temporarywork);
    int? b = int.tryParse(bezrab[0].gromadwork);
    // int? a = int.tryParse("3");
    // int? b = int.tryParse("5");
    int? d;
    d = (a! + b!);
    return d.toStringAsFixed(0);
  }

  Map<String, double> data = new Map();

  Map<String, double> data1 = new Map();
}
