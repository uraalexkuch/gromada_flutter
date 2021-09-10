import 'package:gromada/Pages/Search/models/pasport.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiProviderPassport {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/pasport/pasport.json';
  static Future<List<Passport>> fetchAll() async {
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
      final pasport = list.map((i) => new Passport.fromJson(i));
      //print(vacancy);
      return pasport.toList();
    } else {
      return [];
    }
  }
}
