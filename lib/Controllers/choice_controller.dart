import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoiceController extends GetxController {

  final selected = "0".obs;
  List<Map<String, String>>listType = [
    {'name': "Оберіть відповідну громаду", 'value': '0'},
    {'name': 'Волноваська територіальна громада', 'value': '55900'},
    {'name': 'Ольгинська територіальна громада', 'value': '55901'},
    {'name': 'Хлібодарівська територіальна громада', 'value': '55902'},
    {'name': 'Мирненська територіальна громада', 'value': '55903'}
  ];

  void setSelected(value) {
    selected.value = value;
    value=="0"?  Get.toNamed('/Home/choice', arguments: value):
   Get.toNamed('/choicegromad', arguments: value);
  }
}

