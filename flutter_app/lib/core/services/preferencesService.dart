import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  SharedPreferences prefs;
  Preferences() {
    init();
  }
  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  void setString(String key, String value) {
    prefs.setString(key, value);
  }

  String getString(String key) {
    return prefs.getString(key);
  }
}
