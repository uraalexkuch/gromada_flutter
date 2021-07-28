class Charts {
  // Attributes
  final gromada;
  final bezrabstart;
  final bezrabvisit;
  final labourmarket;
  final bezrabend;
  final bezrabmoney;
  final bezrabmoneyend;
  final gromadwork;
  final temporarywork;
  final gromadworknow;
  final temporaryworknow;
  final bezrabnavch;
  final bezrabnavchnow;
  final bezrabprofor;
  final vaucher;
  final bezrabnavchneformal;
  final allpraz;
  final fop;
  final esv5;
  final esv;

  // Constructor

  Charts(
      {
    required this.gromada,
    required this.bezrabstart,
    required this. bezrabvisit,
    required this.labourmarket,
    required this.bezrabend,
    required this.bezrabmoney,
        required this.bezrabmoneyend,
    required this.gromadwork,
    required this.temporarywork,
    required this.gromadworknow,
    required this.temporaryworknow,
    required this.bezrabnavch,
    required this.bezrabnavchnow,
    required this.bezrabprofor,
    required this.vaucher,
    required this.bezrabnavchneformal,
    required this.allpraz,
    required this.fop,
    required this.esv5,
    required this.esv,
  }
  );

  // convert Json to an car object object
  factory Charts.fromJson(Map<String, dynamic> json) {
    return Charts(
      gromada: json["громада"].toString(),
      bezrabstart:  json["Мали статус безробітного на початок звітного періоду, осіб"].toString(),
      bezrabvisit: json["Отримали статус протягом звітного періоду, осіб"].toString(),
      labourmarket: json['Усього мали статус протягом періоду, осіб'].toString(),
      bezrabend: json["Мають статус безробітного на кінець періоду, осіб"].toString(),
      bezrabmoneyend:json["Отримують допомогу по безробіттю"].toString(),
      bezrabmoney:json["Отримували допомогу по безробіттю"].toString(),
      gromadwork: json["Взяли участь у громадських роботах"].toString(),
      temporarywork: json["Взяли участь у  інших роботах тимчасового характеру"].toString(),
      gromadworknow: json["Беруть участь у громадських роботах"].toString(),
      temporaryworknow: json["Беруть участь  у  інших роботах тимчасового характеру"].toString(),
      bezrabnavch: json["Чисельність безробітних, які проходили профнавчання,    осіб"].toString(),
      bezrabnavchnow: json["Проходять професійне навчання"].toString(),
      bezrabprofor: json["Отримали профорієнтаційні послуги"].toString(),
      vaucher: json["Отримали ваучер для перепідготовки, спеціалізації, підвищення кваліфікації"].toString(),
      bezrabnavchneformal: json["Підтвердили результати неформального навчання"].toString(),
      allpraz: json["Працевлаштовано, осіб"].toString(),
      fop: json["Працевлаштовано шляхом виплати допомоги по безробіттю  одноразово,  осіб"].toString(),
      esv5: json["Працевлаштовано на нові робочі місця безробітних громадян, які недостатньо конкурентоспроможні на ринку праці із здійсненням компенсації роботодавцю  у розмірі єдиного внеску"].toString(),
      esv: json["Працевлаштовано безробітних на нові робочі місця в пріоритетних видах економічної діяльності, із здійсненням компенсації витрат суб'єктами малого підприємництва  у розмірі єдиного внеску"].toString(),

    );
  }
}
