import 'package:gromada/Pages/Search/models/vac.dart';
import 'package:gromada/Pages/services/ApiProviderVac.dart';
import 'package:gromada/Pages/services/ApiProviderVacHive.dart';

class VacRepositoryHive {
  ApiProvider _vacProvider = ApiProvider();
  static Future<List<Vac>?> getAllVacHive() => ApiProviderHive.fetchAll();
  static Future<List> getAllHive() => ApiProviderHive.fetchHive();
  //final LocalStorage storage = new LocalStorage('vacancy');

  /* void addItemsToLocalStorage() {
    storage.setItem('vacancy', getAllVac());
    print(storage.getItem('vacancy'));
  }*/

}
