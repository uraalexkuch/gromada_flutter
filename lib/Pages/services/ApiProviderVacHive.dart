import 'dart:convert';

import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/local_datastore/hive_service.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

class ApiProviderHive {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/vac/vac.json';

  static Future<List<Vac>> fetchAll() async {
    //String url = Uri.encodeFull("https://donocz.gov.ua/gromada/vac/vac.json");
    List vacancy00 = [];
    List vacancy01 = [];
    final HiveService hiveService = HiveService();
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
      // print(vacancy);
      await Hive.initFlutter();
      Hive.registerAdapter(VacAdapter());
      await Hive.openBox("vacancy");
      Hive.box('vacancy').clear();
      //vacancy00 = null;
      vacancy00 = vacancy.toList();
      hiveService.addBoxes(vacancy00, "vacancy");
      vacancy01 = await hiveService.getBoxes("vacancy");
      // print("Getting  ${vacancy.toList()}");

      print("Getting vacboxprovider ${vacancy01.length}");

      return vacancy.toList();
    } else {
      return [];
    }
  }

  Future<List<Vac>> fetchAllH() async {
    //String url = Uri.encodeFull("https://donocz.gov.ua/gromada/vac/vac.json");
    List vacancy00 = [];
    List vacancy01 = [];
    final HiveService hiveService = HiveService();
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
      // print(vacancy);
      Hive.box('vacancy').clear();
      //vacancy00 = null;
      vacancy00 = vacancy.toList();
      hiveService.addBoxes(vacancy00, "vacancy");
      vacancy01 = await hiveService.getBoxes("vacancy");
      // print("Getting  ${vacancy.toList()}");
      print("Getting vacbox ${vacancy01.length}");
      return vacancy.toList();
    } else {
      return [];
    }
  }

  static Future<List> fetchHive() async {
    //String url = Uri.encodeFull("https://donocz.gov.ua/gromada/vac/vac.json");

    List<Vac> vacancy00 = [];
    List vacancy01 = [];
    final HiveService hiveService = HiveService();

    // print(vacancy);
    Hive.box('vacancy').clear();
    //vacancy00 = null;

    vacancy00 = fetchAll() as List<Vac>;
    hiveService.addBoxes(vacancy00, "vacancy");
    vacancy01 = await hiveService.getBoxes("vacancy");
    print("Getting  ${vacancy00.length}");
    print("Getting vacbox ${vacancy01.length}");
    return vacancy01.toList();
  }
}
