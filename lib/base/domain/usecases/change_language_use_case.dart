import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/domain/usecases/result_usecase.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';

@lazySingleton
class ChangeLanguageUseCase extends ResultUseCase<LanguageEnum, void> {
  ChangeLanguageUseCase(this.repository);

  final AppRepository repository;

  @override
  Future<void> doWork(LanguageEnum params) {
    return repository.changeLanguage(params);
  }
}
