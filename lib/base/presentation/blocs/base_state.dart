import 'package:equatable/equatable.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/presentation/ui-models/data_status_enum.dart';

class BaseState extends Equatable {
  const BaseState({this.status = DataStatus.initial});
  final DataStatus status;

  @override
  List<Object?> get props => [status];

  bool get isInitial => status == DataStatus.initial;

  bool get isLoading => status == DataStatus.loading;

  bool get isSuccess => status == DataStatus.succes;

  bool get isFailure => status == DataStatus.error;
}

class FailureState extends Equatable {
  const FailureState(this.failure);
  final Failure failure;

  @override
  List<Object?> get props => [failure];
}
