import 'package:flutterstarter/core/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService extends StorageService {
  @override
  Future<int> getCounterValue() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter_int_key') ?? 0;
  }

  @override
  Future<void> setCounterValue(int value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter_int_key', value);
  }
}
