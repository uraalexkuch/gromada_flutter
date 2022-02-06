import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/services/ApiProviderPasportHash.dart';
import 'package:gromada/Pages/services/PasportDepository.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

const rayon01 = ["50500", "51100"];
const rayon02 = ["55900", "54300", "55700"];
const rayon03 = ["55100", "53700", "52500", "51700", "52900", "52300"];
const rayon04 = ["57300", "53300", "56100"];
const rayon05 = ["50300", "51300", "51500", "52700", "53500", "56900", "58500"];

class PasportController extends GetxController {
  List pasport = [].obs;
  List pasport0 = [].obs;
  List pasport00 = [];
  List pasport01 = [].obs;
  final HiveService hiveService = HiveService();
  List rayon = [].obs;
  RxBool isLoading = true.obs;

  @override
  Future<void> onInit() async {
    await Hive.initFlutter();
    await Hive.openBox("pasport");
    print(Get.arguments);
    rayon = int.parse(Get.arguments) == 55900 ||
            int.parse(Get.arguments) == 55901 ||
            int.parse(Get.arguments) == 55902 ||
            int.parse(Get.arguments) == 55903 ||
            int.parse(Get.arguments) == 54300 ||
            int.parse(Get.arguments) == 55700 ||
            int.parse(Get.arguments) == 55701 ||
            int.parse(Get.arguments) == 55702
        ? rayon02
        : int.parse(Get.arguments) == 50500 ||
                int.parse(Get.arguments) == 50501 ||
                int.parse(Get.arguments) == 50502 ||
                int.parse(Get.arguments) == 50503 ||
                int.parse(Get.arguments) == 50504 ||
                int.parse(Get.arguments) == 50505 ||
                int.parse(Get.arguments) == 51100
            ? rayon01
            : int.parse(Get.arguments) == 50300 ||
                    int.parse(Get.arguments) == 50301 ||
                    int.parse(Get.arguments) == 51300 ||
                    int.parse(Get.arguments) == 51500 ||
                    int.parse(Get.arguments) == 51501 ||
                    int.parse(Get.arguments) == 51502 ||
                    int.parse(Get.arguments) == 51503 ||
                    int.parse(Get.arguments) == 52700 ||
                    int.parse(Get.arguments) == 52701 ||
                    int.parse(Get.arguments) == 52702 ||
                    int.parse(Get.arguments) == 53500 ||
                    int.parse(Get.arguments) == 56900 ||
                    int.parse(Get.arguments) == 56901 ||
                    int.parse(Get.arguments) == 58500
                ? rayon05
                : int.parse(Get.arguments) == 53300 ||
                        int.parse(Get.arguments) == 53301 ||
                        int.parse(Get.arguments) == 56100 ||
                        int.parse(Get.arguments) == 56101 ||
                        int.parse(Get.arguments) == 57300
                    ? rayon04
                    : int.parse(Get.arguments) == 51700 ||
                            int.parse(Get.arguments) == 52300 ||
                            int.parse(Get.arguments) == 52301 ||
                            int.parse(Get.arguments) == 52500 ||
                            int.parse(Get.arguments) == 52900 ||
                            int.parse(Get.arguments) == 53700 ||
                            int.parse(Get.arguments) == 53701 ||
                            int.parse(Get.arguments) == 53702 ||
                            int.parse(Get.arguments) == 53703 ||
                            int.parse(Get.arguments) == 53704 ||
                            int.parse(Get.arguments) == 55100 ||
                            int.parse(Get.arguments) == 55101
                        ? rayon03
                        : [];
    print(rayon);
    fetchPasport();

    super.onInit();
  }

  void savehash() async {
    await Hive.initFlutter();
    var box = await Hive.openBox("pasporthash");
    String? pasporthash = box.get('hash').toString();
    print('Getting pasportmain ${pasporthash}');
    if (pasporthash != await ApiProviderPasportHash.fetchHash()) {
      String? pasporthash = (await ApiProviderPasportHash.fetchHash());
      box.put('hash', pasporthash);
      saveLocal();
      print('Getting pasporthashmain ${box.get('hash').toString()}');
    } else {
      print('No update!');
    }
  }

  void saveLocal() async {
    await Hive.initFlutter();
    var box = await Hive.openBox("pasporthash");
    String pasporthash = (await ApiProviderPasportHash.fetchHash());
    box.put('hash', pasporthash);
    print('Getting pasporthashsave ${box.get('hash').toString()}');
    //print('Compare ${box.get('hash').toString().compareTo(vachash)}');
    await Hive.openBox("pasport");
    final HiveService hiveService = HiveService();
    Hive.box('pasport').clear();
    pasport00 = (await PassportRepository.getAllPassport());
    await hiveService.addBoxes(pasport00, "pasport");

    Get.snackbar(
      "Онлайн помічник", // title
      "База паспортів оновлено!", // message

      messageText: Text(
        "База паспортів оновлено!",
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
    print("Getting pasport ${pasport00.length}");
  }

  void fetchPasport() async {
    // String vachash = await ApiProviderHash.fetchHash();
    //  print("Getting vachashin ${vachash}");

    pasport00 = await hiveService.getBoxes("pasport");
    print("Getting loaclstoreInfetch ${pasport00.length}");
    try {
      if (pasport00.length != 0) {
        pasport = [];
        pasport = await hiveService.getBoxes("pasport");

        print("Getting data from Hivepasport ${pasport.length}");
      } else {
        pasport = (await PassportRepository.getAllPassport());
        //saveLocal();
        print("Getting data from API");
      }
      pasport.forEach((item) {
        for (int i = 0; i < rayon.length; i++)
          if (item.gromada == rayon[i]) {
            pasport0.add(item);
            print(rayon[i]);
            print(rayon[i]);
          }
      });
    } finally {
      isLoading.value = false;
    }
    //  print(vacancy0);
    //print(vacancy0.map((item) => item.numbervac));
  }
}
