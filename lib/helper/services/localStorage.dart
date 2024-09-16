import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<String> getLocalStorage({required String header}) async {
    SharedPreferences stores = await SharedPreferences.getInstance();
    String loadStore = stores.getString(header)!;
    return loadStore;
  }

  static setLocalStorage({required String header, required String data}) async {
    SharedPreferences stores = await SharedPreferences.getInstance();
    stores.setString(header, data);
  }
}
