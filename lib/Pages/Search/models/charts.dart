import 'package:hive_flutter/hive_flutter.dart';

part 'charts.g.dart';

@HiveType(typeId: 2)
class Charts {
  // Attributes
  @HiveField(0)
  final gromada;
  @HiveField(1)
  final vacancy;
  @HiveField(2)
  final period;
  @HiveField(3)
  final labourmarket;
  @HiveField(4)
  final uridcompany;
  @HiveField(5)
  final fop;
  @HiveField(6)
  final minimum;
  @HiveField(7)
  final gromadwork;
  @HiveField(8)
  final temporarywork;
  @HiveField(9)
  final bezrabnavch;
  @HiveField(10)
  final bezrabprofor;
  @HiveField(11)
  final allpraz;
  @HiveField(12)
  final maintown;
  @HiveField(13)
  final counttown;
  @HiveField(14)
  final sgromada;
  @HiveField(15)
  final people;
  @HiveField(16)
  final mapgromada;
  @HiveField(17)
  final economic;

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
    required this.maintown,
    required this.counttown,
    required this.sgromada,
    required this.people,
    required this.mapgromada,
    required this.economic,
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
      maintown: json["Центр  громади"].toString(),
      counttown: json["Кількість  нас.пунктів"].toString(),
      sgromada: json["Площа  громади"].toString(),
      people: json["Чисельність населення громади"].toString(),
      mapgromada: json["Карта громади"].toString(),
      economic: json["Провідні галузі економіки"].toString(),
    );
  }
}
