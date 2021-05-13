import 'package:core/data/storage/storage.dart';

class SecureLocalDatasource implements StorageCommands {
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
