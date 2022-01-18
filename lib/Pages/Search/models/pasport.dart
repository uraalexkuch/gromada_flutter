import 'package:hive_flutter/hive_flutter.dart';

part 'pasport.g.dart';

@HiveType(typeId: 3)
class Passport {
  // Attributes
  @HiveField(0)
  final gromada;
  @HiveField(1)
  final place;
  @HiveField(2)
  final namerobot;
  @HiveField(3)
  final adressur;
  @HiveField(4)
  final adresreal;
  @HiveField(5)
  final transport;
  @HiveField(6)
  final kved;
  @HiveField(7)
  final shtat;
  @HiveField(8)
  final profesia;
  @HiveField(9)
  final timework;
  @HiveField(10)
  final house;
  @HiveField(11)
  final nameboss;
  @HiveField(12)
  final telhr;
  @HiveField(13)
  final big;
  @HiveField(14)
  final telrec;
  // final map;
  // Constructor

  Passport({
    required this.gromada,
    required this.place,
    required this.namerobot,
    required this.adressur,
    required this.adresreal,
    required this.transport,
    required this.kved,
    required this.shtat,
    required this.profesia,
    required this.timework,
    required this.house,
    required this.nameboss,
    required this.telhr,
    required this.big,
    required this.telrec,
    // required this.map,
  });

  // convert Json to an car object object
  factory Passport.fromJson(Map<String, dynamic> json) {
    return Passport(
      gromada: json["громада"].toString(),
      place: json["Назва міста"].toString(),
      namerobot: json["Роботодавець (назва)"].toString(),
      adressur: json["Юридична адреса ПОУ"].toString(),
      adresreal: json["Фактична адреса ПОУ"].toString(),
      transport: json["Транспортна доступність"].toString(),
      kved: json["Вид економічної діяльності"].toString(),
      shtat: json["Чисельність працівників"].toString(),
      profesia: json["Основний професійний склад працівників"].toString(),
      timework: json["Режим роботи, змінність"].toString(),
      house: json["Наявність гуртожитку, житла"].toString(),
      nameboss: json["ПІБ керівника"].toString(),
      telhr: json["Телефон відділу кадрів"].toString(),
      big: json["Ринкоутворююче"].toString(),
      telrec: json["Телефон рекрутера"].toString(),
      //  map: json["карта"].toString(),
    );
  }
}
