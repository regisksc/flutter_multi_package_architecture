import '../../../../core.dart';

class UnencryptedLocalDatasource implements LocalDataSource {
  @override
  Future<void> delete(String key) {
    throw UnimplementedError();
  }

  @override
  Future<String> load(String key) {
    throw UnimplementedError();
  }

  @override
  Future<void> save({required String key, required String value}) {
    throw UnimplementedError();
  }
}
