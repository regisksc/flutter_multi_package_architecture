import 'package:core/data/storage/storage.dart';

class LocalDatasource implements StorageCommands {
  @override
  Future<void> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<String> load(String key) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<void> save({String? key, String? value}) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
