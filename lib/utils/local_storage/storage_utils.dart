import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();
  factory AppLocalStorage() => _instance;

  AppLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  T? getData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearStorage() async {
    await _storage.erase();
  }

  bool containsKey(String key) {
    return _storage.hasData(key);
  }
}
