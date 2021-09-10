class Charts {
  // Attributes
  final gromada;
  final vacancy;
  final period;
  final labourmarket;
  final uridcompany;
  final fop;
  final minimum;
  final gromadwork;
  final temporarywork;
  final bezrabnavch;
  final bezrabprofor;
  final allpraz;

  // Constructor

  Charts({
    required this.gromada,
    required this.vacancy,
    required this.period,
    required this.labourmarket,
    required this.uridcompany,
    required this.fop,
    required this.minimum,
    required this.gromadwork,
    required this.temporarywork,
    required this.bezrabnavch,
    required this.bezrabprofor,
    required this.allpraz,
  });

  // convert Json to an car object object
  factory Charts.fromJson(Map<String, dynamic> json) {
    return Charts(
      gromada: json["громада"].toString(),
      vacancy: json["Кількість вакансій,од"].toString(),
      period: json["Період звітності"].toString(),
      labourmarket:
          json['Усього мали статус протягом періоду, осіб'].toString(),
      uridcompany: json["Юридичні особи"].toString(),
      fop: json["Фізичні особи"].toString(),
      minimum: json["Прожитковий мінімум"].toString(),
      gromadwork: json["Взяли участь у громадських роботах"].toString(),
      temporarywork: json["Взяли участь у  інших роботах тимчасового характеру"]
          .toString(),
      bezrabnavch:
          json["Чисельність безробітних, які проходили профнавчання,    осіб"]
              .toString(),
      bezrabprofor: json["Отримали профорієнтаційні послуги"].toString(),
      allpraz: json["Працевлаштовано, осіб"].toString(),
    );
  }
}
