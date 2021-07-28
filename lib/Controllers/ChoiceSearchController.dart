

import 'package:get/get.dart';
import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/Pages/services/VacDepository.dart';
const vacadress55900 = [
  "1421510100, Донецька область, Волноваський район, Волноваха",
  "1421555900, Донецька область, Волноваський район, Донське",
  "1421587201, Донецька область, Волноваський район, Рибинське",
  "1421581201, Донецька область, Волноваський район, Валер'янівка",
  "1421583601, Донецька область, Волноваський район, Бугас",
  "1421587202, Донецька область, Волноваський район, Ближнє",
  "1421581401, Донецька область, Волноваський район, Дмитрівка",
  "1421582801, Донецька область, Волноваський район, Іванівка",
  "1421587601, Донецька область, Волноваський район, Свободне",
  "1421586401, Донецька область, Волноваський район, Прохорівка",
  "1421584801, Донецька область, Волноваський район, Новоандріївка",
  "1421581203, Донецька область, Волноваський район, Зелений Гай",
];
const vacadress55901 = [
  "1421555600, Донецька область, Волноваський район, Володимирівка",
  "1421556800, Донецька область, Волноваський район, Новотроїцьке",
  "1421557200, Донецька область, Волноваський район, Ольгинка",
  "1421555300, Донецька область, Волноваський район, Благодатне",
  "1421556500, Донецька область, Волноваський район, Графське",
  "1421557202, Донецька область, Волноваський район, Пільне",
  "1421557201, Донецька область, Волноваський район, Лісне",
  "1421584001, Донецька область, Волноваський район, Миколаївка",
  "1421584004, Донецька область, Волноваський район, Новогнатівка"
];
const vacadress55902 = [
  "1421580401, Донецька область, Волноваський район, Анадоль",
  "1421583101, Донецька область, Волноваський район, ДІАНІВКА",
  "1421581301, Донецька область, Волноваський район, Вільне",
  "1421582001, Донецька область, Волноваський район, Зачатівка",
  "1421582401, Донецька область, Волноваський район, Златоустівка",
  "1421583001, Донецька область, Волноваський район, Калинове",
  "1421587903, Донецька область, Волноваський район, Кропивницьке",
  "1421584701, Донецька область, Волноваський район, Новоолексіївка",
  "1421586301, Донецька область, Волноваський район, Привільне",
  "1421586801, Донецька область, Волноваський район, Рівнопіль",
  "1421583201, Донецька область, Волноваський район, Сонячнее",
  "1421587901, Донецька область, Волноваський район, Степне",
  "1421585601, Донецька область, Волноваський район, Стрітенка",
  "1421588001, Донецька область, Волноваський район, Хліболадарівка",

];
const vacadress55903 = [
  "1421580801, Донецька область, Волноваський район, Андріївка",
  "1421588801, Донецька область, Волноваський район, Гранітне",
  "1421556600, Донецька область, Волноваський район, Мирне",
  "1421587701, Донецька область, Волноваський район, Старогнатівка",

];

class ChoiceSearchController extends GetxController {
  List vacancy0 = [];
  List<Vac> vacancy = <Vac>[].obs;
  List<Vac> filteredVac = <Vac>[].obs;
   List  <Vac> filteredVac0 = <Vac>[].obs;
  RxBool isLoading = true.obs;
  RxBool isLoad = false.obs;
  late  dynamic value;
  late List gromada = [].obs;


  @override
  void onInit() {

     value=Get.arguments;
    gromada =
    int.parse(value) == 55900 ? vacadress55900
        : int.parse(value) == 55901
        ? vacadress55901
        : int.parse(value) == 55902 ? vacadress55902
        : int.parse(value) == 55903
        ? vacadress55903
        : [];
    fetchVac();
    //print(gromada.length);
    //print(value);
    //print(gromada);
     super.onInit();
  }

  void fetchVac() async {
    try {
      vacancy0 = (await VacRepository.getAllVac());
      if (vacancy0 != null) {
        vacancy0.forEach((item) {
          for (int i = 0; i < gromada.length; i++)
            if (item.placevac == gromada[i]) {
              vacancy.add(item);
            }
        });
      }
    }
    finally {
      isLoading.value = false;
    }
  }

  filteredVacancy(value) {
    filteredVac = vacancy
        .where((item) =>
    (item.posadavac
        .toLowerCase()
        .contains(value.toLowerCase()) ||
        item.salaryvac.toLowerCase().contains(value.toLowerCase())))
        .toList();
   //  filteredVac.add( filteredVac0 );
   // filteredVac.sort;
   // filter();
    print(filteredVac);
  print(filteredVac.length);



    /*  for (int i = 0; i < filteredVac0.length; i++) {
        var item =filteredVac0[i];
      filteredVac.add(item);

  };*/
// print(filteredVac0);
 //print(filteredVac0.length);
}
}
