enum DataStatus { initial, loading, succes, error }

extension DataStatusExtension on DataStatus {
  bool get isFailure => this == DataStatus.error;

  bool get isSuccess => this == DataStatus.succes;

  bool get isLoading => this == DataStatus.loading;

  bool get isInitial => this == DataStatus.initial;
}
