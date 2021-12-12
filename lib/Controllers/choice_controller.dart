import 'package:get/get.dart';

class ChoiceController extends GetxController {
  final selected = "0".obs;
  List<Map<String, String>> listType = [
    {'name': "Оберіть відповідну громаду", 'value': '0'},
    {'name': 'Волноваська територіальна громада', 'value': '55900'},
    {'name': 'Ольгинська територіальна громада', 'value': '55901'},
    {'name': 'Хлібодарівська територіальна громада', 'value': '55902'},
    {'name': 'Мирненська територіальна громада', 'value': '55903'},
    {'name': 'Вугледарська територіальна громада', 'value': '54300'},
    {'name': 'Старомлинівська територіальна громада', 'value': '55700'},
    {'name': 'Комарська територіальна громада', 'value': '55701'},
    {'name': 'Великоновосілківська територіальна громада', 'value': '55702'}
  ];

  void setSelected(value) {
    selected.value = value;
    value == "0"
        ? Get.toNamed('/Home/choice', arguments: value)
        : Get.toNamed('/choicegromad', arguments: value);
  }
}
