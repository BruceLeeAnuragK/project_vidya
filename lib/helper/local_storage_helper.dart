import 'package:get_storage/get_storage.dart';

class LocalStorage {
  LocalStorage._();

  static final LocalStorage localStorage = LocalStorage._();

  GetStorage getStorage = GetStorage();

  final String _first = "data";

  get isFirstItem {
    return getStorage.read(_first) ?? false;
  }

  firstDone(
      {required String type,
      required String school,
      required String std,
      required String grid,
      required String techerid,
      required String tutionTecherid}) {
    Map data = {
      'type': type,
      'std': std,
      'school': school,
      'grid': grid,
      'techerid': techerid,
      'tutionTecherid': tutionTecherid,
    };
    getStorage.write(_first, data);
  }
}
