enum FileSource {
  local,
  remote;

  static FileSource? fromJson(String? name) {
    switch (name) {
      case 'local':
        return FileSource.local;
      case 'remote':
        return FileSource.remote;

      default:
        return FileSource.remote;
    }
  }

  static String? toJson(FileSource? type) {
    return type?.name;
  }
}
