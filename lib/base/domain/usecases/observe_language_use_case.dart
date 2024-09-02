import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/domain/usecases/subject_usecase.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';

@lazySingleton
class ObserveLanguageUseCase extends SubjectUseCase<NoParams, LanguageEnum> {
  ObserveLanguageUseCase(this.repository);

  final AppRepository repository;

  @override
  Stream<LanguageEnum> createObservable(NoParams params) {
    return repository.observeLanguage();
  }
}
