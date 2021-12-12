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
  "1421581202, Донецька область, Волноваський район, Благовіщенка",
  "1421586404, Донецька область, Волноваський район, Новоапостолівка",
  "1421586402, Донецька область, Волноваський район, Малогнатівка",
  "1421584802, Донецька область, Волноваський район, Кирилівка",
  "1421510101, Донецька область, Волноваський район, Новогригорівка",
  "1421586403, Донецька область, Волноваський район, Тарасівка",
  "1421582802, Донецька область, Волноваський район, Новотатарівка",
  "1421587203, Донецька область, Волноваський район, Василівка",
  "1421586404, Донецька область, Волноваський район, Новоапостолівка",
  "1421587204, Донецька область, Волноваський район, Трудівське",
  "1421581203, Донецька область, Волноваський район, Зелений Гай",
];
const vacadress55901 = [
  "1421555600, Донецька область, Волноваський район, Володимирівка",
  "1421556800, Донецька область, Волноваський район, Новотроїцьке",
  "1421557200, Донецька область, Волноваський район, Ольгинка",
  "1421555300, Донецька область, Волноваський район, Благодатне",
  "1421556500, Донецька область, Волноваський район, Графське",
  "1421584003, Донецька область, Волноваський район, Вікторівка",
  "1421584002, Донецька область, Волноваський район, Богданівка",
  "1421584004, Донецька область, Волноваський район, Новогнатівка",
  "1421557202, Донецька область, Волноваський район, Пільне",
  "1421557201, Донецька область, Волноваський район, Лісне",
  "1421584001, Донецька область, Волноваський район, Миколаївка",
];
const vacadress55902 = [
  "1421580401, Донецька область, Волноваський район, Анадоль",
  "1421583101, Донецька область, Волноваський район, ДІАНІВКА",
  "1421581301, Донецька область, Волноваський район, Вільне",
  "1421582001, Донецька область, Волноваський район, Зачатівка",
  "1421582401, Донецька область, Волноваський район, Златоустівка",
  "1421583001, Донецька область, Волноваський район, Калинове",
  "1421580404, Донецька область, Волноваський район, Полкове",
  "1421587903, Донецька область, Волноваський район, Кропивницьке",
  "1421584701, Донецька область, Волноваський район, Новоолексіївка",
  "1421582406, Донецька область, Волноваський район, Новомиколаївка",
  "1421582403, Донецька область, Волноваський район, Голубицьке",
  "1421582003, Донецька область, Волноваський район, Зачатівка",
  "1421583202, Донецька область, Волноваський район, Знаменівка",
  "1421584703, Донецька область, Волноваський район, Лідине",
  "1421582403, Донецька область, Волноваський район, Голубицьке",
  "1421585604, Донецька область, Волноваський район, ПЕТРІВКА",
  "1421582402, Донецька область, Волноваський район, Веселе",
  "1421586802, Донецька область, Волноваський район, Передове",
  "1421583202, Донецька область, Волноваський район, Знаменівка",
  "1421586301, Донецька область, Волноваський район, Привільне",
  "1421585603, Донецька область, Волноваський район, ЛАЗАРІВКА",
  "1421582405, Донецька область, Волноваський район, Малинівка",
  "1421582404, Донецька область, Волноваський район, Затишне",
  "1421586801, Донецька область, Волноваський район, Рівнопіль",
  "1421583201, Донецька область, Волноваський район, Сонячне",
  "1421587901, Донецька область, Волноваський район, Степне",
  "1421585601, Донецька область, Волноваський район, СТРІТЕНКА",
  "1421588001, Донецька область, Волноваський район, Хлібодарівка",
];
const vacadress55903 = [
  "1421580801, Донецька область, Волноваський район, Андріївка",
  "1421589203, Донецька область, Волноваський район, Кам'янка",
  "1421587700, Донецька область, Волноваський район, СТАРОГНАТІВСЬКА/С.СТАРОГНАТІВКА",
  "1421587702, Донецька область, Волноваський район, Новогригорівка",
  "1421588800, Донецька область, Волноваський район, ГРАНІТНЕНСЬКА/С.ГРАНІТНЕ",
  "1421589204, Донецька область, Волноваський район, Маловодне",
  "1421589206, Донецька область, Волноваський район, Степанівка",
  "1421555101, Донецька область, Волноваський район, Бахчовик",
  "1421589202, Донецька область, Волноваський район, Запорізьке",
  "1421589200, Донецька область, Волноваський район, НОВОСЕЛІВСЬКА/С.НОВОСЕЛІВКА",
  "1421589205, Донецька область, Волноваський район, Новоселівка Друга",
  "1421555102, Донецька область, Волноваський район, Дружне",
  "1421589201, Донецька область, Волноваський район, Новоселівка",
  "1421555103, Донецька область, Волноваський район, Обільне",
  "1421588802, Донецька область, Волноваський район, Старомар'Ївка",
  "1421588801, Донецька область, Волноваський район, Гранітне",
  "1421556600, Донецька область, Волноваський район, Мирне",
  "1421587701, Донецька область, Волноваський район, Старогнатівка",
];
const vacadress54300 = [
  "1414890002, Донецька область, Вугледар, Водяне",
  "1414890003, Донецька область, Вугледар, Павлівка",
  "1423385801, Донецька область, Мар'їнський район, Новоукраїнка",
  "1414890004, Донецька область, Вугледар, Солодке",
  "1421581601, Донецька область, Волноваський район, Єгорівка",
  "1414800000, Донецька область, Вугледар",
  "1423385803, Донецька область, Мар'їнський район, Пречистівка",
  "1421586001, Донецька область, Волноваський район, Петрівське",
  "1421584401, Донецька область, Волноваський район, Микільське",
  "1423382001, Донецька область, Мар'їнський район, Мар'їнський район, БОГОЯВЛЕНКА",
  "1421581602, Донецька область, Волноваський район, Шевченко",
  "1414890006, Донецька область, Вугледар, Тарамчук",
  "1423385802, Донецька область, Мар'їнський район, Максимівка",
  "1414890005, Донецька область, Вугледар, Степне",
  "1414890001, Донецька область, Вугледар, Березове",
];
const vacadress55700 = [
  "1421285204, Донецька область, Великоновосілківський район, Ключове",
  "1421283604, Донецька область, Великоновосілківський район, Ялинське",
  "1421283602, Донецька область, Великоновосілківський район, Георгієвка",
  "1421283603, Донецька область, Великоновосілківський район, Малий Керменчик",
  "1421284002, Донецька область, Великоновосілківський район, Новодонецьке",
  "1421284003, Донецька область, Великоновосілківський район, Новомайорське",
  "1421285202, Донецька область, Великоновосілківський район, Володине",
  "1421283601, Донецька область, Великоновосілківський район, Новопетриківка",
  "1421281201, Донецька область, Великоновосілківський район, Євгенівка",
  "1421285205, Донецька область, Великоновосілківський район, Орлинське",
  "1421285203, Донецька область, Великоновосілківський район, Завітне Бажання",
  "1421283001, Донецька область, Великоновосілківський район, Красна Поляна",
  "1421284001, Донецька область, Великоновосілківський район, Керменчик",
  "1421285201, Донецька область, Великоновосілківський район, Старомлинівка",
];
const vacadress55701 = [
  "1421286602, Донецька область, Великоновосілківський район, Бурлацьке",
  "1421282402, Донецька область, Великоновосілківський район, Веселе",
  "1421282408, Донецька область, Великоновосілківський район, Ялта",
  "1421284404, Донецька область, Великоновосілківський район, Новохатське",
  "1421286604, Донецька область, Великоновосілківський район, Воскресенка",
  "1421286605, Донецька область, Великоновосілківський район, Комишуваха",
  "1421284406, Донецька область, Великоновосілківський район, Толстой",
  "1421284401, Донецька область, Великоновосілківський район, Піддубне",
  "1421281802, Донецька область, Великоновосілківський район, Зелений Гай",
  "1421282407, Донецька область, Великоновосілківський район, ЗІРКА",
  "1421282401, Донецька область, Великоновосілківський район, Комар",
  "1421284402, Донецька область, Великоновосілківський район, Грушівське",
  "1421286603, Донецька область, Великоновосілківський район, Вільне Поле",
  "1421282403, Донецька область, Великоновосілківський район, Дніпроенергія",
  "1421281801, Донецька область, Великоновосілківський район, Іскра",
  "1421282405, Донецька область, Великоновосілківський район, Новоочеретувате",
  "1421286607, Донецька область, Великоновосілківський район, Привільне",
  "1421282404, Донецька область, Великоновосілківський район, Запоріжжя",
  "1421284405, Донецька область, Великоновосілківський район, Перебудова",
  "1421286601, Донецька область, Великоновосілківський район, Шевченко",
  "1421286606, Донецька область, Великоновосілківський район, Олександроград",
  "1421282406, Донецька область, Великоновосілківський район, Федорівка",
  "1421284403, Донецька область, Великоновосілківський район, МИРНЕ",
];
const vacadress55702 = [
  "1421280202, Донецька область, Великоновосілківський район, Петропавлівка",
  "1421281402, Донецька область, Великоновосілківський район, Новопіль",
  "1421281401, Донецька область, Великоновосілківський район, Зелене Поле",
  "1421255102, Донецька область, Великоновосілківський район, Нескучне",
  "1421255103, Донецька область, Великоновосілківський район, Новий Комар",
  "1421284802, Донецька область, Великоновосілківський район, Макарівка",
  "1421280204, Донецька область, Великоновосілківський район, Шевченко",
  "1421282701, Донецька область, Великоновосілківський район, Костянтинопіль",
  "1421284804, Донецька область, Великоновосілківський район, Сторожеве",
  "1421255100, Донецька область, Великоновосілківський район, Велика Новосілка",
  "1421286401, Донецька область, Великоновосілківський район, Шахтарське",
  "1421281403, Донецька область, Великоновосілківський район, Новосілка",
  "1421255104, Донецька область, Великоновосілківський район, БЛАГОДАТНЕ",
  "1421280802, Донецька область, Великоновосілківський район, Зелений Кут",
  "1421280805, Донецька область, Великоновосілківський район, Олексіївка",
  "1421282703, Донецька область, Великоновосілківський район, Улакли",
  "1421286403, Донецька область, Великоновосілківський район, Ясна Поляна",
  "1421286402, Донецька область, Великоновосілківський район, Золота Нива",
  "1421280201, Донецька область, Великоновосілківський район, Андрієвка",
  "1421280801, Донецька область, Великоновосілківський район, Багатир",
  "1421284803, Донецька область, Великоновосілківський район, Рівнопіль",
  "1421284805, Донецька область, Великоновосілківський район, Урожайне",
  "1421284801, Донецька область, Великоновосілківський район, Старомайорське",
  "1421284603, Донецька область, Великоновосілківський район, Відрадне",
  "1421280203, Донецька область, Великоновосілківський район, Слов'янка",
  "1421284601, Донецька область, Великоновосілківський район, Роздольне",
  "1421280803, Донецька область, Великоновосілківський район, Новоукраїнка",
  "1421282702, Донецька область, Великоновосілківський район, Розлив",
  "1421255101, Донецька область, Великоновосілківський район, Времівка",
];

class ChoiceSearchController extends GetxController {
  List vacancy0 = [];
  List<Vac> vacancy = <Vac>[].obs;
  List<Vac> filteredVac = <Vac>[].obs;
  List<Vac> filteredVac0 = <Vac>[].obs;
  RxBool isLoading = true.obs;
  RxBool isLoad = false.obs;
  late dynamic value;
  late List gromada = [].obs;

  @override
  void onInit() {
    value = Get.arguments;
    gromada = int.parse(value) == 55900
        ? vacadress55900
        : int.parse(value) == 55901
            ? vacadress55901
            : int.parse(value) == 55902
                ? vacadress55902
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
      vacancy0.forEach((item) {
        for (int i = 0; i < gromada.length; i++)
          if (item.placevac == gromada[i]) {
            vacancy.add(item);
          }
      });
    } finally {
      isLoading.value = false;
    }
  }

  filteredVacancy(value) {
    filteredVac = vacancy
        .where((item) =>
            (item.posadavac.toLowerCase().contains(value.toLowerCase()) ||
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
