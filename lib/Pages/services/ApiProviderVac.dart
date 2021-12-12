import 'dart:convert';

import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/vac/vac.json';
  //https://volnovcz.pp.ua/gromada/vac/vac.json';
  static Future<List<Vac>> fetchAll() async {
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
      //print(vacancy);
      return vacancy.toList();
    } else {
      return [];
    }
  }
}
