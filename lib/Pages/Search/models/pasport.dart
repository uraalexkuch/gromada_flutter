class Passport {
  // Attributes
  final place;
  final namerobot;
  final adressur;
  final adresreal;
  final transport;
  final kved;
  final shtat;
  final profesia;
  final timework;
  final house;
  final nameboss;
  final telhr;
  final big;
  final telrec;
  final map;
  // Constructor

  Passport({
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
    required this.map,
  });

  // convert Json to an car object object
  factory Passport.fromJson(Map<String, dynamic> json) {
    return Passport(
      place: json["Назва міста"].toString(),
      namerobot:json["Роботодавець (назва)"].toString(),
      adressur: json["Юридична адреса ПОУ"].toString(),
      adresreal: json["Фактична адреса ПОУ"].toString(),
      transport: json["Транспортна доступність"].toString(),
      kved: json["Вид економічної діяльності"].toString(),
      shtat:  json["Чисельність працівників"].toString(),
      profesia: json["Основний професійний склад працівників"].toString(),
      timework: json["Режим роботи, змінність"].toString(),
      house: json["Наявність гуртожитку, житла"].toString(),
      nameboss: json["ПІБ керівника"].toString(),
      telhr: json["Телефон відділу кадрів"].toString(),
      big: json["Ринкоутворююче"].toString(),
      telrec: json["Телефон рекрутера"].toString(),
      map: json["карта"].toString(),
    );
  }
}
