/// Read/Write app preferences.
///
/// In your main.dart file, remember to add this line before runApp():
///   await Prefs.init();

import 'package:get_storage/get_storage.dart';

class Prefs {
  static const String version = "1.0.0";

  static init() async {
    await GetStorage.init();
  }

  static read(String key) {
    final prefs = GetStorage();
    return prefs.read(key);
  }

  static write(String key, value) {
    final prefs = GetStorage();
    prefs.write(key, value);
  }

}
