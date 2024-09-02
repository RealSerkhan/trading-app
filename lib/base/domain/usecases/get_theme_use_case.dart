import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/domain/usecases/subject_usecase.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

@injectable
class GetDefaultThemeMode extends SubjectUseCase<NoParams, ThemeEnum> {
  GetDefaultThemeMode(this.repo);

  final AppRepository repo;

  @override
  Stream<ThemeEnum> createObservable(NoParams params) {
    return repo.observeTheme();
  }
}
