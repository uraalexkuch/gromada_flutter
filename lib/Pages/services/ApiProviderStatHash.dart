import 'package:http/http.dart' as http;

class ApiProviderStatHash {
  static const String url =
      'https://donocz.gov.ua/recruting/gromada/stat/stat_hash.json';
  static fetchHash() async {
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      print("Getting stathashAPI ${response.body.toString()}");
      return response.body;
    } else {
      return [];
    }
  }
}
