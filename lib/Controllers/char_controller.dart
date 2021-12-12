import 'package:get/get.dart';
import 'package:gromada/Pages/Search/models/charts.dart';
import 'package:gromada/Pages/services/ChartsDepository.dart';

List data55900 = [
  '55900',
  '10',
  " 539.5 км 2 ",
  "36588",
  "26391",
  "10197",
  " Волноваха",
  "сільське господарство, тогівля та сфера послуг, залізничний транспорт"
];

List data55901 = [
  '55901',
  '5',
  "343.9 км 2 ",
  "19495",
  "17305",
  "2190",
  "Ольгинка",
  "сільське господарство, добувна промисловість"
];
List data55902 = [
  '55902',
  '13',
  "663.0 км 2 ",
  "12382",
  "0",
  "012382",
  "Хлібодарівка",
  "сільське господарство, добувна промисловість "
];
List data55903 = [
  '55903',
  '5',
  "415.4 км 2 ",
  "12004",
  "4261",
  "7743",
  "Мирне",
  "сільське господарство"
];

class ChartController extends GetxController {
  late dynamic value;
  RxBool isLoading = true.obs;
  late List gromada = [].obs;
  List bezrab = [].obs;
  List<Charts> bezrab0 = [];

  @override
  void onInit() {
    value = Get.arguments;
    gromada = gromada = int.parse(value) == 55900
        ? data55900
        : int.parse(value) == 55901
            ? data55901
            : int.parse(value) == 55902
                ? data55902
                : int.parse(value) == 55903
                    ? data55903
                    : [];
    fetchVac();

    //print(gromada.length);
    print(value);
    print(gromada);
    super.onInit();
  }

  void fetchVac() async {
    bezrab0 = (await ChartsRepository.getAllCharts()).toList();
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
