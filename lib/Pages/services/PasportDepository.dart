

import 'package:gromada/Pages/Search/models/pasport.dart';

import 'package:gromada/Pages/services/ApiProviderPasport.dart';


class PassportRepository {
    ApiProviderPassport _PassportProvider = ApiProviderPassport();
   static Future<List<Passport>> getAllPassport() => ApiProviderPassport.fetchAll();
}
