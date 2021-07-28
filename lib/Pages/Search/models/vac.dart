class Vac {
  // Attributes
  final numbervac;
  final dateregvac;
  final posadavac;
  final osvitavac;
  final specvac;
  final stagvac;
  final taskvac;
  final skilsvac;
  final placevac;
  final operatinvac;
  final characteristicsvac;
  final conditionsvac;
  final salaryvac;

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
  });

  // convert Json to an car object object
  factory Vac.fromJson(Map<String, dynamic> json) {
    return Vac(
      numbervac: json["Номер вакансії / Оперативні вакансії"].toString(),
      dateregvac:json["Дата реєстрації вакансії / Оперативні вакансії"].toString(),
      posadavac: json["Посада (назва) / Характеристика вакансії"].toString(),
      osvitavac: json["Освітній рівень / Вимоги до працівника"].toString(),
      specvac: json["Спеціальність (назва) / Вимоги до працівника"].toString(),
      stagvac: json["Стаж / Характеристика вакансії"].toString(),
      taskvac:  json["Завдання та обов'язки / Характеристика вакансії"].toString(),
      skilsvac: json["Навики, характеристики особи / Вимоги до працівника"]       .toString(),
      placevac: json["Місце проведення робіт / Оперативні вакансії"].toString(),
      operatinvac: json["Режими роботи / Характеристика вакансії"].toString(),
      characteristicsvac: json["Характеристики робіт / Характеристика вакансії"].toString(),
      conditionsvac: json["Умови праці  / Характеристика вакансії"].toString(),
      salaryvac: json["Заробітна плата / Оперативні вакансії"].toString(),
    );
  }
}
