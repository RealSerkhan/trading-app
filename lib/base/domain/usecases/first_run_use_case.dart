import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/domain/usecases/result_usecase.dart';
import 'package:beneficiary/base/domain/usecases/subject_usecase.dart';

@injectable
class UpdateFirstRunFlagUseCase extends ResultUseCase<bool, void> {
  UpdateFirstRunFlagUseCase(this.repository);

  final AppRepository repository;

  @override
  Future<void> doWork(bool params) {
    return repository.updateFirstRunFlag(params);
  }
}

@injectable
class ObserveFirstRunUseCase extends SubjectUseCase<NoParams, bool?> {
  ObserveFirstRunUseCase(this.repository);

  final AppRepository repository;

  @override
  Stream<bool?> createObservable(NoParams params) {
    return repository.observeFirstRunFlag();
  }
}
