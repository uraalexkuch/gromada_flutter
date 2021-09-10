import 'package:get/get.dart';

import 'package:gromada/Pages/services/VacDepository.dart';




class AllVacController extends GetxController {
  List vacancy = [].obs;

  RxBool isLoading = true.obs;


  @override
  void onInit() {
    fetchVac();
       super.onInit();
  }

  void fetchVac() async {
    try {
      vacancy = (await VacRepository.getAllVac());
    }
    finally {
      isLoading.value = false;
    }
    print(vacancy);
  }
}