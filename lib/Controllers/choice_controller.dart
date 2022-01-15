import 'package:awesome_select/awesome_select.dart';
import 'package:get/get.dart';

/*List<Map<String, String>> rayon01 = [
  {'name': "Оберіть відповідну громаду", 'value': '0'},
  {'name': 'Сіверська територіальна громада', 'value': '50503'},
  {'name': 'Званівська територіальна громада', 'value': '50501'},
  {'name': 'Бахмутська територіальна громада', 'value': '50500'},
  {'name': 'Часовоярська територіальна громада', 'value': '50505'},
  {'name': 'Світлодарська територіальна громада', 'value': '50502'},
  {'name': 'Соледарська територіальна громада', 'value': '50504'},
  {'name': 'Торецька територіальна громада', 'value': '51100'},
];
List<Map<String, String>> rayon02 = [
  {'name': "Оберіть відповідну громаду", 'value': '0'},
  {'name': 'Волноваська територіальна громада', 'value': '55900'},
  {'name': 'Ольгинська територіальна громада', 'value': '55901'},
  {'name': 'Хлібодарівська територіальна громада', 'value': '55902'},
  {'name': 'Мирненська територіальна громада', 'value': '55903'},
  {'name': 'Вугледарська територіальна громада', 'value': '54300'},
  {'name': 'Старомлинівська територіальна громада', 'value': '55701'},
  {'name': 'Комарська територіальна громада', 'value': '55702'},
  {'name': 'Великоновосілківська територіальна громада', 'value': '55700'}
];
List<Map<String, String>> rayon03 = [
  {'name': "Оберіть відповідну громаду", 'value': '0'},
  {'name': 'Олександрівська територіальна громада', 'value': '55100'},
  {'name': 'Святогірська територіальна громада', 'value': '53701'},
  {'name': 'Новодонецька територіальна громада', 'value': '55101'},
  {'name': 'Краматорська територіальна громада', 'value': '52500'},
  {'name': 'Дружківська територіальна громада', 'value': '51700'},
  {'name': 'Лиманська територіальна громада', 'value': '52900'},
  {'name': 'Черкаська територіальна громада', 'value': '53702'},
  {'name': 'Миколаївська територіальна громада', 'value': '53704'},
  {'name': 'Андріївська територіальна громада', 'value': '53703'},
  {'name': 'Слов\'янська територіальна громада', 'value': '53700'},
  {'name': 'Костянтинівська територіальна громада', 'value': '52300'},
  {'name': 'Іллінівська територіальна громада', 'value': '52301'}
];
List<Map<String, String>> rayon04 = [
  {'name': "Оберіть відповідну громаду", 'value': '0'},
  {'name': 'Мангушська територіальна громада', 'value': '57300'},
  {'name': 'Маріупольська територіальна громада', 'value': '53300'},
  {'name': 'Сартанська територіальна громада', 'value': '53301'},
  {'name': 'Кальчицька територіальна громада', 'value': '56101'},
  {'name': 'Нікольська територіальна громада', 'value': '56100'},
];
List<Map<String, String>> rayon05 = [
  {'name': "Оберіть відповідну громаду", 'value': '0'},
  {'name': 'Очеретинська територіальна громада', 'value': '50301'},
  {'name': 'Криворізька територіальна громада', 'value': '51501'},
  {'name': 'Гродівська територіальна громада', 'value': '52701'},
  {'name': 'Селидівська територіальна громада', 'value': '53500'},
  {'name': 'Удачненська територіальна громада', 'value': '52702'},
  {'name': 'Добропільська територіальна громада', 'value': '51500'},
  {'name': 'Покровська територіальна громада', 'value': '52700'},
  {'name': 'Авдіївська територіальна громада', 'value': '50300'},
  {'name': 'Курахівська територіальна громада', 'value': '56901'},
  {'name': 'Новогродівська територіальна громада', 'value': '58500'},
  {'name': 'Шахівська територіальна громада', 'value': '51502'},
  {'name': 'Мирноградська територіальна громада', 'value': '51300'},
  {'name': 'Мар\'їнська територіальна громада', 'value': '56900'},
  {'name': 'Білозерська територіальна громада', 'value': '51503'},
];*/
List<S2Choice<String>> rayon01 = [
  //S2Choice<String>(title: "Оберіть відповідну громаду", value: '0'),
  S2Choice<String>(
    title: 'Сіверська територіальна громада',
    value: '50503',
  ),
  S2Choice<String>(title: 'Званівська територіальна громада', value: '50501'),
  S2Choice<String>(title: 'Бахмутська територіальна громада', value: '50500'),
  S2Choice<String>(title: 'Часовоярська територіальна громада', value: '50505'),
  S2Choice<String>(
      title: 'Світлодарська територіальна громада', value: '50502'),
  S2Choice<String>(title: 'Соледарська територіальна громада', value: '50504'),
  S2Choice<String>(title: 'Торецька територіальна громада', value: '51100'),
];
List<S2Choice<String>> rayon02 = [
  //S2Choice<String>(title: "Оберіть відповідну громаду", value: '0'),
  S2Choice<String>(
    title: 'Волноваська територіальна громада',
    value: '55900',
  ),
  S2Choice<String>(title: 'Ольгинська територіальна громада', value: '55901'),
  S2Choice<String>(
      title: 'Хлібодарівська територіальна громада', value: '55902'),
  S2Choice<String>(title: 'Мирненська територіальна громада', value: '55903'),
  S2Choice<String>(title: 'Вугледарська територіальна громада', value: '54300'),
  S2Choice<String>(
      title: 'Старомлинівська територіальна громада', value: '55701'),
  S2Choice<String>(title: 'Комарська територіальна громада', value: '55702'),
  S2Choice<String>(
      title: 'Великоновосілківська територіальна громада', value: '55700'),
];
List<S2Choice<String>> rayon03 = [
  S2Choice<String>(
      title: 'Олександрівська територіальна громада', value: '55900'),
  S2Choice<String>(title: 'Святогірська територіальна громада', value: '53701'),
  S2Choice<String>(title: 'Новодонецька територіальна громада', value: '52701'),
  S2Choice<String>(title: 'Краматорська територіальна громада', value: '52500'),
  S2Choice<String>(title: 'Дружківська територіальна громада', value: '51700'),
  S2Choice<String>(title: 'Лиманська територіальна громада', value: '52900'),
  S2Choice<String>(title: 'Черкаська територіальна громада', value: '53702'),
  S2Choice<String>(title: 'Миколаївська територіальна громада', value: '53704'),
  S2Choice<String>(title: 'Андріївська територіальна громада', value: '53703'),
  S2Choice<String>(title: 'Слов\'янська територіальна громада', value: '53700'),
  S2Choice<String>(
      title: 'Костянтинівська територіальна громада', value: '52300'),
  S2Choice<String>(title: 'Іллінівська територіальна громада', value: '52301'),
];
List<S2Choice<String>> rayon04 = [
  S2Choice<String>(
    value: '57300',
    title: 'Мангушська територіальна громада',
  ),
  S2Choice<String>(
      title: 'Маріупольська територіальна громада', value: '53300'),
  S2Choice<String>(title: 'Сартанська територіальна громада', value: '53301'),
  S2Choice<String>(title: 'Кальчицька територіальна громада', value: '56101'),
  S2Choice<String>(title: 'Нікольська територіальна громада', value: '56100'),
];
List<S2Choice<String>> rayon05 = [
  S2Choice<String>(title: 'Очеретинська територіальна громада', value: '50301'),
  S2Choice<String>(title: 'Криворізька територіальна громада', value: '51501'),
  S2Choice<String>(title: 'Гродівська територіальна громада', value: '52701'),
  S2Choice<String>(title: 'Селидівська територіальна громада', value: '53500'),
  S2Choice<String>(title: 'Удачненська територіальна громада', value: '52702'),
  S2Choice<String>(
      title: 'Добропільська територіальна громада', value: '51500'),
  S2Choice<String>(title: 'Покровська територіальна громада', value: '52700'),
  S2Choice<String>(title: 'Авдіївська територіальна громада', value: '50300'),
  S2Choice<String>(title: 'Курахівська територіальна громада', value: '56901'),
  S2Choice<String>(
      title: 'Новогродівська територіальна громада', value: '58500'),
  S2Choice<String>(title: 'Шахівська територіальна громада', value: '51502'),
  S2Choice<String>(
      title: 'Мирноградська територіальна громада', value: '51300'),
  S2Choice<String>(title: 'Мар\'їнська територіальна громада', value: '56900'),
  S2Choice<String>(title: 'Білозерська територіальна громада', value: '51503'),
];

class ChoiceController extends GetxController {
  dynamic value = Get.arguments;

  final selected = "1".obs;

  List<S2Choice<String>>? listType = (int.parse(Get.arguments) == 1
          ? rayon01
          : int.parse(Get.arguments) == 2
              ? rayon02
              : int.parse(Get.arguments) == 3
                  ? rayon03
                  : int.parse(Get.arguments) == 4
                      ? rayon04
                      : int.parse(Get.arguments) == 5
                          ? rayon05
                          : [])
      .cast<S2Choice<String>>();

  Object sourse = int.parse(Get.arguments) == 1
      ? 'image/buxm.png'
      : int.parse(Get.arguments) == 2
          ? 'image/volnovaha-rayon.png'
          : int.parse(Get.arguments) == 3
              ? 'image/kram.png'
              : int.parse(Get.arguments) == 4
                  ? 'image/mariupol.png'
                  : int.parse(Get.arguments) == 5
                      ? 'image/pokr.png'
                      : '';
  void setSelected(value) {
    selected.value = value;
    value == "1"
        ? Get.toNamed('/Home/choice', arguments: value)
        : Get.toNamed('/choicegromad', arguments: value);
  }
}
