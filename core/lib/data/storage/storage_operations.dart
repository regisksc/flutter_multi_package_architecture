abstract class StorageOperation {}

abstract class Delete extends StorageOperation {
  Future<void> delete(String key);
}

abstract class Load extends StorageOperation {
  Future<String> load(String key);
}

abstract class Save extends StorageOperation {
  Future<void> save({required String key, required String value});
}

abstract class StorageCommands implements Save, Load, Delete {}
