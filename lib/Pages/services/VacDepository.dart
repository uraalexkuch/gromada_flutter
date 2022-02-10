import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/Pages/services/ApiProviderVac.dart';

class VacRepository {
  ApiProvider _vacProvider = ApiProvider();
  static Future<List<Vac>> getAllVac() => ApiProvider.fetchAll();
}
