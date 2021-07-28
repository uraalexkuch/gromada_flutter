

import 'package:gromada/Pages/Search/models/charts.dart';
import 'ApiProvideCharts.dart';


class ChartsRepository {
   // ApiProviderCharts _PassportProvider = ApiProviderCharts();
   static Future<List<Charts>> getAllCharts() => ApiProviderCharts.fetchAll();

}
