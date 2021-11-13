import 'package:flutterstarter/core/services/storage/shared_preference_service.dart';
import 'package:flutterstarter/core/services/storage/storage_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<StorageService>(
    () => SharedPreferenceService(),
  );
}
