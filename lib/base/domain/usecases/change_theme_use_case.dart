import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';
import 'package:beneficiary/base/domain/usecases/result_usecase.dart';
import 'package:beneficiary/base/presentation/ui-models/theme_enum.dart';

@injectable
class ChangeThemeModeUseCase extends ResultUseCase<ThemeEnum, void> {
  ChangeThemeModeUseCase(this.repo);

  final AppRepository repo;

  @override
  Future<void> doWork(ThemeEnum params) {
    return repo.changeTheme(params);
  }
}
