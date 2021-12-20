import 'dart:convert';

import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/vac/vac.json';
  List vacancy00 = [];
  final HiveService hiveService = HiveService();
  //https://volnovcz.pp.ua/gromada/vac/vac.json';
  static Future<List<Vac>> fetchAll() async {
    List vacancy00 = [];
    final HiveService hiveService = HiveService();
    //  String url = Uri.encodeFull("https://donocz.gov.ua/gromada/vac/vac.json");
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      utf8.decode(response.bodyBytes);
      String source = Utf8Decoder().convert(response.bodyBytes);
      var data = json.decode(source);
      List list = data;
      final vacancy = list.map((i) => new Vac.fromJson(i));
      print("len: ${vacancy.length}");
      Hive.openBox("vacancy");
      Hive.box('vacancy').clear();
      vacancy00 = vacancy.toList();
      hiveService.addBoxes(vacancy00, "vacancy");
      print("Getting vacProvider ${vacancy00.length}");

      return vacancy.toList();
    } else {
      return [];
    }
  }
}
