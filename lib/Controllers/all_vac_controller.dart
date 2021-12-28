import 'package:get/get.dart';
import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/Pages/services/VacDepository.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const rayon01 = ["505", "511"];
const rayon02 = ["559", "543", "557"];
const rayon03 = ["551", "537", "525", "517", "529", "523"];
const rayon04 = ["573", "533", "561"];
const rayon05 = ["503", "513", "515", "527", "535", "569", "585"];
const httpSync = "httpSync";

class AllVacController extends GetxController {
  List vacancy = [].obs;
  List vacancy0 = [].obs;
  List vacancy00 = [].obs;
  List vacancy01 = [].obs;
  RxBool isLoading = true.obs;
  final HiveService hiveService = HiveService();
  List gromada = [].obs;

  @override
  Future<void> onInit() async {
    // Hive.registerAdapter(VacAdapter());
    List vacancy00 = [];
    await Hive.initFlutter();
    Hive.registerAdapter(VacAdapter());
    await Hive.openBox("vacancy");
    final HiveService hiveService = HiveService();
    vacancy00 = await hiveService.getBoxes("vacancy");
    print("Getting loaclstore ${vacancy00.length}");
    gromada = int.parse(Get.arguments) == 55900 ||
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

    fetchVac();

    super.onInit();
  }

  void saveLocal() async {
    await Hive.initFlutter();
    Hive.registerAdapter(VacAdapter());
    await Hive.openBox("vacancy");
    final HiveService hiveService = HiveService();
    Hive.box('vacancy').clear();
    vacancy00 = (await VacRepository.getAllVac());
    hiveService.addBoxes(vacancy00, "vacancy");
    print("Getting vac ${vacancy00.length}");
    //getLocal();
  }

  getLocal() async {
    vacancy01 == null;
    vacancy01 = await hiveService.getBoxes("vacancy");
    vacancy01.length != null ? isLoading.value = false : isLoading.value = true;
    print("Getting data from Hive");
    print("Getting vacancy from Hive ${vacancy01.length}");
    // fetchVac();
  }

  fetchVac() async {
    vacancy00 = await hiveService.getBoxes("vacancy");
    print("Getting loaclstoreInfetch ${vacancy00.length}");
    try {
      if (vacancy00.length != 0) {
        vacancy = await hiveService.getBoxes("vacancy");

        print("Getting data from Hive1");
      } else {
        vacancy = (await VacRepository.getAllVac());
        //saveLocal();
        print("Getting data from API");
      }
      vacancy.forEach((item) {
        for (int i = 0; i < gromada.length; i++)
          // print(gromada.length);
          if (item.numbervac.substring(1, 4) == gromada[i]) {
            vacancy0.add(item);
          }
      });
    } finally {
      isLoading.value = false;
    }
    print(vacancy0);
    //print(vacancy0.map((item) => item.numbervac));

    //getLocal();
  }
}
