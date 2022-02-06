import 'package:hive_flutter/adapters.dart';

part 'vac.g.dart';

@HiveType(typeId: 1)
class Vac {
  // Attributes
  @HiveField(0)
  late final numbervac;
  @HiveField(1)
  final dateregvac;
  @HiveField(2)
  final posadavac;
  @HiveField(3)
  final osvitavac;
  @HiveField(4)
  final specvac;
  @HiveField(5)
  final stagvac;
  @HiveField(6)
  final taskvac;
  @HiveField(7)
  final skilsvac;
  @HiveField(8)
  final placevac;
  @HiveField(9)
  final operatinvac;
  @HiveField(10)
  final characteristicsvac;
  @HiveField(11)
  final conditionsvac;
  @HiveField(12)
  final salaryvac;
  @HiveField(13)
  final tel;

  // Constructor

  Vac({
    required this.numbervac,
    required this.dateregvac,
    required this.posadavac,
    required this.osvitavac,
    required this.specvac,
    required this.stagvac,
    required this.taskvac,
    required this.skilsvac,
    required this.placevac,
    required this.operatinvac,
    required this.characteristicsvac,
    required this.conditionsvac,
    required this.salaryvac,
    required this.tel,
  });
  /* Map<String, dynamic> toMap() {
    return {
      'numbervac': numbervac,
      'dateregvac': dateregvac,
      posadavac: posadavac,
      osvitavac: osvitavac,
      specvac: specvac,
      stagvac: stagvac,
      taskvac: taskvac,
      skilsvac: skilsvac,
      placevac: placevac,
      operatinvac: operatinvac,
      characteristicsvac: characteristicsvac,
      conditionsvac: conditionsvac,
      salaryvac: salaryvac,
      tel: tel
    };
  }

  static Vac fromMap(Map<String, dynamic> json) {
    return Vac(
      numbervac: json["Номер вакансії / Оперативні вакансії"].toString(),
      dateregvac:
          json["Дата реєстрації вакансії / Оперативні вакансії"].toString(),
      posadavac: json["Посада (назва) / Характеристика вакансії"].toString(),
      osvitavac: json["Освітній рівень / Вимоги до працівника"].toString(),
      specvac: json["Спеціальність (назва) / Вимоги до працівника"].toString(),
      stagvac: json["Стаж / Характеристика вакансії"].toString(),
      taskvac:
          json["Завдання та обов'язки / Характеристика вакансії"].toString(),
      skilsvac: json["Навики, характеристики особи / Вимоги до працівника"]
          .toString(),
      placevac: json["Місце проведення робіт / Оперативні вакансії"].toString(),
      operatinvac: json["Режими роботи / Характеристика вакансії"].toString(),
      characteristicsvac:
          json["Характеристики робіт / Характеристика вакансії"].toString(),
      conditionsvac: json["Умови праці  / Характеристика вакансії"].toString(),
      salaryvac: json["Заробітна плата / Оперативні вакансії"].toString(),
      tel: json["Телефон (для вакансій на сайті) / Оперативні вакансії"]
          .toString(),
    );
  }*/

  Map<String, dynamic> toJson() => {
        'numbervac': numbervac,
        'dateregvac': dateregvac,
        'posadavac': posadavac,
        'osvitavac': osvitavac,
        'specvac': specvac,
        'stagvac': stagvac,
        'taskvac': taskvac,
        'skilsvac': skilsvac,
        'placevac': placevac,
        'operatinvac': operatinvac,
        'characteristicsvac': characteristicsvac,
        'conditionsvac': conditionsvac,
        'salaryvac': salaryvac,
        'tel': tel
      };

  // convert Json to an car object object
  factory Vac.fromJson(Map<String, dynamic> json) {
    return Vac(
      numbervac: json["Номер вакансії / Оперативні вакансії"].toString(),
      dateregvac:
          json["Дата реєстрації вакансії / Оперативні вакансії"].toString(),
      posadavac: json["Посада (назва) / Характеристика вакансії"].toString(),
      osvitavac: json["Освітній рівень / Вимоги до працівника"].toString(),
      specvac: json["Спеціальність (назва) / Вимоги до працівника"].toString(),
      stagvac: json["Стаж / Характеристика вакансії"].toString(),
      taskvac:
          json["Завдання та обов'язки / Характеристика вакансії"].toString(),
      skilsvac: json["Навики, характеристики особи / Вимоги до працівника"]
          .toString(),
      placevac: json["Місце проведення робіт / Оперативні вакансії"].toString(),
      operatinvac: json["Режими роботи / Характеристика вакансії"].toString(),
      characteristicsvac:
          json["Характеристики робіт / Характеристика вакансії"].toString(),
      conditionsvac: json["Умови праці  / Характеристика вакансії"].toString(),
      salaryvac: json["Заробітна плата / Оперативні вакансії"].toString(),
      tel: json["Телефон (для вакансій на сайті) / Оперативні вакансії"]
          .toString(),
    );
  }
}
