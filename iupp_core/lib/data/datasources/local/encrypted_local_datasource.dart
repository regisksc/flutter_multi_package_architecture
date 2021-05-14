import '../../../core.dart';

class SecureLocalDatasource implements LocalDataSource {
  @override
  Future<void> delete(String key) {
    throw UnimplementedError();
  }

  @override
  Future<String> load(String key) {
    throw UnimplementedError();
  }

  @override
  Future<void> save({String? key, String? value}) {
    throw UnimplementedError();
  }
}
