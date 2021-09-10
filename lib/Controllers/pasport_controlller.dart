import 'package:get/get.dart';

import 'package:gromada/Pages/services/PasportDepository.dart';

class PasportController extends GetxController {
  List pasport = [].obs;

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    fetchPasport();

    super.onInit();
  }

  void fetchPasport() async {
    try {
      pasport = (await PassportRepository.getAllPassport());
    } finally {
      isLoading.value = false;
    }
    //print(pasport.map);
  }
}
