import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {
  static SharedPrefController? _instance;
  late SharedPreferences _sharedPreferences;

  SharedPrefController._();

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void save<T>({required PrefKeys key, T? value}) {
    if (T == String) {
      _sharedPreferences.setString(key.name, value as String);
    } else if (T == int) {
      _sharedPreferences.setInt(key.name, value as int);
    } else if (T == double) {
      _sharedPreferences.setDouble(key.name, value as double);
    } else if (T == bool) {
      _sharedPreferences.setBool(key.name, value as bool);
    }
  }

  Future<void> setSecureString(PrefKeys prefKeys, String value) async{
    const flutterSecureString = FlutterSecureStorage();
    await flutterSecureString.write(key: prefKeys.name, value: value);
  }

  Future<String?> getSecureString(PrefKeys prefKeys) async{
    const flutterSecureString = FlutterSecureStorage();
    return await flutterSecureString.read(key: prefKeys.name);
  }

  T? getValue<T>({required PrefKeys key, T? defaultValue}) {
    if (_sharedPreferences.containsKey(key.name)) {
      return _sharedPreferences.get(key.name) as T;
    }
    return defaultValue;
  }

  Future<void> removeKey({required PrefKeys key}) =>
      _sharedPreferences.remove(key.name);

  Future<void> clear() => _sharedPreferences.clear();
}

enum PrefKeys{
  userToken,
  showOnBoarding,
  loggedIn
}
