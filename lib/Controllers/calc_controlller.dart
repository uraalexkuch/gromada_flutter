import 'package:get/get.dart';
import 'package:gromada/Pages/Search/models/charts.dart';
import 'package:gromada/Pages/services/ChartsDepository.dart';

class CalcController extends GetxController {
  List<Charts> bezrab = [];
  late int minimum;
  RxBool isLoading = false.obs;
  var chosenValue = ''.obs;
  var zp = '0'.obs;
  @override
  void onInit() {
    fetchCalc();

    super.onInit();
  }

  void fetchCalc() async {
    try {
      bezrab = (await ChartsRepository.getAllCharts()).toList();
    } finally {
      isLoading.value = true;
    }
    // print(bezrab[0].minimum);
  }

  countDB() {
    if (isLoading.value) {
      return 0.00;
    } else
      return ((double.parse(chosenValue.value) * int.parse(zp.value)) <
              int.parse(bezrab[0].minimum)
          ? ((double.parse(chosenValue.value) * int.parse(zp.value)))
          : 9516);
  }

  countDB1() {
    if (isLoading.value) {
      return 0.00;
    } else
      return (((double.parse(chosenValue.value) * int.parse(zp.value)) * 0.8) <
              int.parse(bezrab[0].minimum)
          ? ((double.parse(chosenValue.value) * int.parse(zp.value)) * 0.8)
          : 9516);
  }

  countDB2() {
    if (isLoading.value) {
      return 0.00;
    } else
      return (((double.parse(chosenValue.value) * int.parse(zp.value)) * 0.7) <
              int.parse(bezrab[0].minimum)
          ? ((double.parse(chosenValue.value) * int.parse(zp.value)) * 0.7)
          : int.parse(bezrab[0].minimum));
  }
}
