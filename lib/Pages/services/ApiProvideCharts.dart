import 'dart:convert';

import 'package:gromada/Pages/Search/models/charts.dart';
import 'package:http/http.dart' as http;

class ApiProviderCharts {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/stat/stat.json';
  //'https://volnovcz.pp.ua/gromada/stat/stat.json';
  static Future<List<Charts>> fetchAll() async {
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
      final charts = list.map((i) => new Charts.fromJson(i));
      //print(vacancy);
      return charts.toList();
    } else {
      return [];
    }
  }
}
