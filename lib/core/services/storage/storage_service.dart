abstract class StorageService {
  Future<int> getCounterValue();
  Future<void> setCounterValue(int value);
}
